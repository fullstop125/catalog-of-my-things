require_relative '../classes/author'
require_relative '../classes/items'
describe Author do
  author = Author.new('brian', 'nyachae')
  it 'it should create a new instance of Author' do
    expect(author).to be_instance_of(Author)
  end
  item = Item.new('2020/03/09')
  it 'it should add author to ' do
    author.add_items(item)
    expect(author.items.length).to eq 1
  end
end
