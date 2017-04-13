require_relative 'bankaccount'
RSpec.describe BankAccount do
	before(:each) do
		@account = BankAccount.new("Account1")
	end

	it "can't initialize without name" do
    	expect{BankAccount.new}.to raise_error(ArgumentError)
  end

	it 'shows checking account balance' do
		expect(@account.checking).to eq(0)
	end

	it 'shows the total balance info' do
		expect(@account.checking).to eq(0)
	end

	context "has money" do
     it "can withdraw" do
			 		@account.deposit_checking(100).deposit_saving(1000)
					expect(@account.total_balance.to_i).to be > 0
			end
		end
		context "has no money" do
			it "denied withdraw" do
				expect {@account.withdraw_checking(100)}.to raise_error("Insufficent Funds")
				# expect(player.total_balance).to be = 0
			end
		end
end
