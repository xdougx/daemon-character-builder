class Magic < ActiveRecord::Base
	PATHS = [
		['fire', 'Fogo'],
		['plants', 'Plantas'],
		['water', 'Água'],
		['animals', 'Animais'],
		['earth', 'Terra'],
		['human', 'Humanos'],
		['air', 'Ar'],
		['dead', 'Mortos'],
		['light', 'Lux'],
		['extra_planar', 'Extra-Planar'],
		['dark', 'Trevas'],
		['meta_planar', 'Meta-Planar']
	]

	FORMS = [
		['know', 'Entender'],
		['make', 'Criar'],
		['handle', 'Controlar']
	]

end
