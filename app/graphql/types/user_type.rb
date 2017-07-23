Types::UserType = GraphQL::ObjectType.define do
  name 'User'

  field :email, !types.String
  field :articles, types[Types::ArticleType]
end
