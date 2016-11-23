defmodule Bookshelf.ErrorView do
  use Bookshelf.Web, :view

  def render("404.json", %{"message": message}) do
    %{error: message}
  end

  def render("500.json", _assigns) do
    %{error: "Internal server error"}
  end

  # In case no render clause matches or no
  # template is found, let's render it as 500
  def template_not_found(_template, assigns) do
    render "500.json", assigns
  end
end
