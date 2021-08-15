import { useRef } from "react"
import { crc32 } from '../lib/crc32'
import config from '../data/config.json'

export default function Upload({variant, onUploaded}) {
    const fileInput = useRef(null);
    const baseData = config.base[variant];

    const readAsArrayBuffer = async (blob) => {
        const fileReader = new FileReader();
        return new Promise((resolve, reject) => {
            fileReader.onerror = () => {
                fileReader.abort();
                reject(new DOMException("Error parsing data"));
            };
    
            fileReader.onload = (e) => {
                resolve(e.target.result);
            };
    
            fileReader.readAsArrayBuffer(blob);
        });
    };

    const onSubmitRom = async (e) => {
        e.preventDefault();

        const file = fileInput.current.files[0];

        if (file == null) {
            alert("You must select a file first");
            return;
        }
        
        let fileData = null;

        try {
            fileData = new Uint8Array(await readAsArrayBuffer(file));
        } catch (err) {
            alert("Could not read uploaded file data", err);
            return;
        }

        /* Strip header if found */
        if((fileData.length & 0x200) > 0)
        {
            fileData = fileData.slice(0x200, fileData.length);
        }
        
        const crc = crc32(fileData);
        if(crc.toString(16).toUpperCase() !== baseData.crc) {
            alert("The select file's checksum does not match the expected value, try with another file.");
            return;
        }

        onUploaded(fileData);
    };

    return (
        <div className="py-4 px-6 h-auto w-7/12 bg-white shadow-xl font-sans">
            <div className="p-4 mb-4 bg-blue-100 text-blue-500 rounded shadow-sm font-sans font-bold">
            Select your ROM
            </div>
            <p>To be able to create a practice hack ROM you must first select your regular Super Metroid ROM.</p>
            <p>It&apos;s usually named <i>{baseData.name}</i> and it should have the CRC checksum: <b>{baseData.crc}</b></p>
            <form onSubmit={onSubmitRom}>
                <div className="mb-4 mt-4">
                <label className="block mx-1 mb-2 text-sm font-bold text-base" htmlFor="type">Select your ROM</label>
                <input type="file" ref={fileInput}/>
                </div>
                <div className="mb-2 mt-8">
                <button type="submit" className="px-4 h-10 ring-4 ring-blue-100 bg-blue-800 text-white font-bold rounded-lg font-mono">OK</button>
                </div>
            </form>
        </div>
    )
}