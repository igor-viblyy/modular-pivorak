module Pivorak::Talks
  class Talk < ApplicationRecord

    belongs_to :event,
      optional:   true,
      class_name: 'Pivorak::Events::Event'

    validates :speaker,     presence: true
    validates :topic,       presence: true
    validates :description, presence: true
    validates :video,       presence: true
  end
end
