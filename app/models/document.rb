class Document < ApplicationRecord

  DOC_TYPES = ['Marksheet', 'Certificate', 'Transcript', 'Other'].freeze

  belongs_to :employee

  has_one_attached :image

end
