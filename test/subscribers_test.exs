defmodule SubscribersTest do
  use ExUnit.Case
  alias Subscribers.Data.Subscriber

  test "create_subscribers/2" do
    payload = %{document_id: "123", first_name: "123", phone_number: "123"}

    result = Subscribers.create_subscriber([], payload)

    assert [
             %Subscriber{
               document_id: "123",
               first_name: "123",
               phone_number: "123"
             }
           ] == result
  end
end
