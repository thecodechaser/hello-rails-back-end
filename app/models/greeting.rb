# frozen_string_literal: true

class Greeting < ApplicationRecord
  validates :message, presence: true, length: { in: 1..200 }
end
