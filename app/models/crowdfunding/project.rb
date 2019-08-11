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
		pledge_result_hash = {}
		Pledge.all.each do |pledge|
			if pledge_result_hash[pledge.project.name]
				pledge_result_hash[pledge.project.name] += pledge.amount
			else
				pledge_result_hash[pledge.project.name] = pledge.amount
			end
		end
		project_goal_hash = {}
		self.all.each do |project|
			project_goal_hash[project.name] = project.goal_amount
		end
		result =[]
		project_goal_hash.each do |key, value|
			if pledge_result_hash[key] && project_goal_hash[key] <= pledge_result_hash[key]
				result << key
			end
		end
		result.uniq.join(", ")
	end

	def self.most_backers
		pledge_number_of_backers_hash = {}
		Pledge.all.map do |pledge|
			if pledge_number_of_backers_hash[pledge.project.name]
				pledge_number_of_backers_hash[pledge.project.name] += 1
			else
				pledge_number_of_backers_hash[pledge.project.name] = 1
			end
		end
		pledge_number_of_backers_hash.key(pledge_number_of_backers_hash.values.max)
	end

end