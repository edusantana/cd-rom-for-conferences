require 'csv'
require 'erubis'
require 'logger'

#log = Logger.new(STDOUT)

input = STDIN.read
eruby = Erubis::Eruby.new(input)      # create Eruby object


csv_options = {:headers => true, :col_sep => "\t", :encoding => 'UTF-8'}

trabalhos = {}
CSV.foreach("trabalhos.csv", csv_options) do |row|
	categoria = trabalhos [ row[0] ] || []
	categoria << row
	trabalhos [row[0]] = categoria
end

equipes = {}
CSV.foreach("equipe.csv", csv_options) do |row|
	categoria = equipes [ row[0] ] || []
	categoria << row
	equipes [row[0]] = categoria
end

# log.error "Equipe: #{equipes.to_s}"


## create context object
## (key means var name, which may be string or symbol.)
context = {
  :trabalhos   => trabalhos,
  :equipes   => equipes,
  :evento   => CSV.read("evento.csv", csv_options),
}
## or
# context = Erubis::Context.new()
# context['val'] = 'Erubis Example'
# context[:list] = ['aaa', 'bbb', 'ccc'],

puts eruby.evaluate(context)         # get result
