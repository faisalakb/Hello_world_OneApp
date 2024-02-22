class StaticController < ApplicationController
  def index
    @greetings = Greeting.all.pluck(:greeting)
    render json: { greetings: @greetings.sample }
  end
end
