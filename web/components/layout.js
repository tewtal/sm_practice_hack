import Head from 'next/head'
import Link from 'next/link'
import { useRouter } from 'next/router'

const MenuLinks = [
    {
        name: 'Patch',
        href: '/',
    },
    {
        name: 'Help',
        href: '/help',
    },
    {
        name: 'Infohud Modes',
        href: '/infohudmode',
    },
    {
        name: 'Changelog',
        href: '/changelog',
    },
]

const MenuLink = ({ href, name }) => {
    let styles = 'hover:text-indigo-600 text-gray-700'
    const router = useRouter()
    const { asPath } = router
    const isActive = asPath === href
    if (isActive) {
        styles = `${styles} underline underline-offset-4`
    }
    return (
        <Link href={href}>
            <a className={styles}>{name}</a>
        </Link>
    )
}

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
                            <h1 className="text-xl lg:text-2xl font-bold"><Link href="/"><a className="text-black hover:text-indigo-600">Super Metroid Practice Hack</a></Link></h1>
                            <div className="flex justify-around space-x-4">
                                {MenuLinks.map((link) => <MenuLink key={link.href} {...link} />)}
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