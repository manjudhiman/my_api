class ImproveSerializer < ActiveModel::Serializer
  include Typable

  attributes :id, :comment
end
