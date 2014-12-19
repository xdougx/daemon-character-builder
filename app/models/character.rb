# :player_id, :name, :race_id, :class_id, :profession, :gold, :silver, :cooper, 
# :experience, :level, :health_points, :index_protection, :hero_points, :magic_points, 
# :focues_points, :magical_aptitude, :load, :lifting, :speed, :power_bonus

class Character < ActiveRecord::Base
	belongs_to :player
	belongs_to :kit
	belongs_to :race

	has_one :magic
	has_one :status
	
	has_many :improvements, class: CharacterImprovement
	has_many :injuries, class: CharacterInjury
	has_many :skills, class: CharacterSkill
	has_many :weapon_skills, class: CharacterWeaponSkills

	accepts_nested_attributes_for :magic, allow_destroy: true
	accepts_nested_attributes_for :status, allow_destroy: true
	accepts_nested_attributes_for :improvements, allow_destroy: true
	accepts_nested_attributes_for :injuries, allow_destroy: true
	accepts_nested_attributes_for :skills, allow_destroy: true
	accepts_nested_attributes_for :weapon_skills, allow_destroy: true

	validates :name, presence: true

	def self.build params
		transaction do
			ap params
			character = Character.new params
			if character.valid?
				character.save
				character
			else
				raise Exceptions::Model.build(character)
			end
		end			
	end
end