class FileUpload < ApplicationRecord
  belongs_to :user
  has_one_attached :file

  validates :title, presence: true
  validates :file, attached: true, size: {less_than: 1.gigabyte, message: "too large"}
end
