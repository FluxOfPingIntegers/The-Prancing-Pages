
class FavoriteQuote < ActiveRecord::Base
  belongs_to :user
  belongs_to :quote
  belongs_to :character


end