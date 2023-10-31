class RecordsController < ApplicationController
    
    def index
        @records = []
        @records<<Record.where(locker: 1).last()
        @records<<Record.where(locker: 2).last()
        @records<<Record.where(locker: 3).last()

    end

    def show
        @record = Record.find params[:id]
    end

    def new
        @record = Record.new
    end

    def create
        record = Record.new create_params
        record.status = 0
        if record.save
            redirect_to record, notice:'Record creado exitosamente'
        else
            render :new
        end
    end
    
    private

    def create_params
        params.require(:record).permit(:locker,:password_deposit,:password_retire)
    end
end
