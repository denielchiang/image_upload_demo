defmodule ImageUploadDemo.Repo do
  use Ecto.Repo,
    otp_app: :image_upload_demo,
    adapter: Ecto.Adapters.Postgres
end
