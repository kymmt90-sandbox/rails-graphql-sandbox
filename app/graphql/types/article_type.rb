Types::ArticleType = GraphQL::ObjectType.define do
  name 'Article'

  field :title, !types.String
  field :body, !types.String
  field :user, Types::UserType
end
