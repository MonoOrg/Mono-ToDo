# frozen_string_literal: true

class Sprint < ApplicationRecord
  has_many :tasks
  belongs_to :project
end
