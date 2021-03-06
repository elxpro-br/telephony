defmodule Subscribers.Core.CoreTest do
  use ExUnit.Case
  alias Subscribers.Core.Core
  alias Subscribers.Data.Subscriber

  test "include a new subscriber in a subescriber list" do
    payload = %{document_id: "123", first_name: "123", phone_number: "123"}

    result = Core.create_subscriber([], payload)

    assert [
             %Subscriber{
               document_id: "123",
               first_name: "123",
               phone_number: "123"
             }
           ] == result
  end

  test "insert two new subscribers" do
    payload = %{document_id: "123", first_name: "123", phone_number: "123"}

    result =
      []
      |> Core.create_subscriber(payload)
      |> Core.create_subscriber(payload)
      |> Core.create_subscriber(payload)

    assert [
             %Subscriber{
               document_id: "123",
               first_name: "123",
               phone_number: "123"
             },
             %Subscriber{
               document_id: "123",
               first_name: "123",
               phone_number: "123"
             },
             %Subscriber{
               document_id: "123",
               first_name: "123",
               phone_number: "123"
             }
           ] == result
  end
end
