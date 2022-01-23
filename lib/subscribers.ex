defmodule Subscribers do
  alias Subscribers.Core.Core

  defdelegate create_subscriber(subscribers, new_subscriber), to: Core
end
