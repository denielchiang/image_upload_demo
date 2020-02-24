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
	case ImageManager.create_image(image_params) do
	  {:ok, image} ->
		conn
		|> put_flash(:info, "圖片上傳成功")
		|> redirect(to: Routes(conn, :index))
	  {:error, changeset} ->
		conn
		|> put_flash(:error, "圖片上傳失敗")
		|> render("new.html", changeset: changeset)
	end
  end
end
