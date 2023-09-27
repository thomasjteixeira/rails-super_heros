json.extract! hero, :id, :name, :age, :planet_id, :created_at, :updated_at
json.url hero_url(hero, format: :json)
