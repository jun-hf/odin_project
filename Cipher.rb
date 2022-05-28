class Cipher
    def self.decode(str, k)
        str_arr = str.split("")

        mod_arr = str_arr.collect { |a|
            str_ord = a.ord + k

            if str_ord < 'a'.ord and str_ord > "Z".ord
                str_ord = str_ord + "z".ord - "a".ord
            elsif str_ord < "A".ord
                str_ord = str_ord + "Z".ord - "A".ord
            end

            str_ord.chr
        }

        return mod_arr.join("").gsub! 
    end 
end

Cipher.decode("a", -1)