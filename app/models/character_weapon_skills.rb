class CharacterWeaponSkills < ActiveRecord::Base
	belongs_to :weapon_skills	, foreign_key: :weapon_skill_id
end
