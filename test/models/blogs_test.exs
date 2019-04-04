defmodule PhoenixReactCuratedList.BlogsTest do
  use PhoenixReactCuratedList.ModelCase

  alias PhoenixReactCuratedList.Blogs

  @valid_attrs %{author: "some author", image: "some image", link: "some link", subtitle: "some subtitle", title: "some title"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Blogs.changeset(%Blogs{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Blogs.changeset(%Blogs{}, @invalid_attrs)
    refute changeset.valid?
  end
end
