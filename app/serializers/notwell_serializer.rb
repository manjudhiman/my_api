class NotwellSerializer < ActiveModel::Serializer
  include Typable

  attributes :id, :comment
end
