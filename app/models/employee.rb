class Employee < ApplicationRecord

    has_many :documents

    validates :first_name, presence: true
    validates :last_name, presence: true

    def employee_name(o)
        "#{o.first_name} #{o.last_name}".strip
    end

end
