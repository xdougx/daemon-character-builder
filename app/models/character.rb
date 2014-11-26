# :player_id, :name, :race_id, :class_id, :profession, :gold, :silver, :cooper, 
# :experience, :level, :health_points, :index_protection, :hero_points, :magic_points, 
# :focues_points, :magical_aptitude, :load, :lifting, :speed, :power_bonus

class Character < ActiveRecord::Base
	belongs_to :player

	has_many :attributes
	has_one :magic
	has_many :improvements, class: CharacterImprovement
	has_many :injuries, class: CharacterInjury
	has_many :skills, class: CharacterSkill
	has_many :weapon_skills, class: CharacterWaeponSkills

	accepts_nested_attributes_for :magic, allow_destroy: true
	accepts_nested_attributes_for :attributes, allow_destroy: true
	accepts_nested_attributes_for :improvements, allow_destroy: true
	accepts_nested_attributes_for :injuries, allow_destroy: true
	accepts_nested_attributes_for :skills, allow_destroy: true
	accepts_nested_attributes_for :weapon_skills, allow_destroy: true

end