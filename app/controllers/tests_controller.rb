class TestsController < ApplicationController

    def show
      number = params[:id]
      number2 = rand(1..100)
      data = { url_number: number.to_s, random_number: number2.to_s }

      respond_to do |format|
        format.json { render json: data }
      end
    end

    def comunicate
      byebug
    end

    def index
      
    end
end