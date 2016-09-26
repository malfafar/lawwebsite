require 'rails_helper'


RSpec.describe About, type: :model do
  it { should validate_presence_of :objectives }
  it { should validate_presence_of :statutes }
  it { should validate_presence_of :social_bodies }
  it { should validate_presence_of :message }
end

RSpec.describe Benefit, type: :model do
  it { should validate_presence_of :title }
  it { should validate_presence_of :description }
end

RSpec.describe Category, type: :model do
  it { should validate_presence_of :name }
end

RSpec.describe Job, type: :model do
  it { should validate_presence_of :name }
end

RSpec.describe Member, type: :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :naturality }
  it { should validate_presence_of :birthday }
  it { should validate_presence_of :residence }
  it { should validate_presence_of :office }
  it { should validate_presence_of :office_address }
  it { should validate_presence_of :office_zipcode }
  it { should validate_presence_of :location_class }
  it { should validate_presence_of :personal_class }
  it { should validate_presence_of :practice_level }
end

RSpec.describe Partner, type: :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :url }
end

RSpec.describe Post, type: :model do
  it { should validate_presence_of :title }
end

RSpec.describe Protocol, type: :model do
  it { should validate_presence_of :name }
end
