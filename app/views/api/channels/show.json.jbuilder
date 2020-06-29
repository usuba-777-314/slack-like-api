json.set! :channel do
  json.id @channel.id
  json.name @channel.name
  json.topic @channel.topic
  json.users_count @channel.users_count
end
