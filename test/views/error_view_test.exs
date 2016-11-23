defmodule Bookshelf.ErrorViewTest do
  use Bookshelf.ConnCase, async: true

  # Bring render/3 and render_to_string/3 for testing custom views
  import Phoenix.View

  test "renders 404.json" do
    assert Bookshelf.ErrorView.render("404.json", message: "Not Found") ==
      %{error: "Not Found"}
  end

  test "render 500.json" do
    assert Bookshelf.ErrorView.render("500.json") ==
      %{error: "Internal server error"}
  end

  test "render any other" do
    assert Bookshelf.ErrorView.render("500.json") ==
      %{error: "Internal server error"}
  end
end
