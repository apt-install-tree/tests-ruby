def echo message
    message
end

def shout message
    message.upcase
end

def repeat message, combien = 2
    m = message
    while combien > 1
        message = message + " " + m
        combien -= 1
    end
    return message
end

def start_of_word mot, combien
    mot[0..combien-1]
end

def first_word phrase
    phrase.split(' ').first
end

def titleize phrase
    phrase.capitalize!
    phrase.split(' ').map! {|m|
        if m.length > 3
            m.capitalize
        else
            m
        end
    }.join(' ')
end

p echo("hello")
p echo("bye")

p shout("hello")
p shout("hello world")

p repeat("hello")
p repeat("hello", 3)

p start_of_word("hello", 1)
p start_of_word("Bob", 2)
s = "abcdefg"
p start_of_word(s, 1)
p start_of_word(s, 2)
p start_of_word(s, 3)

p first_word("Hello World")
p first_word("oh dear")

p titleize("jaws")
p titleize("david copperfield")
p titleize("war and peace")
p titleize("the bridge over the river kwai")