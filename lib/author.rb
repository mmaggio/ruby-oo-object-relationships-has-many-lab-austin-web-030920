class Author
    attr_accessor :name, :post
    @@all = []
    def initialize(name)
        
        @name = name
        new
    end

def posts
    Post.all.collect {|s| s}
end

    def new
        @@all << self
    end

    def add_post(post)
        post.author = self

    end

    def add_post_by_title(title)
        new_post = Post.new(title)
        new_post.author = self
    end

    def self.post_count
        Post.all.length
    end
end