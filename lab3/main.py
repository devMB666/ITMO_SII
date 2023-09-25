from pyswip import Prolog

prolog = Prolog()

prolog.consult('lab1.pl')

attr = input("Введите ваши параметры(сила, выносливость, скорость, здоровье, элемент): ").split(' ')
query = f"strength(X, Min0), Min0 >= {attr[0]}, stamina(X, Min), Min >= {attr[1]}, speed(X, Min1), Min1 >= {attr[2]}, hp(X, Min2), Min2 >= {attr[3]}, element(X, {attr[4]})"
param = list(prolog.query(query))

if param:
    for i in param:
        print(i["X"])
else:
    print(f"К сожалению, нет подходящих покемонов.")
