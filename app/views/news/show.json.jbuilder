# json.partial! "news/news", news: @news


# json.content format_content(@news.id)
json.(@news, :created_at, :updated_at)

json.new do
  json.id @news.id
  # json.email_address @news.creator.email_address_with_name
  # json.url url_for(@news.creator, format: :json)
end

# if current_user.admin?
#   json.visitors calculate_visitors(@news)
# end

# json.comments @news.comments, :content, :created_at

# json.attachments @news.attachments do |attachment|
#   json.filename attachment.filename
#   json.url url_for(attachment)
# end

json.set! :author do
  json.set! :name, 'David'
end

hash = { author: { name: "David" } }
json.post do
  json.title "Merge HOWTO"
  json.merge! hash
end

json.name("Alex")
json.email("alex@example.com")
