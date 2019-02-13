class Array

    def my_uniq
        uniq = {}
        self.each do |ele|
            uniq[ele] = true 
        end
        uniq.keys
    end

    def two_sum
        arr = []
        self[0..length-1].each_with_index do |ele1, i|
            self[0..length-1].each_with_index do |ele2, j|
                if ele1 + ele2 == 0 && j > i
                    arr << [i, j]
                end
            end
        end
        arr
    end

end

def my_transpose(arr)
   new_arr = Array.new(arr.length) {Array.new(arr.length)}
     arr.each_with_index do |row, i|
        row.each_with_index do |ele, j|
            new_arr[j][i] = arr[i][j]
        end
    end
    new_arr 
end

def stock_picker(arr)
    highest = 0
    highest_idx = nil
    arr.each_with_index do |ele, i|
        arr.each_with_index do |ele_2, j|
            if j > i && ele_2- ele > highest
                highest = ele_2 - ele 
                highest_idx = [i,j]
            end

        end
    end
    highest_idx
end

class Towers
    attr_reader :arr1, :arr2, :arr3
    $arrs = {1 => @arr1, 2 => @arr2, 3 => @arr3}

    def initialize(n)
        @arr1 = (1..n).to_a.reverse
        @arr2 = []
        @arr3 = []
        
    end
    
    def valid_move?(start_pos, end_pos)
        if $arrs[start_pos].empty? 
            return false
        end
        
        if !$arrs[end_pos].empty? && $arrs[end_pos].last < $arrs[start_pos].last
            return false
        end
        true
    end

end
