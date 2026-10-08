class Datasheet < ApplicationRecord
    has_many :connectors, dependent: :destroy
end
