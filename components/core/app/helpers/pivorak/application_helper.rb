module Pivorak
  module ApplicationHelper
    ACTIVE = 'active'.freeze

    FLASH_CLASSES = {
      notice:  'alert alert-info',
      success: 'alert alert-success',
      alert:   'alert alert-danger',
      error:   'alert alert-danger'
    }

    def flash_class(level)
      FLASH_CLASSES[level]
    end

    def active(controller, *url_fragments)
      correct_controller = params[:controller].include?(controller.to_s)

      return ACTIVE if correct_controller && url_fragments.empty?

      url_fragments.each do |f|
        return ACTIVE if correct_controller && request.url.include?(f.to_s)
      end
    end

    def timestamp(data)
      data.strftime('%Y %b %d - %H:%M')
    end
  end
end
