module Pivorak::Talks
  class TalksController < ApplicationController

    helper_method :talk, :talks

    def new
      @talk = Talk.new
    end

    def create
      @talk = Talk.new(talk_params)

      if @talk.save
        redirect_to [pivorak, @talk], notice: 'Talk was successfully created.'
      else
        render :new
      end
    end

    def update
      if talk.update(talk_params)
        redirect_to [pivorak, @talk], notice: 'Talk was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      talk.destroy
      redirect_to pivorak.talks_url, notice: 'Talk was successfully destroyed.'
    end

    private

    def talk
      @talk ||= Talk.find(params[:id])
    end

    def talks
      @talks ||= Talk.all
    end

    def talk_params
      params.require(:talk).permit(:speaker, :topic, :description, :video, :slides, :event_id)
    end
  end
end
