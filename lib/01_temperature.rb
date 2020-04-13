def ftoc(degre_farenheit)
    ((degre_farenheit.to_f - 32) * 5/9).to_f
    # Autre formule possible
    # ((degre_farenheit.to_f + 40) / 1.8) - 40
end

def ctof(degre_celcius)
    # Attention à la conversion implicite en int.
    # utilise to_f pour convertir la valeur d'entrée
    # en float
    (degre_celcius.to_f * 9/5) + 32
    # Autre formule possible
    # ((degre_celcius.to_f + 40) * 1.8) - 40

end

p ftoc(32)
p ftoc(212)
p ftoc(98.6)
p ftoc(68)

p ctof(0)
p ctof(100)
p ctof(20)
p ctof(37)