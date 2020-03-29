defmodule Covid19Orientation.Trees.Tree do
  @moduledoc """
  Implémentation basique d'un arbre.
  """

  alias __MODULE__
  alias Covid19Orientation.Trees.{FlattenTree, TraverseTree}

  defstruct key: nil, type: nil, depth: nil, operation: nil, children: []

  @type key() :: any
  @type type() :: :branch | :leaf
  @type depth() :: integer
  @type operation() :: (any -> boolean)
  @type t :: %Tree{key: nil, type: type, depth: depth, operation: operation, children: [t]}

  defdelegate flatten(trees), to: FlattenTree, as: :call
  defdelegate traverse(stack, value), to: TraverseTree, as: :call
end
