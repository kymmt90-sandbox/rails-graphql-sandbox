Types::ArticleInputType = GraphQL::InputObjectType.define do
  name 'ArticleInputType'
  description 'Properties for creating an article by a specified user'

  argument :user_email, !types.String do
    description 'Email address of the user'
  end

  argument :title, !types.String do
    description 'Title of the article'
  end

  argument :body, types.String do
    description 'Body of the article'
  end
end
