json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :first_name, :last_name, :category, :email, :username, :birthday
  json.url teacher_url(teacher, format: :json)
end
