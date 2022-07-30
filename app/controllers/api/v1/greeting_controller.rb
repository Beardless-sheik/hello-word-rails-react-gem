class Api::V1::GreetingController < ApplicationController
  def index
    greetings = Message.all
    p greetings.sample
    render json: { status: 'SUCCESS', message: 'Loaded greeting', data: greetings.sample}, status: :ok
  end
end