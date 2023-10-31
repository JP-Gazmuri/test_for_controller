class TestsController < ApplicationController

    def show
      number = params[:id]
      number2 = rand(1..100)
      data = { url_number: number.to_s, random_number: number2.to_s }

      respond_to do |format|
        format.json { render json: data }
      end
    end

    def start
      record1 = Record.where(locker: 1).last()
      record2 = Record.where(locker: 2).last()
      record3 = Record.where(locker: 3).last()
      data = {password_deposit1: record1.password_deposit, password_deposit2: record2.password_deposit, password_deposit3: record3.password_deposit, password_retire1: record1.password_retire, password_retire2: record2.password_retire, password_retire3: record3.password_retire}
      respond_to do |format|
        format.json { render json: data }
      end
    end

    def get_pass
      locker = params[:locker].to_i
      pass = params[:password].to_i
      if pass == 0
        password = Record.where(locker: locker).last().password_deposit
      else
        password = Record.where(locker: locker).last().password_retire
      end
      data = {password: password}

      respond_to do |format|
        format.json { render json: data }
      end
    end

    def index
      
    end
end