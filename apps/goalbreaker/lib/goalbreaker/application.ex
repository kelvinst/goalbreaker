defmodule Goalbreaker.Application do
  @moduledoc """
  The Goalbreaker Application Service.

  The goalbreaker system business domain lives in this application.

  Exposes API to clients such as the `GoalbreakerWeb` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      
    ], strategy: :one_for_one, name: Goalbreaker.Supervisor)
  end
end
