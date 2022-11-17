require_relative '../classes/genre'
require_relative '../classes/items'

describe Genre do
  context 'With valid input' do
    it 'Should add an item' do
      item = Item.new(date: '2000/10/10', archived: false)
      genre = Genre.new(name: 'Horror')
      genre.add_items(item)
      expect(genre.items.empty?).to be false
    end
  end

  context 'With valid input' do
    it 'add genre to array' do
      genre = Genre.new('pop')
      item = Item.new('2022/01/01')
      genre.add_items(item)
      expect(genre.items.length).to eq 1
    end
  end
end
