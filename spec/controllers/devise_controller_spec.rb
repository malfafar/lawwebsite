# RSpec.describe Devise::RegistrationsController, type: :controller do
#
#   let(:member_attributes) {
#     {
#       email: Faker::Internet.email,
#       password: "password",
#       name: Faker::Name.name,
#       password_confirmation: "password",
#       admin: false,
#       naturality: "Portuguese",
#       residence: "Rua Alberto Figueiras",
#       office: "Coimbra",
#       location_class: "Boa",
#       personal_class: "Supervisor",
#       practice_level: "Baixo",
#       phone: "+351-000000000"
#     }
#   }
#
#   describe 'Register' do
#
#     context 'with valid params' do
#       it 'adds new member' do
#         expect {
#           post :create, {:member => member_attributes}
#         }.to change(Member, :count).by(1)
#       end
#
#       it 'defaults role to 0' do
#         post :create, {:member => member_attributes}
#         expect(assigns(:member).role).to eq(0)
#       end
#     end
#   end
#
#
#   describe 'Edit' do
#
#     let(:new_attributes) {
#       {
#         name: Faker::Name.name
#       }
#     }
#
#     context 'with valid params' do
#       it 'changes the member informations' do
#         member = Member.create! member_attributes
#         put :update, {:id => member.to_param, :member => new_attributes}
#         member.reload
#         expect(member.name).to eq(new_attributes[:name])
#       end
#     end
#   end
# end
