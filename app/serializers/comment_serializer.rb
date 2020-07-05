class CommentSerializer < ActiveModel::Serializer
  attributes :id, :name, :comment, :animal_img, :animal_id, :plant_id, :created_at
end
