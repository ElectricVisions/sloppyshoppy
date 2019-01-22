defmodule SloppyshoppyTest do
  use ExUnit.Case
  doctest Sloppyshoppy

  test "greets the world" do
    assert Sloppyshoppy.hello() == :world
  end
end
