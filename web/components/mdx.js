import { MDXProvider } from '@mdx-js/react'
import React from 'react'

/* eslint-disable react/display-name, @next/next/no-img-element, jsx-a11y/alt-text */
const components = {
    h1: props => <div className="p-4 mb-4 mt-8 bg-blue-100 text-blue-500 rounded shadow-sm font-sans font-bold">{props.children}</div>,
    h2: props => <h2 className="mx-2 text-lg font-bold mt-4" {...props} />,
    p: props => <p className="mx-4" {...props} />,
    ol: props => <ol className="list-decimal ml-8 text-md" {...props} />,
    ul: props => <ul className="list-disc ml-8 mb-4 text-md" {...props} />,
    table: props => <table className="table-auto" {...props} />,
    th: props => <th className="px-4" {...props} />,
    td: props => <td className="px-4" {...props} />,
    img: props => <img className="mx-auto mb-4" {...props} />
}
/* eslint-enable */

export default function MDX({MarkdownComponent}) {
    return (
        <div className="px-8 h-auto mt-10 w-10/12 bg-white rounded font-sans shadow-sm">
            <MDXProvider components={components}>
                <MarkdownComponent />
            </MDXProvider>
        </div>
    )
}