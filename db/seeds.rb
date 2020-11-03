# Roles

['Head Master', 'Teacher', 'Student'].each{ |role| Role.create(name: role) }

# Students

5.times do |i|
  user = User.create(name:  "Student #{i}", 
	        email: "student0#{i}@gmail.com",
	        password: "Password0#{i}@root")
 
  user.role = Role.find_by(name: 'Student') 
end

# Teacher

teacher = User.create(name: 'Teacher', email: 'teacher@gmail.com', password: "Teacher@root")
teacher.role = Role.find_by(name: 'Teacher') 

# HeadMaster

head_master = User.create(name: 'Head Master', email: 'headmaster@gmail.com', password: "Headmaster@root")
head_master.role = Role.find_by(name: 'Head Master') 

# Performance Types 

['Low', 'Low Medium', 'Medium', 'Medium High', 'High'].each do |performance|
	PerformanceType.create(name: performance, min_value: 1, max_value: 5)
end
