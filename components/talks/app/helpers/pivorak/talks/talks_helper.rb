module Pivorak::Talks
  module TalksHelper
    def thumbnail_image(video_url)
      source = Pivorak::Talks::VideoService.new(video_url).thumbnail

      return unless source

      image_tag source
    end
  end
end
