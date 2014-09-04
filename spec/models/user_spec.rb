describe User do

  before(:each) { @user = User.new(email: 'user@example.com', name: 'Bill') }

  subject { @user }

  it { should respond_to(:email) }

  it "#email returns a string" do
    expect(@user.email).to match 'user@example.com'
  end

  it "#name returns a string" do
    expect(@user.name).to match 'Bill'
  end

end
