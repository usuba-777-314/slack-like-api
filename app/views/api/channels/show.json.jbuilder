json.set! :channel do
  json.extract! @channel, :id, :name, :topic, :users_count
end
