# postgREST Client for admin-on-rest

For using [postgREST](https://github.com/begriffs/postgrest) with [admin-on-rest](https://github.com/marmelab/admin-on-rest), use the `postgrestClient` function to convert AOR's REST dialect into one compatible with postgREST.

## Installation

```sh
npm install aor-postgrest-client --save
```

## Usage

```js
// in src/App.js
import React from 'react';
import { Admin, Resource } from 'admin-on-rest';
import postgrestClient from 'aor-postgrest-client';
import { PostList } from './posts';

const App = () => (
    <Admin restClient={postgrestClient('/mypostgrestendpoint')}>
        <Resource name="posts" list={PostList} />
    </Admin>
);

export default App;
```

## Scripts

| command                  | Description                                                   |
| ------------------------ | ------------------------------------------------------------- |
| `npm run-script build`   | Build process to generate main target 'lib'                   |
| `npm run-script publish` | Shortcut that will trigger build before running `npm publish` |

## License

This library is licensed under the [MIT Licence](LICENSE), and sponsored by [tomberek](https://tomberek.info).
