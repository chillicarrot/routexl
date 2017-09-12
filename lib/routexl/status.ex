defmodule Routexl.Status do
  alias Routexl.Api
  @base_path "status"

  def get() do
    Api.get(@base_path)
  end
end