import Layout from '../components/layout'
import Patch from '../components/patch'
import Upload from '../components/upload'
import { useState, useEffect } from 'react'
import localforage from 'localforage'
import config from '../data/config.json'
import Link from 'next/link'

export default function Home() {
  const [romData, setRomData] = useState();
  const [variant, setVariant] = useState(config.variants[0]);

  useEffect(() => {    
    async function getRomData() {
      for(const v of config.variants) {
        try {
          let data = await localforage.getItem(`romData-${v}`);
          setRomData((d) => { return {...d, [v]: data}});
        } catch (e) {
          console.log(e);
        }
      }
    };
    
    getRomData();
  }, []);

  const onRomUploaded = async (uploadedRomData) => {
    try {
      await localforage.setItem(`romData-${variant}`, uploadedRomData);
      setRomData((d) => { return {...d, [variant]: uploadedRomData}});
    } catch (e) {
      console.log(e);
    }
  }

  return (
    <Layout>
      <div className="flex px-6 h-auto mt-10 w-7/12 bg-white font-sans">
        {config.variants.map((v) => {
          const active = (v === variant);
          const color = active ? "red" : "gray";
          return (<div key={v} onClick={() => setVariant(v)} className={`py-2 p-4 mt-4 mr-2 h-auto bg-${color}-100 text-${color}-500 rounded shadow-sm font-sans font-bold cursor-pointer`}>{v}</div>)
        })}
      </div>
      {romData !== undefined ? romData[variant] ? <Patch variant={variant} romData={romData[variant]} /> : <Upload variant={variant} onUploaded={onRomUploaded} /> : ""}
      <div className="py-4 px-6 h-auto mt-10 w-7/12 bg-white shadow-xl font-sans">
        <div className="p-4 mb-4 bg-yellow-100 text-yellow-500 rounded shadow-sm font-sans font-bold">
          Information
        </div> 
        <div className="flex flex-col text-sm gap-4 mx-2">
          <p>For information on what&apos;s available in the practice hack and how to use it, you can visit the <Link href="/help">Help</Link></p>
          <p>If you&apos;re wondering what&apos;s changed since the last version, just head to the <Link href="/changelog">Changelog</Link></p>
          <p>Strong with SNES Assembly? Take a look at the source code at <Link href="https://github.com/tewtal/sm_practice_hack/">GitHub</Link></p>
        </div>
      </div>
    </Layout>
  )
}
