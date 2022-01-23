defmodule Subscribers.Core.Core do
  alias Subscribers.Data.Subscriber

  def create_subscriber(subscribers, new_subscriber, plan) do
    subscribers ++ [Subscriber.new(new_subscriber, plan)]
  end
end
