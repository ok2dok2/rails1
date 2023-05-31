class Contact < ApplicationRecord
  validates :contact,
    length: { minimum: 1, maximum: 140}
end
