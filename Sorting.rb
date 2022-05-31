class Sorting
    attr_accessor :arr
    def initialize(arr)
        @arr = arr
    end

    def bubble_sort
        return arr if arr.length == 1

        time = arr.length 
        time -= 1

        loop do 
            swapped = false

            for i in 0...time
                if arr[i] > arr[i+1]
                    arr[i], arr[i+1] = arr[i+1], arr[i]
                    swapped = true
                end
            end
            break unless swapped
        end
        arr
    end
end