class ScratchersController < ApplicationController
    # protect_from_forgery with: :null_session

    def index
        scratchers = Scratcher.all
        render :json => scratchers
    end

    def show
        scratcher = Scratcher.find(params[:id])
        render :json => scratcher
    end

    def create
        scratcher = Scratcher.new(scratcher_params)
        if scratcher
            scratcher.save
            render :json => scratcher
        else
            render json: {error: "Failed to create Listing"}
        end
    end

    def update
        scratcher = Scratcher.find(params[:id])
        scratcher.update(scratcher_params)

        render :json => scratcher
    end

    def destroy
        scratcher = Scratcher.find(params[:id])
        scratcher.destroy
    end

    
    private

    def scratcher_params
        params.permit(:item_name, :item_description, :item_size, :item_cost)
    end

end
