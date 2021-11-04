
def caesar_cipher (string, shift)
    ciphered_string = ""
    string.each_char do |char|
        char = translate_to_cipher(char, shift)
        ciphered_string += char
    end
    return ciphered_string
end

def translate_to_cipher (char, shift)
    ascii_code = char.ord
    if is_capital_letter?(ascii_code) == true
        char = cipher_shift_capital(ascii_code, shift)
    elsif is_lower_case_letter?(ascii_code) == true
        char = cipher_shit_lower(ascii_code, shift)
    end
    return char
end
    
def is_capital_letter? (char)
    (char.ord >=65 && char.ord <=90)? true: false
end

def is_lower_case_letter? (char)
    (char.ord >=97 && char.ord <=122)? true: false
end




def cipher_shift_capital (char, shift)
    ciphered_ascii = char.ord
    #Is capital letter + shift still a capital letter?
    if is_capital_letter?((ciphered_ascii+ shift).chr) == true
        ciphered_ascii = char+ shift
    else
        shift_to_z = 90 - char
        ciphered_ascii= 64 + (shift - shift_to_z)
    end
    return ciphered_ascii.chr
end

def cipher_shit_lower (char, shift)
    ciphered_ascii = char.ord
    #Is letter + shift still a capital letter?
    if is_lower_case_letter?((ciphered_ascii+ shift).chr) == true
        ciphered_ascii = char+ shift
    else
        shift_to_z = 122 - char
        ciphered_ascii= 96 + (shift - shift_to_z)
    end
    return ciphered_ascii.chr
end




puts caesar_cipher("What a string!", 5)
