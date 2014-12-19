class CharacterSkill < ActiveRecord::Base
	belongs_to :skill
	belongs_to :character

	def total
		self.skill_points + self.bonus
	end

	def get_attr
		case self.skill.base_attribute
		when 'CON' then :constitution
		when 'STR' then :strenght
		when 'DEX' then :dexterity
		when 'INT' then :inteligence
		when 'WILL' then :willpower
		when 'PER' then :perception
		when 'CAR' then :charisma
		end
	end
end

