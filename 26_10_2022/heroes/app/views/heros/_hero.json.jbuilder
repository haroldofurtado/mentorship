json.extract! hero, :id, :name, :remote_image, :primary_attribute, :attack_type, :roles, :created_at, :updated_at
json.url hero_url(hero, format: :json)
