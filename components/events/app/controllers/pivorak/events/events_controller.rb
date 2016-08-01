module Pivorak::Events
  class EventsController < ApplicationController

    helper_method :event, :events

    def new
      @event = Event.new
    end

    def create
      @event = Event.new(event_params)

      if @event.save
        redirect_to [pivorak, @event], notice: 'Event was successfully created.'
      else
        render :new
      end
    end

    def update
      if event.update(event_params)
        redirect_to [pivorak, @event], notice: 'Event was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      event.destroy
      redirect_to pivorak.events_url, notice: 'Event was successfully destroyed.'
    end

    private

    def event
      @event ||= Event.find(params[:id])
    end

    def events
      @events ||= Event.order(start: :desc)
    end

    def event_params
      params.require(:event).permit(:title, :place, :start, :finish, :agenda)
    end
  end
end
