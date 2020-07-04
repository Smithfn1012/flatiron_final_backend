class Api::V1::BiomesController < ApplicationController

    def index
        @biomes = Biome.all
        render json: @biomes
    end
end
