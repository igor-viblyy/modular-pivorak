# Main user
puts "Create main user"
Pivorak::User.new.tap do |u|
  u.email                 = 'admin@pivorak.io'
  u.password              = 'password'
  u.password_confirmation = 'password'
  u.admin                 = true
  u.save!
end
puts "Done! \n\n"
