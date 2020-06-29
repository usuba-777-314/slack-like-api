json.messages do
  json.array! @messages do |message|
    json.extract! message, :id, :text, :timestamp

    json.user do
      json.extract! message.user, :id, :email, :name, :position
    end
  end
end
