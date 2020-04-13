def translate phrase
    tableau_mots = phrase.split(' ')
    tableau_mots_traduits = tableau_mots.map do |mot|
        str_ponctuation = ""
        if mot =~ /(!|\?|\.|,)$/
            str_ponctuation = mot[-1, 1]
            mot = /(!|\?|\.|,)$/.match(mot).pre_match
        end
        if mot[0] =~ /[aeiou]/i
            debut_voyelle(mot).insert(-1, str_ponctuation)
        else
            if mot =~ /^qu.*/i || mot =~ /^.qu.*/i
                contient_qu(mot).insert(-1, str_ponctuation)
            elsif mot =~ /[aeiou]/i
                debut_consonne(mot).insert(-1, str_ponctuation)
            else
                mot
            end
        end
    end
    return tableau_mots_traduits.join(' ')

end

def debut_voyelle mot
    mot + "ay"
end

def debut_consonne mot
    m = /(a|e|i|o|u).*/i.match(mot)
    # Voir documentation : https://ruby-doc.org/core-2.5.0/Regexp.html#class-Regexp-label-Special+global+variables
    # $& représente le regex
    # $` repésente ce qui se trouve avant le regex
    $& + $` + "ay"
end

def contient_qu mot
    m = /.*(qu)/i.match(mot)
    $' + $& + "ay"
end

p translate("apple")
p translate("banana")
p translate("cherry")
p translate("eat pie")
p translate("three")
p translate("school")
p translate("quiet")
p translate("square")
p translate("the quick brown fox")

## MES TESTS
p translate("equalizer")
p translate("My favorite hobby is coding")
p translate("A tree, you have to plant! Ok?")
p translate("My stopwatch shows : 00:12:34")