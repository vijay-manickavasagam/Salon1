User.destroy_all
["Eduardo", "Vijay"].each do |login|
  u = User.new
  u.login = login
  u.password = "kellogg"
  u.profile = "user"
  u.save
end
