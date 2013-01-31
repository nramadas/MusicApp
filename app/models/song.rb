class Song < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :artist, foreign_key: 'author_id'
  has_many :recordings
  has_many :bands, through: :recordings
end
