Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'home#index'

  get '/industry/agritech', to: 'home#agritech', as: 'agritech'
  get '/award-and-association', to: 'home#award_and_association', as: 'award_and_association'
  get '/blogs', to: 'home#blog', as: 'blog'
  get '/blog_detail', to: 'home#blog_detail'
  get '/career', to: 'home#careers', as: 'careers'
  get '/case-studies', to: 'home#case_studies', as: 'case_studies'
  get '/case_study_details', to: 'home#case_study_details'
  get '/contact-us', to: 'home#contact_us', as: 'contact_us'
  get '/services/hire-dedicated-developers', to: 'home#dedicated_developers', as: 'dedicated_developers'
  get '/industry/education', to: 'home#edtech', as: 'edtech'
  get '/industry/entertainment', to: 'home#entertainment', as: 'entertainment'
  get '/events', to: 'home#events'
  get '/industry/fintech', to: 'home#fintech', as: 'fintech'
  get '/industry/food', to: 'home#food', as: 'food'
  get '/gallery', to: 'home#gallery'
  get '/industry/healthcare', to: 'home#healthcare', as: 'healthcare'
  get '/industry/logistics', to: 'home#logistics_and_travel', as: 'logistics_and_travel'
  get '/services/mobile-application-development-company', to: 'home#mobile_app_development', as: 'mobile_app_development'
  get '/services/mvp-development-company', to: 'home#mvp_development', as: 'mvp_development'
  get '/protonshub-portfolio', to: 'home#portfolio', as: 'portfolio'
  get '/portfolio_detail', to: 'home#portfolio_detail'
  get '/press-release', to: 'home#press_release', as: 'press_release'
  get '/press_release_detail', to: 'home#press_release_detail'
  get '/services/product-development-company', to: 'home#product_development', as: 'product_development'
  get '/services/ui-ux-design-company', to: 'home#ui_ux_development', as: 'ui_ux_development'
  get '/videos', to: 'home#videos'
  get '/services/website-development-company', to: 'home#web_development', as: 'web_development'
  get '/webainrs_podcast', to: 'home#webainrs_podcast'
  get '/who-we-are', to: 'home#who_we_are', as: 'who_we_are'
  get '/terms_policy', to: 'home#terms_policy'
  get '/sitemap', to: 'home#sitemap'
  
  get '/technogies/mean-stack-development', to: 'home#mean_stack', as: 'mean_stack'
  get '/technogies/mern-stack-development', to: 'home#mern_stack', as: 'mern_stack'
  get '/technogies/react-js-development', to: 'home#react_js', as: 'react_js'
  get '/technogies/hire-react-native-mobile-app-developers', to: 'home#react_native', as: 'react_native'
  get '/technogies/node-js-development-company', to: 'home#node_js', as: 'node_js'
  get '/technogies/python-development', to: 'home#python', as: 'python'
  get '/technogies/ruby-on-rails-development', to: 'home#ror', as: 'ror'

  get '/thank_you', to: 'home#thank_you'

  resources :projects, only: :create
  resources :developers, only: :create
  resources :partners, only: :create
  resources :newsletters, only: :create


  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
  match "/422", to: "errors#unprocessable_entity", via: :all
end
