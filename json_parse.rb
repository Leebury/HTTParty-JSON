require 'json'
require 'rspec'

describe "Json parsing test" do

# file = JSON.parse(File.read('httpmry/json_data.json'))

file = JSON.parse(File.read('httpmry/json_data.json'))


	it "Should be a hash" do
		expect(file.class).to eq Hash
	end

	it "Should contain base as EUR" do
		expect(file("base")).to eq "EUR"

	end

	it "Should have a date string" do
		expect(file("date")).to be_kind_of(String)
	end

	it "should contain 31 rates" do
		@key_num = 0
		@value_num = 0

		file("rates").each do (key,value)
			@key_num += 1
			@value_num += 1
		end

end