class HomeController < ApplicationController
	def main
		render action: :main, layout: 'application'
	end
end
