json.array! @messages do |message|
  json.text message.text
  json.timestamp message.timestamp
end
