json.array!(@post_apps) do |post_app|
  json.extract! post_app, :id, :appName, :appDetails, :image, :appUrl
  json.url post_app_url(post_app, format: :json)
end
