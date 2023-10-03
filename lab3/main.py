from pyswip import Prolog

prolog = Prolog()

prolog.consult('lab1.pl')

print("Для подбора подходящего Вам покемона необходимо указать параметры")
# attr = input("Для подбора подходящего вам покемона необходимо указать параметры:\n(сила, выносливость, скорость, здоровье, элемент): ").split(' ')
attr1 = input("Введите силу (0-1000): ")
attr2 = input("Введите выносливость (0-10): ")
attr3 = input("Введите скорость (0-10): ")
attr4 = input("Введите здоровье (0-1000): ")
attr5 = input("Введите элемент(fire,water,grass,electric): ")


# query = (f"strength(X, Min0), Min0 >= {attr[0]}, stamina(X, Min), Min >= {attr[1]}, speed(X, Min1), "
#         f"Min1 >= {attr[2]}, hp(X, Min2), Min2 >= {attr[3]}, element(X, {attr[4]})")

query = (f"strength(X, Min0), Min0 >= {attr1}, stamina(X, Min), Min >= {attr2}, speed(X, Min1), "
        f"Min1 >= {attr3}, hp(X, Min2), Min2 >= {attr4}, element(X, {attr5})")

param = list(prolog.query(query))

if param:
    print("\nПредставляю список подходящих под Ваши запросы покемонов: ")
    for i in param:
        print(i["X"])
else:
    print(f"\nК сожалению, нет подходящих покемонов.")
