RSpec.describe Benefit, type: :model do
  it { should belong_to(:category) }
  it { should have_many(:protocols) }
end

RSpec.describe Protocol, type: :model do
  it { should belong_to(:benefit) }
end

RSpec.describe Category, type: :model do
  it { should have_many(:benefits) }
end
