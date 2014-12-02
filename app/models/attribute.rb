class Attribute < ActiveRecord::Base
	ATTRS = [
		['constitution', 'Constituição', 'CON'], 
		['strength', 'Força', 'STR'], 
		['dexterity', 'Destreza', 'DEX'], 
		['agility', 'Agilidade', 'AGI'], 
		['inteligence', 'Inteligência', 'INT'], 
		['willpower', 'Força de Vontade', 'WIL'], 
		['perception', 'Percepção', 'PER'], 
		['charisma', 'Carisma', 'CAR'], 
	]
end
