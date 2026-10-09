@user1 = User.find_or_create_by!(email: "test@test.com") do |u|
    u.password = "123"
    u.password_confirmation = "123"
    u.full_name = "Test Sr."
end
@user2 = User.find_or_create_by!(email: "test@example.com") do |u|
    u.password = "123"
    u.password_confirmation = "123"
    u.full_name = "Test Jr."
end
