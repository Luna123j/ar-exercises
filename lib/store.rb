class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0}
  validate :must_include_at_least_one_apparel

  def must_include_at_least_one_apparel
    if !womens_apparel.present? && !mens_apparel.present?
      errors.add(:womens_apparel, "must include at least one apparel") 
      errors.add(:mens_apparel, "must include at least one apparel")
    end
  end

end
