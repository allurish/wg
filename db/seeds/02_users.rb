user1 = User.find_or_create_by!(email: "test@test.com") do |u|
    u.password = "123"
    u.password_confirmation = "123"
    u.full_name = "Testicus Sr."
end
user2 = User.find_or_create_by!(email: "test@example.com") do |u|
    u.password = "123"
    u.password_confirmation = "123"
    u.full_name = "Testicus Jr."
end
