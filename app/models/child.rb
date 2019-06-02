class Child < ApplicationRecord
  enum sex: [ :female, :male ]

  validates :name, :time_of_birth, :sex, presence: true
end
