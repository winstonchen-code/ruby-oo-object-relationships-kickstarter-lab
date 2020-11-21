# class Project

#     attr_reader :title

# def initialize(title)
#     @title = title 
# end

# def add_backer(backer)
    # ProjectBacker.new(self, backer)
# end

# end

class Project
    attr_accessor :title, :backers
  
    def initialize(title)
      @title = title
      @backers = []
    end
    
    def add_backer(backer)
        ProjectBacker.new(self, backer)
      @backers << backer
      backer.backed_projects << self
    end
  end