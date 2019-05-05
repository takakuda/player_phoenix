defmodule PlayerPhoenix.PlayerTest do
  use PlayerPhoenix.ModelCase

  alias PlayerPhoenix.Player

  @valid_attrs %{name: "some content", position: "some content", team: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Player.changeset(%Player{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Player.changeset(%Player{}, @invalid_attrs)
    refute changeset.valid?
  end
end
