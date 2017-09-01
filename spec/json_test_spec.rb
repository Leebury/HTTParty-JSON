require 'json'
require 'rspec'

describe "Json parsing test" do

##This allows ruby to read JSON files by putting them into hashes that ruby can edit
##The File.read just finds the location of the json data file.
file = JSON.parse(File.read('httpmry/spec/json_data.json'))


file = HTTParty.get()

##Checking if the parse has worked to convert the file to be a hash
	it "Should be a hash" do
		expect(file.class).to eq Hash
	end

	it "Should contain base as EUR" do
		expect(file("base")).to eq "EUR"

	end

	it "Should have a date string" do
		expect(file("date")).to be_kind_of(String)
	end
##Putting the keys and values into a .each loop the @ allows the loop to access them
	it "should contain 31 rates" do
		@key_num = 0
		@value_num = 0

		file("rates").each do (key,value)
			@key_num += 1
			@value_num += 1
		end

	end

end