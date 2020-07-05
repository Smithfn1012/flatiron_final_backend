class ChoiceSerializer < ActiveModel::Serializer
  attributes :id, :item, :answer, :question_answer_id
end
