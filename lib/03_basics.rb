def who_is_bigger a, b, c
    if a == nil || b == nil || c == nil
        return "nil detected"
    end
    if a > b && a > c
        return "a is bigger"
    elsif b > a && b > c
        return "b is bigger"
    elsif c > a && c > b
        return "c is bigger"
    end
end

def reverse_upcase_noLTA phrase
    phrase.reverse.upcase.gsub(/(L|T|A)/, '')
end

def array_42 tableau
    tableau.include? 42
end

def magic_array(tableau)
    return tableau.flatten.map{|x| x*2}.select{|x| x%3 !=0}.uniq.sort
end

p who_is_bigger(84, 42, nil)
p who_is_bigger(nil, 42, 21)
p who_is_bigger(84, 42, 21)
p who_is_bigger(42, 84, 21)
p who_is_bigger(42, 21, 84)

p reverse_upcase_noLTA("Tries this at Home, Kids")
p reverse_upcase_noLTA("Ponies loves carrots")
p reverse_upcase_noLTA("qwertyuiopasdfghjkl;zxcvbn")

p array_42([1, 2, 3, 4, 5, 6, 7 , 8, 9, 10])
p array_42([1, 2, 3, 4, 5, 6, 7 , 8, 9, 42, 21, 10.5])

p magic_array([1, 2, 3, 4, 5, 6])
p magic_array([1, [2, 3], 4, 5, 6, 23, 31, [1, 2, 3]])
p magic_array([[32, 54], [48, 12], [21, [1, 2, [3]]], 7, 8])