# frozen_string_literal: true

class Spaceship < ApplicationRecord
  belongs_to :user, optional: true
end
