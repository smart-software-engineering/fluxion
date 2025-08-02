defmodule RateCalculator.SentryReqClient do
  @moduledoc """
  Custom Sentry HTTP client using Req instead of Hackney.
  """

  @behaviour Sentry.HTTPClient

  @impl true
  def child_spec do
    %{
      id: __MODULE__,
      start: {__MODULE__, :start_link, []}
    }
  end

  def start_link do
    {:ok, self()}
  end

  @impl true
  def post(url, headers, body) do
    case Req.post(url, headers: headers, body: body) do
      {:ok, %Req.Response{status: status, headers: response_headers, body: response_body}} ->
        {:ok, status, response_headers, response_body}

      {:error, reason} ->
        {:error, reason}
    end
  end
end
