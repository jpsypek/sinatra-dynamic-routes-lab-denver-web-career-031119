require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @name = params[:name].reverse
    "#{@name}"
  end

  get "/square/:number" do
    @number_square = params[:number].to_i * params[:number].to_i
    "#{@number_square}"
  end

  get "/say/:number/:phrase" do
    answer = ''
    params[:number].to_i.times do
      answer += params[:phrase]
    end
    answer
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    value = nil
    case params[:operation]
    when "add"
      value = params[:number1].to_i + params[:number2].to_i
    when "subtract"
      value = params[:number1].to_i - params[:number2].to_i
    when "multiply"
      value = params[:number1].to_i * params[:number2].to_i
    when "divide"
      value = params[:number1].to_i / params[:number2].to_i
    end
    "#{value}"
  end
end
