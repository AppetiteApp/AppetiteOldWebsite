class AdvertisementsController < ApplicationController
  def index
    @advertisements = Advertisement.paginate(page: params[:page], per_page: 20)
  end

  def show
  end

  def new
    @advertisement = Advertisement.new
  end

  def create
    @advertisement = Advertisement.new(advert_params)

    if @advertisement.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def advert_params
    params.require(:advertisement).permit(:dish, :phone, :price, :location, :description)
  end
end
