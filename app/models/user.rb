class User < ApplicationRecord
    attribute :is_active, :boolean, default: true

    has_secure_password

    has_many :user_roles, dependent: :destroy
    has_many :roles, through: :user_roles
end
