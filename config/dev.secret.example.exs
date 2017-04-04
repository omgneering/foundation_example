use Mix.Config

# Configure your database with your credentials
config :foundation_example, FoundationExample.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "yourusername",
  password: "yourpassword",
  database: "foundation_example_dev",
  hostname: "localhost",
  pool_size: 10
