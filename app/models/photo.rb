class Photo < ApplicationRecord
belongs_to :photocat, foreign_key: "cat_id"
end
