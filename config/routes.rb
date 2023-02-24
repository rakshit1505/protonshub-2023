Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'home#index'

  get '/agritech', to: 'home#agritech'
  get '/award_and_association', to: 'home#award_and_association'
  get '/blog', to: 'home#blog'
  get '/blog_detail', to: 'home#blog_detail'
  get '/careers', to: 'home#careers'
  get '/case_studies', to: 'home#case_studies'
  get '/case_study_details', to: 'home#case_study_details'
  get '/contact_us', to: 'home#contact_us'
  get '/dedicated_developers', to: 'home#dedicated_developers'
  get '/edtech', to: 'home#edtech'
  get '/entertainment', to: 'home#entertainment'
  get '/events', to: 'home#events'
  get '/fintech', to: 'home#fintech'
  get '/food', to: 'home#food'
  get '/gallery', to: 'home#gallery'
  get '/healthcare', to: 'home#healthcare'
  get '/logistics_and_travel', to: 'home#logistics_and_travel'
  get '/mobile_app_development', to: 'home#mobile_app_development'
  get '/mvp_development', to: 'home#mvp_development'
  get '/portfolio', to: 'home#portfolio'
  get '/portfolio_detail', to: 'home#portfolio_detail'
  get '/press_release', to: 'home#press_release'
  get '/press_release_detail', to: 'home#press_release_detail'
  get '/product_development', to: 'home#product_development'
  get '/ui_ux_development', to: 'home#ui_ux_development'
  get '/videos', to: 'home#videos'
  get '/web_development', to: 'home#web_development'
  get '/webainrs_podcast', to: 'home#webainrs_podcast'
  get '/who_we_are', to: 'home#who_we_are'
  get '/terms_policy', to: 'home#terms_policy'
  get '/sitemap', to: 'home#sitemap'
  get '/mean_stack', to: 'home#mean_stack'
  get '/mern_stack', to: 'home#mern_stack'
  get '/react_js', to: 'home#react_js'
  get '/react_native', to: 'home#react_native'
  get '/node_js', to: 'home#node_js'
  get '/python', to: 'home#python'
  get '/ror', to: 'home#ror'
  get '/thank_you', to: 'home#thank_you'

  resources :projects, only: :create
  resources :developers, only: :create
  resources :partners, only: :create
end
