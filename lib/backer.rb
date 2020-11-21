# class Backer

# attr_reader :name, :backed_projects

# def initialize(name)
#     @name = name
#     @backed_projects = []
# end

# def back_project(project)
    # ProjectBacker.new(project, self)
# end

# def backed_projects(project)
#     @backed_projects << ProjectBacker.new(project, self)
#     @backed_projects
# end

# end

class Backer

    attr_accessor :name, :backed_projects
  
    def initialize(name)
      @name = name
      @backed_projects = []
    end
  
    def back_project(project)
        ProjectBacker.new(project, self)
      @backed_projects << project
      project.backers << self
    end
  end