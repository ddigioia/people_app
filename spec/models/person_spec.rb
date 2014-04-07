require 'spec_helper'

describe Person do

	subject(:person){Person.create(first_name: "jerry", last_name: "rice", birth_date: '1970-01-01', drinks: 0, img_url: "http://www.biography.com/imported/images/Biography/Images/Profiles/R/Jerry-Rice-40545-1-402.jpg", license: true)}
	subject(:person2){Person.create(first_name: "cherry", last_name: "soda", birth_date: '1998-01-01', drinks: 0, img_url: "http://www.biography.com/imported/images/Biography/Images/Profiles/R/Jerry-Rice-40545-1-402.jpg", license: true)}



	describe "#name" do
		it 'should have a full name' do
			expect(person.name).to eq("jerry rice")
		end
	end

	# describe "#last_name" do
	# 	it 'should have a last name' do
	# 		expect(person.last_name).to eq "rice"
	# 	end
	# end

	describe "#birth_date_string" do
		it "should have a birthday" do
			expect(person.birth_date.to_s).to eq('1970-01-01')
		end
	end

	describe "#have_a_drink" do
		it "should add a drink to persons drinks attribute if they are over 21" do
			person.have_a_drink
			expect(person.drinks).to eq(1)
		end

		it "should return the string 'Wait a few years' if person is under 21" do
			expect(person2.have_a_drink).to eq("Wait a few years")
		end

		it "should return the string 'Go home you're drunk' if they have more than 3 drinks" do
			# 3.times.(person.have_a_drink)
			person.have_a_drink
			person.have_a_drink
			person.have_a_drink
			expect(person.have_a_drink).to eq("Go home you're drunk")
		end

	end

	describe "#drive_a_car" do
		it "should prevent anyone under 18 from driving" do
			expect(person2.drive_a_car).to eq("Not yet youngin")
		end

		it "should allow anyone 18 years or older to drive" do
			expect(person.drive_a_car).to eq(true)
		end

		it "should prevent any eligible driver whose is drunk from driving" do
			person.have_a_drink
			person.have_a_drink
			person.have_a_drink
			expect(person.drive_a_car).to eq("Looks like a cab for you tonight")
		end
	end
end














# 	its(:first_name) 	{should_not == nil}
# 	its(:last_name) 	{should_not == nil}
# 	its(:image_url)		{should_not == nil}
# 	its(:drinks)		{should be_true}
# 	its(:license)		{should_not == nil}

#undefined method its?