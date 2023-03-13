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
  
  get '/technologies/mean-stack-development', to: 'home#mean_stack', as: 'mean_stack'
  get '/technologies/mern-stack-development', to: 'home#mern_stack', as: 'mern_stack'
  get '/technologies/react-js-development', to: 'home#react_js', as: 'react_js'
  get '/technologies/hire-react-native-mobile-app-developers', to: 'home#react_native', as: 'react_native'
  get '/technologies/node-js-development-company', to: 'home#node_js', as: 'node_js'
  get '/technologies/python-development', to: 'home#python', as: 'python'
  get '/technologies/ruby-on-rails-development', to: 'home#ror', as: 'ror'

  get 'blogs/web-development-trends-of-2023', to: 'home#web_development_trends_of_2023', as: 'web_development_trends_of_2023'
  get 'blogs/why-you-should-hire-a-dedicated-remote-developer-in-2023', to: 'home#why_you_should_hire_a_dedicated_remote_developer_in_2023', as: 'why_you_should_hire_a_dedicated_remote_developer_in_2023'
  get 'blogs/how-to-find-the-right-mvp-developer-for-your-startup-idea', to: 'home#how_to_find_the_right_mvp_developer_for_your_startup_idea', as: 'how_to_find_the_right_mvp_developer_for_your_startup_idea'
  get 'blogs/how-technology-is-transforming-the-logistics-business', to: 'home#how_technology_is_transforming_the_logistics_business', as: 'how_technology_is_transforming_the_logistics_business'
  get 'blogs/healthcare-mobile-app-revenue-tips-8-ways-to-grow-your-business', to: 'home#healthcare_mobile_app_revenue_tips_8_ways_to_grow_your_business', as: 'healthcare_mobile_app_revenue_tips_8_ways_to_grow_your_business'
  get 'blogs/impact-of-technology-and-automation-on-education', to: 'home#impact_of_technology_and_automation_on_education', as: 'impact_of_technology_and_automation_on_education'
  get 'blogs/top-mobile-app-ideas-for-restaurant-and-food-industry', to: 'home#top_mobile_app_ideas_for_restaurant_and_food_industry', as: 'top_mobile_app_ideas_for_restaurant_and_food_industry'
  get 'blogs/how-agile-technology-benefits-software-development', to: 'home#how_agile_technology_benefits_software_development', as: 'how_agile_technology_benefits_software_development'
  get 'blogs/tools-a-react-developer-should-know-in-2022', to: 'home#tools_a_react_developer_should_know_in_2022', as: 'tools_a_react_developer_should_know_in_2022'
  get 'blogs/the-ultimate-guide-to-mobile-application-development-2022', to: 'home#the_ultimate_guide_to_mobile_application_development_2022', as: 'the_ultimate_guide_to_mobile_application_development_2022'
  get 'blogs/trending-ui-ux-design', to: 'home#trending_ui_ux_design', as: 'trending_ui_ux_design'
  get 'blogs/multi-tenant-architecture', to: 'home#multi_tenant_architecture', as: 'multi_tenant_architecture'
  get 'blogs/hire-remote-developer', to: 'home#hire_remote_developer', as: 'hire_remote_developer'
  get 'blogs/micro-service', to: 'home#micro_service', as: 'micro_service'
  get 'blogs/content-system', to: 'home#content_system', as: 'content_system'
  get 'blogs/react-mobile-app', to: 'home#react_mobile_app', as: 'react_mobile_app'
  get 'blogs/global-staffing', to: 'home#global_staffing', as: 'global_staffing'
  get 'blogs/outsourcing', to: 'home#outsourcing', as: 'outsourcing'

  get '/thank_you', to: 'home#thank_you'

  resources :projects, only: :create
  resources :developers, only: :create
  resources :partners, only: :create
  resources :newsletters, only: :create


  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
  match "/422", to: "errors#unprocessable_entity", via: :all
end
