new_subscriber = %{document_id: "321321", first_name: "Gustavo", phone_number: "123123"}

subscribers = []
|> Subscribers.create(new_subscriber)
|> Subscribers.create(new_subscriber)
|> Subscribers.create(new_subscriber)
|> Subscribers.create(new_subscriber)
|> Subscribers.create(new_subscriber)
