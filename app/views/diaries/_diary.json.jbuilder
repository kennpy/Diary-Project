json.extract! diary, :id, :tite, :summary, :description, :importance, :date, :created_at, :updated_at
json.url diary_url(diary, format: :json)
