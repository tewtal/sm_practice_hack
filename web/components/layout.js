import Head from 'next/head'
import Link from 'next/link'

export default function Layout({children}) {
    return (<>
        <Head>
            <meta name="viewport" content="width=device-width, initial-scale=1" />
            <title>Super Metroid Practice Hack</title>
        </Head>
        <div className="min-h-screen bg-gray-100">
            <nav className="bg-gray-200">
                <div>
                    <div className="flex justify-around h-16 px-20 shadow items-center">
                        <div className="flex items-center space-x-16">
                            <h1 className="text-xl lg:text-2xl font-bold"><Link href="/" passHref><a className="text-black hover:text-indigo-600">Super Metroid Practice Hack</a></Link></h1>
                            <div className="flex justify-around space-x-4">
                                <Link href="/" passHref><a className="hover:text-indigo-600 text-gray-700">Patch</a></Link>
                                <Link href="/help" passHref><a href="#" className="hover:text-indigo-600 text-gray-700">Help</a></Link>
                                <Link href="/infohudmode" passHref><a href="#" className="hover:text-indigo-600 text-gray-700">Infohud Modes</a></Link>
                                <Link href="/changelog" passHref><a href="#" className="hover:text-indigo-600 text-gray-700">Changelog</a></Link>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
            <div className="container mx-auto">
                <div className="flex flex-wrap justify-center">
                    {children}
                </div>
            </div>
        </div>   
    </>)
};