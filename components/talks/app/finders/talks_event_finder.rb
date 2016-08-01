module Pivorak::Talks
  class TalksEventFinder
    attr_reader :event_id

    def initialize(event_id)
      @event_id = event_id
    end

    def call
      Pivorak::Talks::Talk.where(event_id: event_id)
    end
  end
end
