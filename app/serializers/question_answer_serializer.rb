class QuestionAnswerSerializer < ActiveModel::Serializer
  attributes :id, :question, :fact, :image, :choices
end
