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
            expect { my_uniq([1,2,[1,2,3]]) }.to_not raise_error
        end
        it "should compare data types correctly" do
            expect(my_uniq([1,2,[1,2,3], [1,2,3], "hello", "hello"])).to eq([1,2,[1,2,3], "hello"])
        end
    end
end

describe "Array#two_sum" do
    context "when passed an array were no two elements sum to zero" do
        it "should return an empty array" do
            expect([2,2,4,5].two_sum).to eq([])
        end
    end

    context "when passed an array with elements that are not numbers" do
        it "should raise an error" do
            expect { ["hi", "no"].two_sum }.to raise_error("Invalid arguments")
        end
    end

    context "when at least one pair of elements sum to zero" do
        it "should an array of indices of each pair" do
            expect([-2, 2].two_sum).to eq([[0, 1]])
        end
    end
    
end