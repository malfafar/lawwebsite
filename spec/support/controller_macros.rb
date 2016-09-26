module ControllerMacros

  FactoryGirl.define do
    factory :member do
      email { Faker::Internet.email }
      password "password"
      name Faker::Name.name
      password_confirmation "password"
      naturality "Portuguese"
      residence "Rua Alberto Figueiras"
      office "Coimbra"
      office_address "Rua e coiso e tal"
      office_zipcode "1234-444"
      location_class "Boa"
      personal_class "Supervisor"
      practice_level "Baixo"
      phone "+351-000000000"
      role  0
    end

    # factory :admin do
    #   email { Faker::Internet.email }
    #   password "password"
    #   password_confirmation "password"
    #   name { Faker::Name.name }
    #   naturality "Portuguese"
    #   residence "Rua Alberto Figueiras"
    #   office "Coimbra"
    #   location_class "Boa"
    #   personal_class "Supervisor"
    #   practice_level "Baixo"
    #   role 2
    #   phone "+351-000000000"
    #
    #   #confirmed_at Date.today
    # end

    factory :admin_user, :parent => :member do
      email { Faker::Internet.email }
      password "password"
      name Faker::Name.name
      password_confirmation "password"
      naturality "Portuguese"
      residence "Rua Alberto Figueiras"
      office "Coimbra"
      office_address "Rua e coiso e tal"
      office_zipcode "1234-444"
      location_class "Boa"
      personal_class "Supervisor"
      practice_level "Baixo"
      phone "+351-000000000"
      role  2
    end
  end



  def login_member
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:member]
      member = FactoryGirl.create(:member)
      sign_in member # Using factory girl as an example
    end
  end

  def login_admin
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:member]
      admin_user = FactoryGirl.create(:admin_user)
      #player_auth.confirm! # or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
      sign_in admin_user
    end
  end



end
