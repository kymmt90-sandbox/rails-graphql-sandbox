Types::UserType = GraphQL::ObjectType.define do
  name 'User'

  field :email, !types.String
  connection :articles, Types::ArticleType.connection_type
end
