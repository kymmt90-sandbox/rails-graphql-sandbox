Types::MutationType = GraphQL::ObjectType.define do
  name 'Mutation'

  field :createArticle, Types::ArticleType do
    description 'Create an article by the specified user'
    argument :article, Types::ArticleInputType

    resolve ->(o, args, c) {
      user = User.find_by!(email: args[:article][:user_email])
      user.articles.create!(title: args[:article][:title], body: args[:article][:body])
    }
  end
end
