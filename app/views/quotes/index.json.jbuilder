json.array!(@quotes) do |quote|
  json.extract! quote, :id, :content, :source, :author_id
  json.url quote_url(quote, format: :json)
end
