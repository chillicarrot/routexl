defmodule Routexl.Api do
  use HTTPoison.Base

  @base_url "https://api.routexl.nl/"

  def process_url(path) do
    @base_url <> path
  end

  defp process_request_headers(headers) do
    add_authorization(headers)
  end

  defp process_response_body(body) do
    case Poison.decode(body) do
      {:ok, response} -> Enum.map(response, fn({k, v}) -> {String.to_atom(k), v} end)
      _ -> raise body
    end
  end

  defp process_request_options(options) do
    options ++ [ssl: [{:versions, [:'tlsv1.2']}], recv_timeout: Application.get_env(:routexl, :recv_timeout, 50000)]
  end

  defp process_status_code(status_code) do
     case status_code do
       200 -> :noop
       _ -> IO.inspect "Routexl #{status_code}"
     end
     status_code
  end

  defp add_authorization(headers) do
    api_key = Application.get_env(:routexl, :api_key, '')
    headers ++ ["Authorization": "Basic #{api_key}"]
  end
end
