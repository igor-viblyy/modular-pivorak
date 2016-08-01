module Pivorak::Events
  class UpcomingEventsFinder
    def call
      Event.where('start > ?', Time.now)
    end
  end
end
