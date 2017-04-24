Rails.application.routes.draw do
  get("/flexible/square/:num",  {:controller => "calculations", :action => "flex_square_5"})
  get("/flexible/square_root/:num",  {:controller => "calculations", :action => "flex_square_root_5"})
  get("/flexible/random/:min/:max", {:controller => "calculations", :action => "flex_random"})
  get("/flexible/payment/:basis_points/:number_of_years/:present_value", {:controller => "calculations", :action => "flex_payment"})




  get("/square/new", {:controller => "calculations", :action => "square_form"})
  get("/square/results", {:controller => "calculations", :action => "square"})
  get("/square_root/new", {:controller => "calculations", :action => "square_root_form"})
  get("/square_root/results", {:controller => "calculations", :action => "square_root"})
  get("/payment/new", {:controller => "calculations", :action => "payment_form"})
  get("/payment/results", {:controller => "calculations", :action => "payment"})

end
