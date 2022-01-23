defmodule Subscribers do
  alias Subscribers.Core.Core

  def create(subscribers, new_subscriber) do
    Core.create_subscriber(subscribers, new_subscriber)
  end
end
