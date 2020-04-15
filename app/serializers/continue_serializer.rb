class ContinueSerializer < ActiveModel::Serializer
  include Typable

  attributes :id, :comment
end
