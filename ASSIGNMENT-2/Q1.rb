Ruby Program – Basic Bank Account 
=============================================================================
class BankAccount
  attr_reader :balance

  def initialize
    @balance = 0.0
  end

  def add_balance(amount)
    if amount > 0
      @balance += amount
      puts "Deposited ₹#{amount}. Current balance: ₹#{@balance}"
    else
      puts "Error: Deposit amount must be positive."
    end
  end

  def withdraw(amount)
    if amount <= 0
      puts "Error: Withdrawal amount must be positive."
    elsif amount > @balance
      puts "Error: Insufficient funds."
    else
      @balance -= amount
      puts "Withdrew ₹#{amount}. Current balance: ₹#{@balance}"
    end
  end

  def check_balance
    puts "Your current balance is ₹#{@balance}"
  end
end

# --- Sample run ---
# acc = BankAccount.new
# acc.add_balance(1000)
# acc.withdraw(200)
# acc.check_balance
.
