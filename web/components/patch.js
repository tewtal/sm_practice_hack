import config from '../data/config.json'
import { useState } from 'react'
import { saveAs } from 'file-saver'

export default function Patch({variant, romData}) {
    const [formData, setFormData] = useState(
        Object.fromEntries([...config.configurations.map(c => ([c.id, c.options[0].id])), ["variant", variant]])
    );

    const applyIps = (rom, patch) => {
        const big = false;
        let offset = 5;
        const footer = 3;
        const view = new DataView(patch.buffer);
        while (offset + footer < patch.length) {
            const dest = (patch[offset] << 16) + view.getUint16(offset + 1, big);
            const length = view.getUint16(offset + 3, big);
            offset += 5;
            if (length > 0) {
                rom.set(patch.slice(offset, offset + length), dest);
                offset += length;
            } else {
                const rle_length = view.getUint16(offset, big);
                const rle_byte = patch[offset + 2];
                rom.set(Uint8Array.from(new Array(rle_length), () => rle_byte), dest);
                offset += 3;
            }
        }
    }

    const onDownload = async () => {
        try {
            const patch = config.patches.find((item) => { return Object.keys(formData).every(field => item[field] == formData[field]) });
            const patchData = new Uint8Array(await (await fetch(patch.file, { cache: 'no-store' })).arrayBuffer());
            const fileName = config.name + "-v" + config.version + Object.entries(patch).filter(([k,v]) => k !== 'file' && k !== 'size').reduce((o, [k, v]) => o + "-" + v.toString().toLowerCase(), "") + ".sfc";
            let expandedRom = new Uint8Array(patch.size);
            expandedRom.set(romData);
            applyIps(expandedRom, patchData);

            if(expandedRom !== null) {
                saveAs(new Blob([expandedRom]), fileName);
            } else {
                alert("Could not create patched file.");
            }
        } catch (err) {
            console.log("Error patching rom", err);
        }
    }
    
    return (
        <div className="py-4 px-6 h-auto w-7/12 bg-white shadow-xl font-sans">
            <div className="p-4 mb-4 bg-blue-100 text-blue-500 rounded shadow-sm font-sans font-bold">
            {config.name} - Version {config.version} - {variant}
            </div>
            <p></p>
            {config.configurations.map(c => (
                <div key={c.id} className="mb-4 mt-4">
                <label className="block mx-1 mb-2 text-sm font-bold text-base" htmlFor={c.id}>{c.name}</label>
                <select id={c.id} className="w-full px-2 h-10 border rounded shadow cursor-pointer" onChange={(e) => setFormData(d => ({...d, [c.id]: e.target.value}))}>
                    {c.options.map(o => (
                        <option id={o.id} value={o.id} key={o.id}>{o.name}</option>
                    ))}
                </select>
                </div>                
            ))}
            <div className="mb-2 mt-8">
            <button onClick={onDownload} className="px-4 h-10 ring-4 ring-blue-100 bg-blue-800 text-white font-bold rounded-lg font-mono">Download</button>
            </div>
        </div>
    )
}