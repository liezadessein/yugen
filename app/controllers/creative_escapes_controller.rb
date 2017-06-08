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
  end

  private

  def creative_escape_params
    params.require(:creative_escape).permit()
  end
end
