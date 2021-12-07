class Project < ApplicationRecord
  belongs_to :owner, dependent: :destroy
  belongs_to :admin
end
