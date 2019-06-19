class Child < ApplicationRecord
  enum sex: [ :female, :male ]

  validates :name, :time_of_birth, :sex, presence: true

  def age
    seconds = (Time.now - time_of_birth).to_i
    years   = seconds / 1.year
    months  = seconds % 1.year / 1.month
    { years: years, months: months }
  end

  def days_until_next_birthday
    year  = Date.today.year
    month = time_of_birth.month
    day   = time_of_birth.day
    next_birthday = Date.new(year, month, day) < Date.today ? Date.new(year + 1, month, day) : Date.new(year, month, day)
    (next_birthday - Date.today).to_i
  end
end
