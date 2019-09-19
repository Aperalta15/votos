class PersonasController < ApplicationController
  respond_to :html
  before_action :authenticate_user!
  before_action :set_persona, only: [:edit, :show, :update]

  def index
    if current_user.has_role? :admin
      redirect_to users_path
    else
      @personas = current_user.persona
    end
  end

  def edit
  end

  def show
  end

  def new
    @persona = current_user.persona.new
  end

  def create
    @persona = current_user.persona.new(persona_params)
    if @persona.save
      flash[:success] = "Amigo registrado correctamente"
      respond_with @persona
    else
      flash[:alert] = "Problemas con la grabación"
      render :new
    end
  end

  def update
    if @persona.update(persona_params)
      flash[:success]="Votante actualizado"
      redirect_to personas_path
    else
      flash[:alert]="Error al actualizar el votante (Verifique los campos)"
      render :edit
    end
  end
private
  def set_persona
    @persona = current_user.persona.find(params[:id])
  end
  def persona_params
    params.require(:persona).permit(:cedula, :nombre, :apellido, :direccion, :correo, :celular)
  end
end
