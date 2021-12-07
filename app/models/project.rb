class Project < ApplicationRecord
  belongs_to  :user,    as: :owner
  has_many    :sprints, dependent: :destroy
  has_one     :backlog, dependent: :destroy
end
