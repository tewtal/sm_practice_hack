import Layout from '../components/layout'
import MDX from '../components/mdx'
import HelpMarkdown from '../data/help.mdx'

export default function Help() {
    return (
        <Layout>
            <MDX MarkdownComponent={HelpMarkdown} />
        </Layout>
    )
}