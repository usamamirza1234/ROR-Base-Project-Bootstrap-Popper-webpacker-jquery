json.application 'Safe Side'
json.endpoint 'Mobile'
json.api_version 'v1'
json.status 'success'
json.message 'Bill'
json.data do
  json.array! @app_functionalities, partial: "app_functionalities/app_functionality", as: :app_functionality

end

