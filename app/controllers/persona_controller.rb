class PersonaController < ApplicationController
  before_action :authenticate_user!
  def index
    @personas = Persona.where(user_id: current_user.id)
  end

  def edit
  end

  def show
  end

  def new
  end
end
