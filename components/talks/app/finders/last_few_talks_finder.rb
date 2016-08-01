module Pivorak::Talks
  class LastFewTalksFinder
    FEW = 3

    def call
      Talk.order(created_at: :desc).limit(FEW)
    end
  end
end
