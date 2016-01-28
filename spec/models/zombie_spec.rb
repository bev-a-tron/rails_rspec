require 'rails_helper'

RSpec.describe Zombie, type: :model do
  it 'is invalid without a name' do
    zombie = Zombie.new
    expect(zombie).not_to be_valid
  end

  it 'has a name that matches Ash Clone' do
    zombie = Zombie.new name: 'Ash Clone 1'
    expect(zombie.name).to match(/Ash Clone \d/)
  end

  it 'includes tweets' do
    tweet1 = Tweet.new status: 'Uuuuuhhhhh'
    tweet2 = Tweet.new status: 'Arrrrrgggg'
    zombie = Zombie.new name: 'Ash', tweets: [tweet1, tweet2]
    expect(zombie.tweets).to include(tweet1)
    expect(zombie.tweets).to include(tweet2)
  end

end
