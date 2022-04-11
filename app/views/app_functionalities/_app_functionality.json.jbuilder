json.extract! app_functionality, :id, :app_version, :app_package, :is_locked, :created_at, :updated_at
json.url app_functionality_url(app_functionality, format: :json)
