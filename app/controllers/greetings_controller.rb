class GreetingsController < ApplicationController
    def random_greeting
      message = Message.order("RANDOM()").first
      if message.present?
        render json: { greeting: message.greeting }
      else
        render json: { error: "No greetings found" }, status: :not_found
      end
    end
  end
  