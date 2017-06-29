class FavoriteMailer < ApplicationMailer
  default from: "cpalmer608@gmail.com"

  def new_comment(user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@sheltered-temple-16365>"
    headers["In-Reply-To"] = "<post/#{post.id}@sheltered-temple-16365>"
    headers["References"] = "<post/#{post.id}@sheltered-temple-16365>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end
end
