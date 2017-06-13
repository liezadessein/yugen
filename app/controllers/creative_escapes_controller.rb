class CreativeEscapesController < ApplicationController

  def index
   @creative_escapes = CreativeEscape.all

   @creative_escapes_maps = CreativeEscape.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@creative_escapes) do |creative_escape, marker|
    marker.lat creative_escape.latitude
    marker.lng creative_escape.longitude
    end
  end

  def show
    @creative_escape = CreativeEscape.find(params[:id])
    @hash = Gmaps4rails.build_markers([@creative_escape]) do |creative_escape, marker|
      marker.lat creative_escape.latitude
      marker.lng creative_escape.longitude
    end
  end

  def new
    @creative_escape = CreativeEscape.new
  end

  def create
    @creative_escape = CreativeEscape.create(creative_escape_params)
      params[:creative_escape][:escape_photos].each do |escape_photo|
        new_photo = @creative_escape.escape_photos.create!(photo: escape_photo)
        end
    redirect_to creative_escape_path(@creative_escape)
  end

  def edit
    @creative_escape = CreativeEscape.find(params[:id])
  end

  def update
    @creative_escape = CreativeEscape.find(params[:id])

    if @creative_escape.update(creative_escape_params)
      redirect_to creative_escape_path(@creative_escape)
    else
      render :edit
    end
  end


  private

  def creative_escape_params
    params.require(:creative_escape).permit(:description, :escape_photos, :length,:price_cents,
      :currency, :streetnumber, :address, :postcode, :city, :country, :email, :phone, :skill)
  end

end
