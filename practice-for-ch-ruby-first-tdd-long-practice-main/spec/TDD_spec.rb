require "rspec"
require_relative "../lib/TDD.rb"


describe "#my_uniq" do
    it "should accept an array as an arg" do
        expect { my_uniq([1,2,3]) }.to_not raise_error
    end

    context "when passed an object that is not an array" do
        it "should raise an error" do
            expect { my_uniq("hello") }.to raise_error("Invalid argument")
        end
    end

    context "when all elements are already unique" do
        it "should return identical array" do
            expect(my_uniq([1,2,3])).to eq([1,2,3])
        end
    end

    context "when passed multiple data types" do
        it "should not raise an error" do
            expect { my_uniq([1,2,[1,2,3]]) }.to_not receive_error
        end
        it "should compare data types correctly" do
            expect { my_uniq([1,2,[1,2,3], [1,2,3], "hello", "hello", 
            {"goodbye": 1}, {"goodbye": 1}])}.to eq([1,2,[1,2,3], "hello",  {"goodbye": 1}])
        end
    end
end