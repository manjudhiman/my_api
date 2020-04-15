class RetroSerializer < ActiveModel::Serializer
  include Typable

  attributes :id
end
