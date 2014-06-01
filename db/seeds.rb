# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Calendar.destroy_all

calendars = [
  { :year => 2014},
  { :year => 2015},
  { :year => 2016},
  { :year => 2017},
  { :year => 2018},
  { :year => 2019},
  { :year => 2020}
]

calendars.each do |cal|
  c = Calendar.new
  c.year = cal[:year]
  c.save
end

puts "There are now #{Calendar.count} years in the database."

Quarter.destroy_all

quarters = [
  { :term => "fall"},
  { :term => "winter"},
  { :term => "spring"}
]

quarters.each do |quarter|
  q = Quarter.new
  q.term = quarter[:term]
  q.save
end

puts "There are now #{Quarter.count} quarters in the database."

Program.destroy_all

programs = [
  { :name => "2Y"},
  { :name => "MMM"},
  { :name => "JD-MBA"},
  { :name => "1Y"},
  { :name => "PT"},
  { :name => "EMP"}
]

programs.each do |program|
  p = Program.new
  p.name = program[:name]
  p.save
end

puts "There are now #{Program.count} programs in the database."

Department.destroy_all

departments = [
  { :name => "ACCT"},
  { :name => "BLAW"},
  { :name => "DECS"},
  { :name => "FINC"},
  { :name => "HEMA"},
  { :name => "KACI"},
  { :name => "KIEI"},
  { :name => "KMCI"},
  { :name => "KPPI"},
  { :name => "MEDM"},
  { :name => "MGMT"},
  { :name => "MORS"},
  { :name => "MECN"},
  { :name => "MKTG"},
  { :name => "OPNS"},
  { :name => "REAL"},
  { :name => "SEEK"},
]

departments.each do |dept|
  d = Department.new
  d.name = dept[:name]
  d.save
end

puts "There are now #{Department.count} departments in the database."

Section.destroy_all

sections = [
  { :number => 31},
  { :number => 32},
  { :number => 61},
  { :number => 62},
  { :number => 63},
  { :number => 64},
]

sections.each do |section|
  s = Section.new
  s.number = section[:number]
  s.save
end

puts "There are now #{Section.count} sections in the database."

Course.destroy_all
# name:string instructor:string calendar_id:integer quarter_id:integer department_id:integer team_size:integer section_id:integer
courses = [
  { :name => 925, :intructor => "Raghu Betina", :calendar_id => 1, :quarter_id => 3, :department_id => 6,:team_size => 2, :section_id => 1},
  { :name => 450, :intructor => "Sudhakar Deshmukh", :calendar_id => 1, :quarter_id => 3, :department_id => 15,:team_size => 3, :section_id => 4},
  { :name => 441, :intructor => "Brian Melzer", :calendar_id => 1, :quarter_id => 3, :department_id => 4,:team_size => 5, :section_id => 3},
  { :name => 466, :intructor => "Timothy Calkins", :calendar_id => 1, :quarter_id => 3, :department_id => 14,:team_size => 4, :section_id => 5},
  { :name => 953, :intructor => "Song Yao", :calendar_id => 1, :quarter_id => 3, :department_id => 14,:team_size => 5, :section_id => 1},
]

courses.each do |course|
  c = Course.new
  c.name = course[:name]
  c.instructor = course[:instructor]
  c.calendar_id = course[:course_id]
  c.quarter_id = course[:quarter_id]
  c.department_id = course[:department_id]
  c.team_size = course[:team_size]
  c.section_id = course[:section_id]
  c.save
end

puts "There are now #{Course.count} courses in the database."

