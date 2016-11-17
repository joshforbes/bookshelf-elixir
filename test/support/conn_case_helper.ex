defmodule Bookshelf.ConnCaseHelper do
  def render_json(view, template, assigns) do
    view.render(template, assigns) |> format_json
  end

  def format_json(data) do
    data
    |> Poison.encode!
    |> Poison.decode!
  end
end