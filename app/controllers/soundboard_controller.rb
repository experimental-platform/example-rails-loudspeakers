class SoundboardController < ApplicationController
  def index
  end

  def meow
    play_and_respond_to "meow.mp3"
  end

  def woof
    play_and_respond_to "woof.mp3"
  end

  def moo
    play_and_respond_to "moo.mp3"
  end

  def meeh
    play_and_respond_to "meeh.mp3"
  end

  private

    def play_and_respond_to file_name
      if play(file_name)
        render text: "success", status: 200
      else
        render text: "error playing sound", status: 500
      end
    end

    def play file_name
      path = Rails.root.join("sounds/#{file_name}")
      `mplayer #{path}`
      $?.exitstatus == 0
    end
end
