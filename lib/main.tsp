import "@typespec/json-schema";

using TypeSpec.JsonSchema;

@jsonSchema
namespace Elixir.Ast;

/**
 * Discriminator enum for all Elixir expression kinds
 */
enum ElixirExpressionKind {
  atom,
  string,
  number,
  boolean,
  nil,
  module_ref,
  list,
  tuple,
  keyword,
  call,
}

/**
 * A keyword list entry with atom key and expression value
 */
model KeywordEntry {
  key: string;
  value: ElixirExpression;
}

/**
 * Atom expression
 */
@discriminator("kind")
model AtomExpression {
  kind: ElixirExpressionKind.atom;
  value: string;
}

/**
 * String literal expression
 */
@discriminator("kind")
model StringExpression {
  kind: ElixirExpressionKind.string;
  value: string;
}

/**
 * Number literal expression
 */
@discriminator("kind")
model NumberExpression {
  kind: ElixirExpressionKind.number;
  value: numeric;
}

/**
 * Boolean literal expression
 */
@discriminator("kind")
model BooleanExpression {
  kind: ElixirExpressionKind.boolean;
  value: boolean;
}

/**
 * Nil literal expression
 */
@discriminator("kind")
model NilExpression {
  kind: ElixirExpressionKind.nil;
}

/**
 * Module reference expression
 */
@discriminator("kind")
model ModuleRefExpression {
  kind: ElixirExpressionKind.module_ref;
  value: string;
}

/**
 * List expression
 */
@discriminator("kind")
model ListExpression {
  kind: ElixirExpressionKind.list;
  items: ElixirExpression[];
}

/**
 * Tuple expression
 */
@discriminator("kind")
model TupleExpression {
  kind: ElixirExpressionKind.tuple;
  items: ElixirExpression[];
}

/**
 * Keyword list expression
 */
@discriminator("kind")
model KeywordExpression {
  kind: ElixirExpressionKind.keyword;
  entries: KeywordEntry[];
}

/**
 * Function or macro call expression
 */
@discriminator("kind")
model CallExpression {
  kind: ElixirExpressionKind.call;
  name: string;
  args: ElixirExpression[];
}

/**
 * All Elixir expression types
 */
union ElixirExpression {
  AtomExpression,
  StringExpression,
  NumberExpression,
  BooleanExpression,
  NilExpression,
  ModuleRefExpression,
  ListExpression,
  TupleExpression,
  KeywordExpression,
  CallExpression,
}
