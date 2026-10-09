["Администратор", "Главный инженер", "Гость"].each do |role_name|
    UserRole.find_or_create_by!(user: @user1, role: Role.find_by!(name: role_name))
end

UserRole.find_or_create_by!(user: @user2, role: Role.find_by!(name: "Гость"))