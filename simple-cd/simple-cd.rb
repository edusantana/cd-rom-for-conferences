require 'csv'
require 'erubis'
require 'logger'

input = STDIN.read
eruby = Erubis::Eruby.new(input)

csv_options = {:headers => true, :col_sep => "\t", :encoding => 'UTF-8'}

submissions = {}
CSV.foreach("submissions.csv", csv_options) do |row|
	category = submissions [ row[0] ] || []
	category << row
	submissions [row[0]] = category
end

teams = {}
CSV.foreach("teams.csv", csv_options) do |row|
	category = teams [ row[0] ] || []
	category << row
	teams [row[0]] = category
end

context = {
  :submissions   => submissions,
  :teams   => teams,
  :event   => CSV.read("event.csv", csv_options),
}

puts eruby.evaluate(context)         # get result
