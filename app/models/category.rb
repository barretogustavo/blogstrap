class Category < ApplicationRecord # rubocop:disable Style/Documentation
  has_many :article, dependent: :restrict_with_error

  validates :name, presence: true, length: { minimum: 3 }

  scope :sorted, -> { order(:name) }
end
