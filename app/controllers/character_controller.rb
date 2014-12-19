class CharacterController < ApplicationController
  def new
  end

  def index
    @characters = Character.order(:name)
  end

  def create
    begin
      character = Character.build(character_params)
      render status: :ok, json: character.as_json
    rescue => exception
      ap exception.message
      ap exception.backtrace
      render status: 406, json: exception.error
    end
  end

  def show
    @character = Character.find params[:id]
  end

  def download
    @character = Character.find params[:id]
    path = "#{Rails.root}/app/views/character/download.pdf.erb"
    
    respond_to do |format| 
      format.html { render file: path }
      format.pdf { 
        render pdf: @character.name, 
          disposition: 'attachment', 
          file: path, 
          page_size: 'A4', 
          lowquality: false,
          margin: { top: 5, bottom: 5, left:   5, right: 5 }
        }
    end
  end

  private
  def character_params
    params.require(:character).permit!
  end
end
