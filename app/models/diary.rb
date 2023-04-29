class Diary < ApplicationRecord

    validates_presence_of :tite
    validates_presence_of :summary
    validates_presence_of :description
    validates_presence_of :importance
    validates_presence_of :date

    has_one_attached :image, :dependent => :destroy

end
