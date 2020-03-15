class Post
    attr_accessor :title, :author
    @@all = []
    def initialize(title)
        @title = title 
        new
    end

    def self.all
        @@all
    end

    def new 
        @@all << self
    end

    def author_name
        if self.author == nil
          nil
        else
            self.author.name
        end
    end
end