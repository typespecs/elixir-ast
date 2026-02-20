# @typespecs/elixir-ast

[TypeSpec](https://typespec.io) definitions for a JSON-friendly Elixir expression AST.

## Installation

```sh
npm install @typespecs/elixir-ast
```

Requires `@typespec/compiler ~1.9.0` as a peer dependency:

```sh
npm install --save-dev @typespec/compiler
```

## Usage

Import the library in your TypeSpec file:

```tsp
import "@typespecs/elixir-ast";

using Elixir.Ast;
```

## Releases

This package uses [release-please](https://github.com/googleapis/release-please) with Conventional Commits.
Use conventional commit messages (for example, `feat: add tuple helpers` or `fix: correct map key typing`) so automated versioning and changelog generation work correctly.

## License

[MIT](./LICENSE)
