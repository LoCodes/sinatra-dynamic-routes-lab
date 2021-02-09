require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    @reversename = params[:name].reverse 
    "#{@reversename}"
    # params[:name].reverse   or just this line of code
  end 

  get '/square/:number' do 
    @squared = params[:number].to_i ** 2
    "#{@squared}"
  end 

  get '/say/:number/:phrase' do
    result = ''
    params[:number].to_i.times do
      result += params[:phrase]
    end
    result
  end 

  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end 

  get  '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]

    if @operation == "add"
      "#{@number1 + @number2}"
    elsif @operation == "subtract"
      "#{@number1 - @number2}"
    elsif @operation == "multiply"
      "#{@number1 * @number2}"
    else "divide"
      "#{@number1 / @number2}"
    end 
  end 
end