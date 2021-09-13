# 1000 = M   
# 500 = D    100 = C    
# 50 = L     10 = X
# 5 = V      4 = IV   1 = I
#[IVXLCDM]      /\A  *\z/

# When "" * number, add number to string?

#put string 




def fromRoman(romanNumber)
    # Replace the following line with the actual code!
    converted = 0;
    roman_nums = Hash["M" => 1000, 
        "D" => 500, "C" => 100, 
        "L" => 50, "X" => 10, 
        "V" => 5, "IV" => 4, "I" => 1];
    if romanNumber =~ /\A[IVXLCDM]*\z/
        raise TypeError
    end #not else??
        romanNumber.chars do |x, y|
            converted = converted + roman_nums[y]
        end;
    converted;
end;

def toRoman(arabicNumber)
    # Replace the following line with the actual code!
    converted = "";
    roman_nums = Hash["M" => 1000, 
        "D" => 500, "C" => 100, 
        "L" => 50, "X" => 10, 
        "V" => 5, "IV" => 4, "I" => 1];
    if(arabicNumber < 1 || arabicNumber > 3999)
        raise RangeError
    end; #not else?
        roman_nums.each do |r, a|
            converted << a * (arabicNumber / r); 
            arabicNumber = arabicNumber % r;
        end;
    converted; #like a return
end;