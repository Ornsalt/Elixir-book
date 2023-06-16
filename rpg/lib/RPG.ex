defmodule RPG do
  @moduledoc """
  Documentation for `RPG`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> RPG.hello()
      :world

  """
  def hello do
    :world
  end
end

rng = :rand.uniform(10)

for _x <- 0..0 do
    IO.puts("debug: dtry:{#{rng}}")
    IO.puts(OsRng.rngText(rng))
end
