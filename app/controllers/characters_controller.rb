class CharacterController < ApplicationController
  def show
    the_id = params.fetch("path_id")
    @the_character = Character.find_by(id: the_id)
  
    if @the_character.nil?
      redirect_to("/characters", notice: "Character not found.") and return
    end
  
    render({ template: "character_templates/show" })
  end
  
end
