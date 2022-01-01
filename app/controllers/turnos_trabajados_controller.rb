class TurnosTrabajadosController < ApplicationController 
    respond_to :json
    def index
        turnos = TurnosTrabajado.all
        turnosTrabajados = []
        turnos.each do |t|
            turno = {}
            turno[:usuario] = t.user.name
            turno[:dia] = t.dia
            turno[:semana] = t.semana
            turno[:color] = t.user.color
            turno[:position] = t.bloque.position
            bloque = Bloque.find(t.bloque_id)
            servicio = Servicio.find(bloque.servicio_id)
            turno[:servicio] = servicio.name
            turnosTrabajados << turno
        end
        

        render json: turnosTrabajados
    end

    def show 
        turnos = TurnosTrabajado.where(user_id: params[:id])
        turnosElejidos = []
        turnos.each do |t|
            turno ={}
            turno[:usuario] = t.user.name
            turno[:dia] = t.dia
            turno[:semana] = t.semana
            turno[:color] = t.user.color
            turno[:position] = t.bloque.position
            bloque = Bloque.find(t.bloque_id)
            servicio = Servicio.find(bloque.servicio_id)
            turno[:servicio] = servicio.name
            turnosElejidos << turno
        end
        render json: turnosElejidos
    end

    def create
        trabajado = TurnosTrabajado.find_by(user_id: params[:user_id], dia: params[:dia], semana: params[:semana], bloque_id: params[:bloque].to_i)
        if trabajado.present?
            TurnosTrabajado.find(trabajado.id).destroy
            render json: "Destroy succefull"
        else
            servicio = Servicio.find_by(name: params[:servicioElejido])
            bloque = Bloque.create(servicio_id: servicio.id,position: params[:position])
            
            Rails.logger.info(bloque.servicio_id)
            turnocreate = TurnosTrabajado.new(user_id: params[:user_id], bloque_id: bloque.id, dia: params[:dia], semana: params[:semana])
            if turnocreate.save
                render json: "Successful"
            else
                render json: "Error"
            end
        end
    end
end