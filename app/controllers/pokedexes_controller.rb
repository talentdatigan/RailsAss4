class PokedexesController < ApplicationController
  before_action :set_pokedex, only: [:show, :edit, :update, :destroy]

  # GET /pokedexes
  # GET /pokedexes.json
  def index
    @pokedexes = if params[:term]
    Pokedex.where('name LIKE ?',"%#{params[:term]}%")
  else
  Pokedex.all
  end
  end

  # GET /pokedexes/1
  # GET /pokedexes/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pokedex
      @pokedex = Pokedex.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pokedex_params
      params.require(:pokedex).permit(:Index,:term, :Name, :Type_1, :Type_2, :Total, :HP, :Attack, :Defense, :Sp_Atk, :Sp_Def, :Speed, :Generation, :Legendary)
    end
end
