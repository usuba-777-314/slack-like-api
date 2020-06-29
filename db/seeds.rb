# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "date"

now = DateTime.now

Channel.insert_all([
  { id: 1, name: "general", topic: "全社的なアナウンスと業務関連の事項", users_count: 10, created_at: now, updated_at: now },
  { id: 2, name: "random", topic: "仕事に関係ない雑談と給湯室でのおしゃべり", users_count: 10, created_at: now, updated_at: now }
])

User.insert_all([
  { id: 1, email: "zin920314+001_yamada_tarou@gmail.com", name: "山田 太郎", position: "プロダクトオーナー", created_at: now, updated_at: now },
  { id: 2, email: "zin920314+002_yamada_jirou@gmail.com", name: "山田 次郎", position: "スクラムマスター", created_at: now, updated_at: now },
  { id: 3, email: "zin920314+003_yamada_saburou@gmail.com", name: "山田 三郎", position: "開発", created_at: now, updated_at: now },
  { id: 4, email: "zin920314+004_satou_hikaru@gmail.com", name: "佐藤 光", position: "開発", created_at: now, updated_at: now },
  { id: 5, email: "zin920314+005_fujii_miki@gmail.com", name: "藤井 美希", position: "開発", created_at: now, updated_at: now },
  { id: 6, email: "zin920314+006_hirai_mika@gmail.com", name: "平井 香奈", position: "開発", created_at: now, updated_at: now },
  { id: 7, email: "zin920314+007_endou_takeru@gmail.com", name: "遠藤 健", position: "開発", created_at: now, updated_at: now },
  { id: 8, email: "zin920314+008_thomas_smith@gmail.com", name: "Thomas Smith", position: "開発", created_at: now, updated_at: now },
  { id: 9, email: "zin920314+009_emma_watson@gmail.com", name: "Emma Watson", position: "開発", created_at: now, updated_at: now },
  { id: 10, email: "zin920314+0010_abe_daigo@gmail.com", name: "阿部大吾", position: "デザイナー", created_at: now, updated_at: now }
])

ChannelUser.insert_all([
  { channel_id: 1, user_id: 1, created_at: now, updated_at: now },
  { channel_id: 1, user_id: 2, created_at: now, updated_at: now },
  { channel_id: 1, user_id: 3, created_at: now, updated_at: now },
  { channel_id: 1, user_id: 4, created_at: now, updated_at: now },
  { channel_id: 1, user_id: 5, created_at: now, updated_at: now },
  { channel_id: 1, user_id: 6, created_at: now, updated_at: now },
  { channel_id: 1, user_id: 8, created_at: now, updated_at: now },
  { channel_id: 1, user_id: 9, created_at: now, updated_at: now },
  { channel_id: 1, user_id: 10, created_at: now, updated_at: now },
  { channel_id: 2, user_id: 1, created_at: now, updated_at: now },
  { channel_id: 2, user_id: 2, created_at: now, updated_at: now },
  { channel_id: 2, user_id: 3, created_at: now, updated_at: now },
  { channel_id: 2, user_id: 4, created_at: now, updated_at: now },
  { channel_id: 2, user_id: 5, created_at: now, updated_at: now },
  { channel_id: 2, user_id: 6, created_at: now, updated_at: now },
  { channel_id: 2, user_id: 8, created_at: now, updated_at: now },
  { channel_id: 2, user_id: 9, created_at: now, updated_at: now },
  { channel_id: 2, user_id: 10, created_at: now, updated_at: now }
])

Message.insert_all([
  { id: 1, user_id: 3, text: "Hello World.", timestamp: now + 1, created_at: now, updated_at: now },
  { id: 2, user_id: 4, text: "Hello World.", timestamp: now + 2, created_at: now, updated_at: now },
  { id: 3, user_id: 5, text: "Hello World.", timestamp: now + 3, created_at: now, updated_at: now },
  { id: 4, user_id: 6, text: "Hello World.", timestamp: now + 4, created_at: now, updated_at: now },
  { id: 5, user_id: 7, text: "Hello World.", timestamp: now + 5, created_at: now, updated_at: now },
  { id: 6, user_id: 8, text: "Hello World.\nHello World.\nHello World.\nHello World.\nHello World.", timestamp: now + 6, created_at: now, updated_at: now },
  { id: 7, user_id: 9, text: "Hello World. Hello World. Hello World. Hello World. Hello World. Hello World. Hello World. Hello World. Hello World. Hello World. Hello World. Hello World. Hello World. Hello World. Hello World. Hello World. Hello World. Hello World. Hello World. Hello World.", timestamp: now + 7, created_at: now, updated_at: now }
])

ChannelMessage.insert_all([
  { channel_id: 1, message_id: 1, created_at: now, updated_at: now },
  { channel_id: 1, message_id: 2, created_at: now, updated_at: now },
  { channel_id: 1, message_id: 3, created_at: now, updated_at: now },
  { channel_id: 1, message_id: 4, created_at: now, updated_at: now },
  { channel_id: 1, message_id: 5, created_at: now, updated_at: now },
  { channel_id: 1, message_id: 6, created_at: now, updated_at: now },
  { channel_id: 1, message_id: 7, created_at: now, updated_at: now }
])
