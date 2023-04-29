class Diary < ApplicationRecord

    validates_presence_of :title
    validates_presence_of :summary
    validates_presence_of :description
    validates_presence_of :importance
    validates_presence_of :date
end
