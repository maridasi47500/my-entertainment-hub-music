class Song < ApplicationRecord
def mysong=(uploaded_io)
File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
  file.write(uploaded_io.read)
end
write_attribute(:mysong, uploaded_io.original_filename)
end
def mysong
read_attribute(:mysong)
end
def self.track_list
xx=select("songs.*").to_a.shuffle.map do |x|
  {
    id: x.id,
    name: x.title,
    artist: x.artist,
      myradio: "myradio",
    image: ("https://source.unsplash.com/Qrspubmx6kE/640x360"),
    path: "/uploads/"+x.mysong+""
  }
end
xx.to_json
end



end
