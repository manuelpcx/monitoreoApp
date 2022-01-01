class ServiciosController < ApplicationController 
    def index 
        servicios = Servicio.all
        render json: servicios
    end
    
    def create
        servicio = Servicio.new(servicio_params)
        Rails.logger.info(servicio.id)
        if servicio.save
            render json: "Successfully"
        else
            render json: "Failed"
        end
    end

    private
    def servicio_params
        params.require(:servicio).permit(:name)
    end
end