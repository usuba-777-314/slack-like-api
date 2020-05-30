json.array! @messages do |message|
  json.id message.id
  json.text message.text
  json.timestamp message.timestamp
end
