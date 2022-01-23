defmodule Subscribers.Data.Subscriber do
  defstruct document_id: nil, first_name: nil, phone_number: nil

  def new(%{document_id: document_id, first_name: first_name, phone_number: phone_number}) do
    %__MODULE__{document_id: document_id, first_name: first_name, phone_number: phone_number}
  end
end
