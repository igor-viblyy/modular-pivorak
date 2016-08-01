module Pivorak::Events
  class Event < ApplicationRecord
    validates :title,  presence: true
    validates :start,  presence: true
    validates :finish, presence: true
    validates :place,  presence: true
    validates :agenda, presence: true
  end
end
