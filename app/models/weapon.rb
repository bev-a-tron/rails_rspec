class Weapon < ActiveRecord::Base
  belongs_to :zombie

  def initialize name: 'sword'
    @name = name
  end
end
