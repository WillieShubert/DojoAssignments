class BankAccount

	@@no_of_accounts = 0
	attr_accessor :name
	attr_reader :checking, :savings

	def initialize (name)
		@name = name
		@checking = 0
		@savings = 0
		@@no_of_accounts+= 1
		@interest_rate = 0.01
		generate_acc_num
		puts "Created account #{@@no_of_accounts}"
	end

# BankAccount should have a method that returns the user's checking account balance

	def check_saving
  		puts "Looking up savings!"
  		puts self.savings
  		self
  	end

  	def deposit_saving(num)
  		puts "Addng to savings #{num}!"
  		@savings += num
  		self
  	end

  	def withdraw_saving(num)
  		puts "Withdrawing from savings #{num}!"
  		@savings -= num
  		self
  	end

  	def check_checking
  		puts "Looking up checking!"
  		puts self.checking
  		self
  	end

  	def deposit_checking(num)
  		puts "Addng to checking #{num}!"
  		@checking += num
  		self
  	end

  	def withdraw_checking(num)
  		if num > @checking
  			raise "Insufficent Funds"
  			self
  		else
	  		@checking -= num
	  		puts "Withdrawing from checking #{num}!"
  			self
		  end
  	end

    def total_balance
		  "#{@savings+@checking}"
    end

  	def account_information
			puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
			puts "Account Holder: #{@name}"
    	puts "Accunt Number: #{@account_num}"
    	puts "Checking Balance: #{@checking}"
    	puts "Saving Balance: #{@savings}"
    	puts "Total Balance: #{@savings+@checking}"
    	puts "Interest Rate: #{@interest_rate}%"
			puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  	end

  	def account_manager
  		puts "The bank has #{@@no_of_accounts} accounts open"
  	end

private
  	def generate_acc_num
  		@account_num = rand(10000000-1000000)+1000000
  	end
end


carlos = BankAccount.new("Carlos")

# carlos.deposit_saving(1000).deposit_checking(1000).account_information
# carlos.withdraw_checking(5000)
#
# willie = BankAccount.new("Willie")
# willie.deposit_checking(1_000_000_000).account_information
# willie.total_balance
# willie.account_manager
