module Api
  module V1
    class GreetingController < ApplicationController
      def index
        greetings = Message.all
        p greetings.sample
        render json: { status: 'SUCCESS', message: 'Loaded greeting', data: greetings.sample }, status: :ok
      end
    end
  end
end
