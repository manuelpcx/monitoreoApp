class BloquesController < ApplicationController
    def create_bloque(servicio_id)
        bloque = Bloque.new(servicio_id: servicio_id)
        if bloque.save
            render json: "Successfully"
        else
            render json: "Failed"
        end
    end

    private
    def bloque_params
        params.require(:bloque).permit(:servivio_id)
    end
end