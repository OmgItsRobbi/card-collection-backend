defmodule CardCollectionWeb.Endpoint do

  use Phoenix.Endpoint, otp_app: :card_collection


  # The session will be stored in the cookie and signed,
  # this means its contents can be read but not tampered with.
  # Set :encryption_salt if you would also like to encrypt it.
  @session_options [
    store: :cookie,
    key: "_card_collection_key",
    signing_salt: "FHKcZiVl",
    same_site: "Lax"
  ]

  

  plug Plug.RequestId
  plug Plug.Telemetry, event_prefix: [:phoenix, :endpoint]

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Phoenix.json_library()

  # CORS configuration
  unless Mix.env() == :dev do
    plug(Corsica, origins: "*", allow_headers: :all)
  else
    plug(Corsica, origins: "*", allow_headers: :all)
  end

  plug Plug.MethodOverride
  plug Plug.Head
  plug Plug.Session, @session_options
  plug CardCollectionWeb.Plug.Router
end
