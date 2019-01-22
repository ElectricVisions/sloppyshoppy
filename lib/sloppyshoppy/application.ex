defmodule Sloppyshoppy.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Starts a worker by calling: Sloppyshoppy.Worker.start_link(arg)
      # {Sloppyshoppy.Worker, arg},
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Sloppyshoppy.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
