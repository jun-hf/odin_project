class SubString
    def self.substring(str, arr)
        result = Hash.new
        lowcase_str = str.lowcase

        arr.each { |word|
            matches = lowcase_str.scan(word).length
            result[word] = matches unless matches == 0
        }

        return result
    end
end