import Layout from '../components/layout'
import MDX from '../components/mdx'
import HelpMarkdown from '../data/categorypresets.mdx'

export default function CategoryPresets() {
    return (
        <Layout>
            <MDX MarkdownComponent={HelpMarkdown} />
        </Layout>
    )
}
