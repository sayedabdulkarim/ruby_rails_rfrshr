class Document < ApplicationRecord

  DOC_TYPES = ['Marksheet', 'Certificate', 'Transcript', 'Other'].freeze

  belongs_to :employee
end
