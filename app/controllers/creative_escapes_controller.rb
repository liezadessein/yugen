class CreativeEscapesController < ApplicationController

  def index
    if params[:search].nil?
       @creative_escapes = policy_scope(CreativeEscape)
    else
      @creative_escapes = CreativeEscape.search_by_description_and_country(params[:search])
    end
    @creative_escapes_maps = CreativeEscape.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@creative_escapes) do |creative_escape, marker|
    marker.lat creative_escape.latitude
    marker.lng creative_escape.longitude
    end
  end

  def show
    skip_authorization
    @creative_escape = CreativeEscape.find(params[:id])
    @previous = @creative_escape.previous
    @next = @creative_escape.next
    @hash = Gmaps4rails.build_markers([@creative_escape]) do |creative_escape, marker|
      marker.lat creative_escape.latitude
      marker.lng creative_escape.longitude

    end
  end

  def new
    #user.admin?
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
    authorize @creative_escape
  end

  def update
    authorize @creative_escape
    @creative_escape = CreativeEscape.find(params[:id])

    if @creative_escape.update(creative_escape_params)
      redirect_to creative_escape_path(@creative_escape)
    else
      render :edit
    end
  end

  def delete
    authorize @creative_escape

  end


  private

  def creative_escape_params
    params.require(:creative_escape).permit(:description, :escape_photos, :length,:price_cents,
      :currency, :streetnumber, :address, :postcode, :city, :country, :email, :phone, :skill)
  end

end
