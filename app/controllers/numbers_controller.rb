class NumbersController < ApplicationController
  def winners
    @zebra = Array.new

    5.times do
      giraffe = rand(1...100)
      
      @zebra.push(giraffe)
    end

    render({ :template => "lottery_stuff/woohoo.html.erb"})
  end 

  def losers
    @unlucky = Array.new

    5.times do
      number = rand(1...100)
      
      @unlucky.push(number)
    end

    render({ :template => "lottery_stuff/unluckyman.html.erb"})
  end 
end
