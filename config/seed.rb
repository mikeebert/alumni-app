class Seed
  def self.users
    ["me", "you"].each do |name|
      user = User.new(:name => name, 
                      :email => "#{name}@test.com")
      Repository.for(:user).save(user)
    end
  end 
end
