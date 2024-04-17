defmodule CardCollection.Arke.Card do
  @moduledoc """
  Defines the skeleton of an Arke by defining its characteristics and the various parameters of which it is composed
  """
  use Arke.System
  alias Arke.Core.Unit
  alias Arke.Boundary.ArkeManager
  alias Arke.{QueryManager, LinkManager, StructManager}

  arke id: :card do
  end

  ## Custom Functions
  def my_function(:conn, :arke) do
    IO.inspect(arke)
    IO.inspect(unit)
  end
end
