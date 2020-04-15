class WellSerializer < ActiveModel::Serializer
  include Typable

  attributes :id, :comment
end
