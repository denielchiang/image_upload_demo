defmodule ImageUploadDemo.ImageManager.Image do
  use Ecto.Schema
  use Arc.Ecto.Schema
  import Ecto.Changeset

  schema "images" do
    field :path, ImageUploadDemo.ImageUploader.Type

    timestamps()
  end

  @doc false
  def changeset(image, attrs) do
    image
    |> cast(attrs, [:path])
    |> cast_attachments(attrs, [:path])
    |> validate_required([:path])
  end
end
