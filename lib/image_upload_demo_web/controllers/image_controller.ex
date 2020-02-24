defmodule ImageUploadDemoWeb.ImageController do
  use ImageUploadDemoWeb, :controller

  alias ImageUploadDemo.ImageManager

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def new(conn, _) do
    changeset = ImageManager.change_image()
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"image" => image_params}) do
    IO.inspect(image_params)
  end
end
