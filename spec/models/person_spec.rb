require 'spec_helper'

describe Person do

	subject(:person){Person.create(first_name: "jerry", last_name: "rice", birth_date: '1970-01-01', drinks: 0, img_url: "http://www.biography.com/imported/images/Biography/Images/Profiles/R/Jerry-Rice-40545-1-402.jpg", license: true)}
	subject(:person2){Person.create(first_name: "cherry", last_name: "soda", birth_date: '1995-01-01', drinks: 0, img_url: "http://www.biography.com/imported/images/Biography/Images/Profiles/R/Jerry-Rice-40545-1-402.jpg", license: true)}

	describe "#first_name" do
		it 'should have a first name' do
			expect(person.first_name).to eq "jerry"
		end
	end

	describe "#last_name" do
		it 'should have a last name' do
			expect(person.last_name).to eq "rice"
		end
	end

	
end














# 	its(:first_name) 	{should_not == nil}
# 	its(:last_name) 	{should_not == nil}
# 	its(:image_url)		{should_not == nil}
# 	its(:drinks)		{should be_true}
# 	its(:license)		{should_not == nil}

#undefined method its?