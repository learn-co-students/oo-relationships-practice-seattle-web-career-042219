class Project

    attr_accessor :name, :creator, :goal_amount

    @@all=[]

    def initialize(name, creator, goal_amount)
        @name = name
        @creator = creator
        @goal_amount = goal_amount
        @@all << self
    end

    def self.all
        @@all
    end

	def self.no_pledges
		projects_with_pledges = Pledge.all.map do |pledge|
			if pledge.amount
				pledge.project
			end
		end
		projects_with_pledges + Project.all - (projects_with_pledges & Project.all)
	end
	
	def self.above_goal
		project_total_hash = {}
		self.all.map do |project|
			{project.name, project.goal_amount}
		end
	end

	def self.most_backers

	end

end