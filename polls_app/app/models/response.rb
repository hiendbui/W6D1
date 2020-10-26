# == Schema Information
#
# Table name: responses
#
#  id               :bigint           not null, primary key
#  answer_choice_id :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :integer          not null
#
class Response < ApplicationRecord
    belongs_to :answer_choice

    belongs_to :respondent,
    foreign_key: :user_id,
    class_name: :User

    has_one :question,
    through: :answer_choice,
    source: :question

    def sibling_responses
        self.question.responses
    end
end
