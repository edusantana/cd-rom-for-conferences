require 'csv'
require 'erubis'

input = STDIN.read
eruby = Erubis::Eruby.new(input)      # create Eruby object


csv_options = {:headers => true, :col_sep => "\t", :encoding => 'UTF-8'}

## create context object
## (key means var name, which may be string or symbol.)
context = {
  :t   => CSV.read("trabalhos.csv", csv_options),
  'list' => ['aaa', 'bbb', 'ccc'],
}
## or
# context = Erubis::Context.new()
# context['val'] = 'Erubis Example'
# context[:list] = ['aaa', 'bbb', 'ccc'],

puts eruby.evaluate(context)         # get result
