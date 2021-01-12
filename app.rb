require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
        @name = params[:name].reverse
        "Hello #{@name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @number *= @number
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}"*@number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @string = params.map {|key, value| value}.join(" ")
    "#{@string}."
  end

  get '/:operation/:number1/:number2' do
    
    num1 = params["number1"].to_i
    num2 = params["number2"].to_i
    
    if params["operation"] == "add"
      @result = num1 + num2
    elsif
      params["operation"] == "subtract"
      @result = num1 - num2
    elsif 
      params["operation"] == "divide"
      @result = num1 / num2
    elsif
      params["operation"] == "multiply"
      @result = num1 * num2
    end
    "#{@result}"
  end


end