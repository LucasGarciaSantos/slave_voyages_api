module Api
  module V1
    class VoyagesController < ApplicationController


      def index
        voyages = Voyage.all.order(:voyageid).limit(100)
        render json: {status: 'SUCCESSO', message:'Dados carregados', data: voyages}, status: :ok
      end 

      def show
        voyage = Voyage.find_by voyageid: params[:id]
        render json: {status: 'SUCCESSO', message:'Dados carregados', data: voyage}, status: :ok
      end

    end
  end
end
