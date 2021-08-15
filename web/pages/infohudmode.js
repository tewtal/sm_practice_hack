import Layout from '../components/layout'
import MDX from '../components/mdx'
import HelpMarkdown from '../data/infohudmode.mdx'

export default function InfohudMode() {
    return (
        <Layout>
            <MDX MarkdownComponent={HelpMarkdown} />
        </Layout>
    )
}