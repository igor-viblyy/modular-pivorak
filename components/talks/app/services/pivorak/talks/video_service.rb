module Pivorak::Talks
  class VideoService

    attr_reader :url, :id, :thumbnail

    def initialize(url)
      @url       = url
      @id        = parse_youtube_url
      @thumbnail = get_thumbnail
    end

    private

    def parse_youtube_url
      regex = /(?:.be\/|\/watch\?v=|\/(?=p\/))([\w\/\-]+)/
      url.match(regex)[1] rescue nil
    end

    def get_thumbnail
      return unless id

      "http://img.youtube.com/vi/#{id}/0.jpg"
    end
  end
end
