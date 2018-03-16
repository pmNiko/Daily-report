martinUser = User.new(
  :email                 => "martin.paneblanco@cotesma.com",
  :password              => "123456",
  :password_confirmation => "123456"
)
martinUser.save!

damiUser = User.new(
  :email                 => "damian.desimini@cotesma.com",
  :password              => "123456",
  :password_confirmation => "123456"
)
damiUser.save!

maxiUser = User.new(
  :email                 => "maximiliano.avila@cotesma.com",
  :password              => "123456",
  :password_confirmation => "123456"
)
maxiUser.save!

darioUser = User.new(
  :email                 => "dario.dinapoli@cotesma.com",
  :password              => "123456",
  :password_confirmation => "123456"
)
darioUser.save!

marcosUser = User.new(
  :email                 => "marcos.olate@cotesma.com",
  :password              => "123456",
  :password_confirmation => "123456"
)
marcosUser.save!

guilleUser = User.new(
  :email                 => "guille.cabrera@cotesma.com",
  :password              => "123456",
  :password_confirmation => "123456"
)
guilleUser.save!

santiUser = User.new(
  :email                 => "santiago.thomas@cotesma.com",
  :password              => "123456",
  :password_confirmation => "123456"
)
santiUser.save!

juabaUser = User.new(
  :email                 => "juan.cardenas@cotesma.com",
  :password              => "123456",
  :password_confirmation => "123456"
)
juabaUser.save!

luisUser = User.new(
  :email                 => "luis.savedra@cotesma.com",
  :password              => "123456",
  :password_confirmation => "123456"
)
luisUser.save!

gasparUser = User.new(
  :email                 => "gaspar.sierra@cotesma.com",
  :password              => "123456",
  :password_confirmation => "123456"
)
gasparUser.save!

hugoUser = User.new(
  :email                 => "hugo.perez@cotesma.com",
  :password              => "123456",
  :password_confirmation => "123456"
)
hugoUser.save!

leoUser = User.new(
  :email                 => "leonardo.gaias@cotesma.com",
  :password              => "123456",
  :password_confirmation => "123456"
)
leoUser.save!

pabloUser = User.new(
  :email                 => "pablo.ferreri@cotesma.com",
  :password              => "123456",
  :password_confirmation => "123456"
)
pabloUser.save!


claim_1 = Claim.new({
  ticket: 204666,
  client: "sma_9087",
  truck: 22,
  :users => [marcosUser]
  })
claim_1.save!

claim_2 = Claim.new({
  ticket: 205666,
  client: "sma_1111",
  truck: 26,
  :users => [guilleUser]
  })
claim_2.save!

4.times do |n|
  Claim.create!({
    :users => [martinUser, damiUser],
    ticket: "#{n}#{n+1}#{n+2}#{n+3}#{n+4}#{n+5}",
    client: "sma_#{n}#{n+2}#{n+3}#{n+4}",
    truck: 21
  });
end

4.times do |n|
  Claim.create!({
    :users => [maxiUser, darioUser],
    ticket: "#{n+4}#{n+3}#{n+2}#{n+1}#{n}#{n+1}",
    client: "sma_#{n}#{n+2}#{n+3}#{n+4}",
    truck: 23
  });
end

3.times do |n|
  Claim.create!({
    :users => [martinUser, damiUser],
    ticket: "#{n+5}#{n+6}#{n+7}#{n+8}#{n+9}#{n}",
    client: "sma_#{n}#{n+2}#{n+3}#{n+4}",
    truck: 21
  });
end

3.times do |n|
  Claim.create!({
    :users => [maxiUser, darioUser],
    ticket: "#{n+7}#{n+6}#{n+7}#{n+8}#{n+9}#{n}",
    client: "sma_#{n+7}#{n+8}#{n+9}#{n+2}",
    truck: 23
  });
end
