# == Schema Information
#
# Table name: questions
#
#  id         :bigint           not null, primary key
#  question   :text             not null
#  poll_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Question < ApplicationRecord
    belongs_to :poll

    has_many :answer_choices,
        foreign_key: :question_id,
        class_name: :AnswerChoice
    
    has_many :responses,
    through: :answer_choices,
    source: :responses

end
