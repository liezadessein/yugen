class CreativeEscapesController < ApplicationController
  def index
    @creative_escapes = CreativeEscape.all
  end

  def show
    @creative_escape = CreativeEscape.find(params[:id])
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

  private

  def creative_escape_params
    params.require(:creative_escape).permit(:description, :escape_photos, :length,:price,
      :currency, :streetnumber, :address, :postcode, :city, :country, :email, :phone )
  end

end
