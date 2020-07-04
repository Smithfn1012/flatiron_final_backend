class Api::V1::BiomesController < ApplicationController

    def index
        @biomes = Biome.all
        render json: @biomes
    end

    def show
    end

    def create
        @biome = Biome.create(biome_params)
        render json: @biome
    end

    def update
        @biome.update(biome_params)
        render json: @biome
    end

    def destroy
        @biomes = Biome.all
        @biome.destroy
        render json: @biomes
    end

    private

    def find_biome
        @biome = Biome.find(params[:id])
    end

    def biome_params
        params.permit(:biome_name, :temp_range, :ecosystems, :biodiversity, :image)
    end
end
