require_relative '../classes/game'

describe Game do
  game = Game.new('Samuel game', '2022/10/12', 'asim')
  game1 = Game.new('Brian game', '2017/10/12', 'asim')

  it 'Should create a new game' do
    expect(game).to be_an_instance_of Game
  end

  it 'Expects game to match multiplayer' do
    expect(game1.multiplayer).to eq 'asim'
  end

  it 'Expects game to match game name' do
    expect(game1.game_name).to eq 'Brian game'
  end
end
