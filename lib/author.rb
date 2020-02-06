class Author
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    Post.all.select{|post|
      post.author == self
    }
  end

  def add_post(post)
    @posts.push(post)
    post.author = self
  end

  def add_post_by_title(title)
    add_post(Post.new(post))

  end
end
