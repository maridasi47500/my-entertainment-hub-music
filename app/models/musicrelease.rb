class Musicrelease < ApplicationRecord
  has_many :songs
  accepts_nested_attributes_for :songs, allow_destroy: true
belongs_to :musiccat, foreign_key: "category"
def pic=(uploaded_io)
File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
  file.write(uploaded_io.read)
end
write_attribute(:pic, uploaded_io.original_filename)
end
def pic
read_attribute(:pic) 
end

end
