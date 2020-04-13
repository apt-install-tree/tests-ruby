def time_string seconde
    heure = seconde / 3600
    seconde -= heure * 3600
    minute = seconde / 60
    seconde -= minute * 60
    return deux_chiffres(heure) + ":" + deux_chiffres(minute) + ":" + deux_chiffres(seconde)
end

def deux_chiffres n
    if n < 10
        0.to_s + n.to_s
    else
        n.to_s
    end
end

p time_string(0)
p time_string(12)
p time_string(66)
p time_string(4000)