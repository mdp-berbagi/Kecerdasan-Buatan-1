buah(apel).
buah(mengga).
buah(nanas).
buah(jeruk).

alatmusik(gitar).

bahagia(joni).

suka(andi, nanas).
suka(zico, bacot).

anak(andi, joni).
anak(dina, joni).
anak(susi, joni).
anak(desi, joni).
anak(joni, andi).


ayah(X, Y) :- anak(Y, X).
saudara(X, Y) :- ayah(C,X),ayah(C,Y).
