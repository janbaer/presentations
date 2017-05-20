# Next.js

- Serverside rendering React.js framework
- Convention based (just put an index.js into pages to start)
- Sends only what's needed for the current page to the client
- Component based styles
- Explicitly route prefetching
- Out-of-the-box build process
- Hot module replacement during development
- Static file serving (put files in the **static** folder)

---

# Demo - Initial data on server or client

```javascript
import React from 'react'

export default class extends React.Component {
  static async getInitialProps ({ req }) {
    return req
      ? { userAgent: req.headers['user-agent'] }
      : { userAgent: navigator.userAgent }
  }

  render () {
    return <div>
      Hello World {this.props.userAgent}
    </div>
  }
}
```

---

# Demo and some more code

- https://nextjs-demo-ubptnuxqsv.now.sh/
- https://github.com/janbaer/nextjs-demo

