#encoding: UTF-8
module Termit
  class SpeechSynthesizer
    include CanOutput
    delegate :display_player_error_and_quit, to: :output_manager

    def initialize options
      check_sound_player
      @text = options[:text]
      @url = Termit::UrlConstructor.new(options).url
    end

    def call
      response = Termit::SoundFetcher.new(@url, @text).data
      Termit::SoundResponseHandler.new(response.body).call
    end

    private

    def check_sound_player
      begin
        check = system "where.exe mpg123"
        if check == false then 
          display_player_error_and_quit
        end
      rescue => e
        puts e
      end
    end
  end
end
