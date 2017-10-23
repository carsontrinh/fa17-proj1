class PokemonsController < ApplicationController
	def new
	end
	def create
		@pokemon = Pokemon.new(params.require(:pokemon).permit(:name))
		# @pokemon.update(pokemon_params)
		# @pokemon = Pokemon.new(params.require(:pokemon).permit(:name))
		@pokemon.level = 1
		@pokemon.health = 100
		@pokemon.trainer = current_trainer
		if @pokemon.save
			redirect_to trainer_path(@pokemon.trainer)
		else
			redirect_to new_pokemon_path
			flash[:error] = @pokemon.errors.full_messages.to_sentence
		end
	end
	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer = current_trainer
		@pokemon.save!
		redirect_to '/'
		# alternatively, redirect_to root_path
	end

	def damage
	    @pokemon = Pokemon.find(params[:id])
		@pokemon.health -= 10
		if @pokemon.health > 0
			@pokemon.save!
		else
			@pokemon.destroy!
		end
		redirect_to trainer_path(@pokemon.trainer_id)
	end

	private

	def pokemon_params
		params.require(:pokemon).permit(:name)
	end

end