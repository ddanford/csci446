module ArticlesHelper
  def article_mailto(display, article)
    mail_to '', display,
      :subject => 'Artic.le: ' + article.title,
      :body    => 'Check out this article on Artic.le, ' + link_to(article.title, polymorphic_url(article)),
      :class   => 'text-image',
      :title   => 'Send article to a friend'
  end
end
