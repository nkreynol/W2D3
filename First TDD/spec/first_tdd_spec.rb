require 'rspec'
require 'first_tdd'

describe Array do 
    context '#my_uniq' do
    it 'should return an array with only unique elements' do
        expect([1,2,3,2,1].my_uniq).to eq([1,2,3])
    end

    end
    context '#two_sum' do 
        it 'should return all pairs of indices sorted smallest to largest where the elements at those positions equals zero' do
            expect([-1, 0, 2, -2, 1].two_sum).to eq([[0,4], [2,3]])
        end
    end
end

describe "#my_transpose" do 
    it "should accept a 2D array with same length and width. should return a 2D array with rows and column swapped." do
        rows = [
                [0, 1, 2],
                [3, 4, 5],
                [6, 7, 8] ]
   expect(my_transpose(rows)).to eq([
                                        [0, 3, 6],
                                        [1, 4, 7],
                                        [2, 5, 8]
                                    ])
    end   

end

describe "#stock_picker" do
    it "should take in an array of stock prices, and output the most profitable pair of days to buy then sell the stock." do 
        expect(stock_picker([1,3,0,2,5])).to eq([2,4])
    end
end

describe Towers do
    subject(:towers) do 
        Towers.new(3)
    end

    describe "#initialize" do
        it "should initialize three arrays. the first array has n elements, the other two are empty." do
            expect(towers.arr1.length).to eq(3)
            expect(towers.arr2.length).to eq(0)
            expect(towers.arr3.length).to eq(0)
        end

end


    describe "#move" do 
        it "should accept a start and end position and call #valid_move? method" do
            expect(towers).to receive(:valid_move?)
            towers.move(1,2)
        end

    end

    describe "valid_move?" do
        context "These will return false" do
            it "should return false if there are nothing inside the starting array." do 
                expect(towers.valid_move?(2,3)).to be false
            end
            # it "should return false if want to put a bigger disc on a smaller one" do
            #     towers.move(1,2)
            #     expect(towers.valid_move?(1,2)).to be false
            # end
        end
        context "These will return true" do
            it "should return true if you move a disk into an empty array" do 
                expect(towers.valid_move?(1,2)).to be true
            end
        end
    end
end 