require 'sinatra'

get '/' do
  people = ["Elena", "Andrew", "Aaron", "Ian", "Panteha", "Spencer"]
  people += ["Roland"] * rand(1..10)
  "Next up is: #{people.sample}! (chance of Rolands: #{ ((people.select {|person| person == "Roland" }.count.to_f / people.count) * 100).to_i }%)"
end
