import Layout from '../components/layout'
import MDX from '../components/mdx'
import ChangelogMarkdown from '../data/changelog.mdx'

export default function Changelog() {
    return (
        <Layout>
            <MDX MarkdownComponent={ChangelogMarkdown} />
        </Layout>
    )
}