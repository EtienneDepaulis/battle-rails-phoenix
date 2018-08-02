defmodule TodosElixir.Api.TodoView do
  use TodosElixir.Web, :view

  def render("index.json", %{todos: todos}) do
    %{data: render_many(todos, TodosElixir.Api.TodoView, "todo.json")}
  end

  def render("show.json", %{todo: todo}) do
    %{data: render_one(todo, TodosElixir.Api.TodoView, "todo.json")}
  end

  def render("todo.json", %{todo: todo}) do
    %{id: todo.id,
      title: todo.title}
  end
end
