defmodule FluxionWeb.PageController do
  use FluxionWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
