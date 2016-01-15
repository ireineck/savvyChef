class Special < ActiveRecord::Base
    belongs_to :category
    validates_presence_of :title, :ingredients, :instructions,:category
    validates :title, uniqueness: true
end
