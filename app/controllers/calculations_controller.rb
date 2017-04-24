class CalculationsController < ApplicationController



  # Flexible Calculations

  def flex_square_5
    @user_number = params["num"].to_f
    @square = @user_number ** 2
    render("calculations/flex_square_5.html.erb")
  end

  def flex_square_root_5
    @user_number = params["num"].to_i
    @squareroot = Math.sqrt(@user_number)
    render("calculations/flex_square_root_5.html.erb")
  end

  def flex_random
    @user_number1 = params["min"].to_i
    @user_number2 = params["max"].to_i
    @random = rand(@user_number1..@user_number2)
    render("calculations/flex_random.html.erb")
  end

  def flex_payment
    @user_number1 = params["basis_points"].to_f/100
    rate_per_month = @user_number1/(12*100)
    @user_number2 = params["number_of_years"].to_i
    @user_number3 = params["present_value"].to_f
    neg_years = @user_number2*-1
    neg_periods = neg_years * 12
    @payment = (rate_per_month*@user_number3)/(1-(1+rate_per_month)**neg_periods)
    render("calculations/flex_payment.html.erb")
  end


  # Form Calcultions


  def square_form
    render("calculations/square_form.html.erb")
  end

  def square
    @user_number= params[:user_number].to_f
    @square = @user_number ** 2
    render("calculations/square/results.html.erb")
  end


  def square_root_form
    render ("calculations/square_root_form.html.erb")
  end

  def square_root
    @user_number = params[:user_number].to_f
    @square_root = Math.sqrt(@user_number)
    render("calculations/square_root/new.html.erb")
  end

  def payment_form
    render ("calculations/payment_form.html.erb")
  end

  def payment
    @apr = params[:user_number].to_f/100
    rate_per_month = @apr/(12*100)
    @years = params[:user_number].to_i
    @principal = params[:user_number].to_f
    neg_years = @years*-1
    neg_periods = neg_years * 12
    @payment = (rate_per_month*@principal)/(1-(1+rate_per_month)**neg_periods)
    render ("calculations/payment/new.html.erb")
  end



end
