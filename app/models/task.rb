class Task < ApplicationRecord
  belongs_to :user, as: :executor
  belongs_to :user, as: :author

end
