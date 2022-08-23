class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than: 40, less_than: 200 }
  validates_associated :store

  before_create :set_password

  private
    def set_password
      random_password = Array.new(8){[*"A".."Z", *"0".."9"].sample}.join
      self.password = random_password
    end
end
