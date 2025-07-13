class Employee < ApplicationRecord
    # validates :name, presence: true
    # validates :personal_email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    # validates :city, presence: true
    # validates :state, presence: true
    # validates :country, presence: true
    # validates :pincode, presence: true, numericality: { only_integer: true }
    # validates :address_line_1, presence: true
    # validates :address_line_2, presence: true

    def employee_name(o)
        "#{o.first_name} #{o.last_name}".strip
    end

end
