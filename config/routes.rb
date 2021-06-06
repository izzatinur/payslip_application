Rails.application.routes.draw do
  resources :tax_rates
  get 'payslip/index'
  resources :employees
  #get 'home/index'
  get 'home/about'
  root 'home#index'
  get '/payslip',          to: 'payslip#index',           as: :payslips
  post '/payslip/multiple', to: 'payslip#show_multiple',  as: :payslips_multiple
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
