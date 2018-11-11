class Collection < ApplicationRecord
  belongs_to :user
  has_many :album
end
