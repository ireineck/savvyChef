require 'test_helper'

class SpecialTest < ActiveSupport::TestCase
  
  test "creates a valid record" do
    special = Special.new
    special.title = "Lorizzle ipsizzle"
    special.ingredients = "Lorizzle ipsizzle boofron go to hizzle amizzle, consectetizzle adipiscing mofo. Nullizzle sapizzle nizzle, my shizz volutpat, daahng dawg quizzle, bling bling vizzle, fo shizzle. Fo eget away. "
    special.instructions = "Vivamizzle nec mauris egizzle nisi break it down pretium. Vivamizzle sit amet lacizzle. Nizzle eu nisl eget lacizzle shut the shizzle up crackalackin. Praesent fo shizzle fo shizzle ipsum. Curabitizzle da bomb arcu. Shiznit enim mammasay mammasa mamma oo sa, auctizzle doggy, congue eu, away non, libero. Fo shizzle vitae uhuh ... yih! nizzle away posuere i'm in the shizzle. Quisque pede tortor, congue pulvinizzle, crackalackin a, mollis sizzle amet, erizzle. Fo shizzle my nizzle izzle dui. Crackalackin fo shizzle purizzle, dawg consectetizzle, pimpin' izzle, consequat imperdizzle, . Funky fresh a pimpin' eu rizzle rutrum vehicula. Curabitur you son of a bizzle bow wow wow ipsum. I saw beyonces tizzles and my pizzle went crizzle habitant morbi tristique pizzle et dope izzle yo mamma get down get down izzle turpizzle dawg. In est. Curabitur elementum. Pot eros felizzle, semper quizzle, suscipit izzle, rizzle pulvinizzle, nisl. Nulla sagittizzle gravida velit."
    assert special.save
    end

  test "should not save unless title is filled in" do
      special = Special.new
      assert !special.save # save should fail
      assert special.errors[:title].include?("Can't be blank")
  end


  
end
