class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0}
  validate :must_include_at_least_one_apparel
  before_destroy :check_employee_size

  def must_include_at_least_one_apparel
    if !womens_apparel.present? && !mens_apparel.present?
      errors.add(:womens_apparel, "must include at least one apparel") 
      errors.add(:mens_apparel, "must include at least one apparel")
    end
  end

  def check_employee_size

    if employees.size > 0
      errors.add(:base,"have employee, can not be destroy")
      throw :abort
    end
  end

end
