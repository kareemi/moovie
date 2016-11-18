class Moovie < ApplicationRecord
  validates :title, uniqueness: true

end
