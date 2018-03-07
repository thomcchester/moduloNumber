class ActualtestsController < ApplicationController
    def show
        @actualtest = Actualtest.find(params[:id])
    end
    def new
        @actualtest= Actualtest.new
    end

    def create
        @actualtest = Actualtest.new(actualtest_params)

        if @actualtest.save
            redirect_to @actualtest
        else
            render 'new'
        end
    end

    private
        def actualtest_params
            params.require(:actualtest).permit(:title, :stringlength, :numberoftests)
        end


end
