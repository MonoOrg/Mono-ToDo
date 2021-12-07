class Subproject < ApplicationRecord
  belongs_to :admin
  has_many :manager, dependent: :destroy
end
