class Status < ActiveRecord::Base
  belongs_to :character

  ATTRS = [
    ['constitution', 'Constituição', 'constitution_bonus', 'CON'], 
    ['strength', 'Força', 'strength_bonus', 'STR'], 
    ['dexterity', 'Destreza', 'dexterity_bonus', 'DEX'], 
    ['agility', 'Agilidade', 'agility_bonus', 'AGI'], 
    ['inteligence', 'Inteligência', 'inteligence_bonus', 'INT'], 
    ['willpower', 'Força de Vontade', 'willpower_bonus', 'WILL'], 
    ['perception', 'Percepção', 'perception_bonus', 'PER'], 
    ['charisma', 'Carisma', 'charisma_bonus', 'CAR'], 
  ]

  def total attr
    attr_value = self.send(attr[0])
    modifier = self.send(attr[0]).modifier
    bonus = self.send(attr[2])


    4 * (attr_value + modifier + bonus)
  end
end
