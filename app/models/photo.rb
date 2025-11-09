class Photo < ApplicationRecord
belongs_to :photocat, foreign_key: "cat_id"
  has_many :albumphotos
  accepts_nested_attributes_for :albumphotos, allow_destroy: true

end
