anak(adi, budi).
anak(ana, budi).
anak(dedi, badu).
anak(deni, badu).
anak(budi, toto).
anak(badu, toto).
anak(siti, ana).
anak(riri, deni).


% fungi tidak boleh menggunakan fungsi lain (By Gasim)
% He said "nanti kalo kita gk butuh fungsi itu gimana?"
%
% =======================================================================
%
% Praktek Terbaik Selalu Memuncuklan nilai yang tepat
%
% Misalkan Memanggil "cucu(Siapa, toto)."
% maka setiap pencarian data dengan ";"
% sampai habis tidak ada "false", kalau ada, berarti kurang baik

ayah(Ayah, Anak) :- anak(Anak, Ayah).

kakek(Kakek, Cucu) :-
    anak(Cucu, Ayah),
    anak(Ayah, Kakek).

cucu(Cucu, Kakek) :-
    anak(Ayah, Kakek),
    anak(Cucu, Ayah).

saudara(Saudara, OrangIni) :-
    anak(OrangIni, Ayah),
    anak(Saudara, Ayah),
    not(Saudara = OrangIni).

sepupu(Sepupunya, OrangIni) :-
    anak(OrangIni, Ayahnya),
    anak(Ayahnya, Kakeknya),
    anak(OrtuSepupu, Kakeknya),
    not(OrtuSepupu = Ayahnya),
    anak(Sepupunya, OrtuSepupu).
