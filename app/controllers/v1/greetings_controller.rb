# frozen_string_literal: true

class V1::GreetingsController < ApplicationController
  def index
    @greeting = Greeting.order('RANDOM()').first
    if @greeting
      render json: { success: true, message: 'Loaded greeting message', data: { greeting: @greeting } }, status: :ok
    else
      render json: { success: false, errors: 'Oops, Something went wrong!' }, status: :unprocessable_entity
    end
  end
end
