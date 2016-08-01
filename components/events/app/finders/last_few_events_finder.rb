module Pivorak::Events
  class LastFewEventsFinder
    FEW = 3

    def call
      Event.where('start < ?', Time.now).order(start: :desc).limit(FEW)
    end
  end
end
