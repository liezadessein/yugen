class CreativeEscapesController < ApplicationController
 # has_many :escape_photos

def index
 @creative_escapes = CreativeEscape.all
end

def show
  @creative_escape = CreativeEscape.find(params[:id])
end

private


end
