name = input('Nom: ')
dict = {'a': "ka", 'b': "zu", 'c': "mi", 'd': "te", 'e': "ku", 'f': "lu", 'g': "ji", 'h': "ri", 'i': "go", 'j': "zus", 'k': "me", 'l': "ta", 'm': "rin", 'n': "to", 'o': "mo", 'p': "no", 'q': "ke", 'r': "shi", 's': "ari", 't': "chi", 'u': "do", 'v': "ru", 'w': "mei", 'x': "na ", 'y': "fu", 'z': "zi"}

s=""
for c in name:
    s+= dict[c]

print s
