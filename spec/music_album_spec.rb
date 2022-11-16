require_relative '../classes/music_album'

describe MusicAlbum do
  album = MusicAlbum.new(true, 'New', '2011/01/01')
  new_album = MusicAlbum.new(false, 'New album', '2020/01/01')

  it 'creates a new MusicAlbum' do
    expect(album).to be_an_instance_of MusicAlbum
    expect(new_album).to be_an_instance_of MusicAlbum
  end

  it 'album can be archived' do
    expect(album.can_be_archived?).to eq true
  end

  it 'new album can not be archived' do
    expect(new_album.can_be_archived?).to eq false
  end
end
