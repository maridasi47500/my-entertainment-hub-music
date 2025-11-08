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

end
