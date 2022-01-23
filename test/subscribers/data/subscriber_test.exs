defmodule Subscribers.Data.SubscriberTest do
  use ExUnit.Case
  alias Subscribers.Data.Subscriber

  test "create new subscriber" do
    # Given
    payload = %{document_id: "123", first_name: "123", phone_number: "123"}

    # When
    result = Subscriber.new(payload, :prepaid)

    # Then
    assert %Subscribers.Data.Subscriber{
             document_id: "123",
             first_name: "123",
             phone_number: "123",
             plan: :prepaid
           } == result
  end
end
