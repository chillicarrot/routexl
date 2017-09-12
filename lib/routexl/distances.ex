defmodule Routexl.Distances do
  alias Routexl.Api
  @base_path "distances"

  def post(data) when is_map(data), do: post(Enum.into(data, []))
  def post(data) when is_list(data) do
    Api.post(@base_path, {:form, data})
  end
end