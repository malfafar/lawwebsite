require 'rails_helper'

RSpec.describe Member, type: :model do

  let(:admin_attributes) {
    {
      email: Faker::Internet.email,
      password: "password",
      password_confirmation: "password",
      name: Faker::Name.name,
      naturality: "Portuguese",
      residence: "Rua Alberto Figueiras",
      office_address: "Rua Tudo e tal",
      office_zipcode: "1234-444",
      office: "Coimbra",
      location_class: "Boa",
      personal_class: "Supervisor",
      practice_level: "Baixo",
      role: 2,
      phone: "+351-000000000"
    }
  }



  let(:member_attributes) {
    {
      email: Faker::Internet.email,
      password: "password",
      name: Faker::Name.name,
      password_confirmation: "password",
      naturality: "Portuguese",
      residence: "Rua Alberto Figueiras",
      office: "Coimbra",
      office_address: "Rua Tudo e tal",
      office_zipcode: "1234-444",
      location_class: "Boa",
      personal_class: "Supervisor",
      practice_level: "Baixo",
      role: 0,
      phone: "+351-000000000"
    }
  }


  context 'is admin' do
    it 'is_admin? returns true' do
      member = Member.create! admin_attributes
      expect(member.is_admin?).to eq(true)
    end
  end


  context 'is not admin' do
    it 'is_admin? returns false' do
      member = Member.create! member_attributes
      expect(member.is_admin?).to eq(false)
    end
  end
end
