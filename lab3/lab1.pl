pokemon(bulbasaur).
pokemon(ivysaur).
pokemon(venusaur).
pokemon(charmander).
pokemon(charmeleon).
pokemon(charizard).
pokemon(squirtle).
pokemon(wartortle).
pokemon(blastoise).
pokemon(caterpie).
pokemon(metapod).
pokemon(butterfree).
pokemon(weedle).
pokemon(kakuna).
pokemon(beedrill).
pokemon(pikachu).
pokemon(raichu).
pokemon(sandshrew).
pokemon(sandslash).
pokemon(nidoran).

strength(bulbasaur, 230).
strength(ivysaur, 100).
strength(venusaur, 80).
strength(charmander, 201).
strength(charmeleon, 230).
strength(charizard, 100).
strength(squirtle, 80).
strength(wartortle, 20).
strength(blastoise, 110).
strength(caterpie, 90).
strength(metapod, 990).
strength(butterfree, 83).
strength(weedle, 60).
strength(kakuna, 23).
strength(beedrill, 64).
strength(pikachu, 11).
strength(raichu, 14).
strength(sandshrew, 87).
strength(sandslash, 95).
strength(nidoran, 69).

stamina(bulbasaur, 6).
stamina(ivysaur, 9).
stamina(venusaur, 3).
stamina(charmander, 6).
stamina(charmeleon, 4).
stamina(charizard, 7).
stamina(squirtle, 9).
stamina(wartortle, 2).
stamina(blastoise, 5).
stamina(caterpie, 2).
stamina(metapod, 6).
stamina(butterfree, 8).
stamina(weedle, 9).
stamina(kakuna, 4).
stamina(beedrill, 5).
stamina(pikachu, 8).
stamina(raichu, 7).
stamina(sandshrew, 3).
stamina(sandslash, 4).
stamina(nidoran, 2).

speed(bulbasaur, 2).
speed(ivysaur, 5).
speed(venusaur, 2).
speed(charmander, 9).
speed(charmeleon, 7).
speed(charizard, 6).
speed(squirtle, 9).
speed(wartortle, 6).
speed(blastoise, 4).
speed(caterpie, 7).
speed(metapod, 6).
speed(butterfree, 9).
speed(weedle, 3).
speed(kakuna, 4).
speed(beedrill, 8).
speed(pikachu, 9).
speed(raichu, 10).
speed(sandshrew, 3).
speed(sandslash, 2).
speed(nidoran, 5).

hp(bulbasaur, 200).
hp(ivysaur, 540).
hp(venusaur, 1800).
hp(charmander, 140).
hp(charmeleon, 800).
hp(charizard, 1100).
hp(squirtle, 90).
hp(wartortle, 400).
hp(blastoise, 1600).
hp(caterpie, 50).
hp(metapod, 210).
hp(butterfree, 700).
hp(weedle, 30).
hp(kakuna, 80).
hp(beedrill, 310).
hp(pikachu, 166).
hp(raichu, 866).
hp(sandshrew, 90).
hp(sandslash, 250).
hp(nidoran, 150).

element(bulbasaur, grass).
element(ivysaur, grass).
element(venusaur, grass).
element(charmander, fire).
element(charmeleon, fire).
element(charizard, fire).
element(squirtle, water).
element(wartortle, water).
element(blastoise, water).
element(caterpie, grass).
element(metapod, grass).
element(butterfree, grass).
element(weedle, grass).
element(kakuna, grass).
element(beedrill, grass).
element(pikachu, electric).
element(raichu, electric).
element(sandshrew, grass).
element(sandslash, grass).
element(nidoran, electric).

dominance(water,fire).
dominance(grass,fire).
dominance(fire,electric).
dominance(grass,water).
dominance(water, electric).
dominance(electric, grass).

stronger(X,Y) :- strength(X,Z),strength(Y,M), Z>M.
healthier(X,Y) :- hp(X,Z),hp(Y,M), Z>M.
endurance(X,Y) :- stamina(X,Z),stamina(Y,M), Z>M.
element_dominance(X,Y) :- element(X,Z),element(Y,M),dominance(Z,M).
faster(X,Y) :- speed(X,Z),speed(Y,M),Z>M.




