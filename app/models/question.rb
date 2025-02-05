class Question < ApplicationRecord
    has_many :options, dependent: :destroy
  
    accepts_nested_attributes_for :options
  
    validates :title, presence: true
    validates :question_text, presence: true
    validates :name, presence: true
end  