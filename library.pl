escribio(elsaBornemann, socorro).
escribio(neilGaiman, sandman).
escribio(alanMoore, watchmen).
escribio(neilGaiman, americanGods).
escribio(neilGaiman, buensoPresagios).
escribio(terryPratchett, buensoPresagios).
escribio(brianAzarello, cienBalas).
escribio(warenElis, planetary).
escribio(frankMiller, elCaballeroOscuroRegresa).
escribio(frankMiller, batmanAnioUno).
escribio(isaacAsimov, fundacion).
escribio(isaacAsimov, yoRobot).
escribio(isaacAsimov, elFinDeLaEternidad).
escribio(isaacAsimov, laBusquedaDeLosElementos).
escribio(joseHernandez, martinFierro).
escribio(stephenKing, it).
escribio(stephenKing, misery).
escribio(stephenKing, carrie).
escribio(stephenKing, elJuegoDeGerald).
escribio(julioCortazar, rayuela).
escribio(jorgeLuisBorges, ficciones).
escribio(jorgeLuisBorges, elAleph).
escribio(horacioQuiroga, cuentosDeLaSelva).
escribio(horacioQuiroga, cuentosDeLocuraAmorYMuerte).
comic(sandman).
comic(cienBalas).
comic(watchman).
comic(planetary).
comic(elCaballeroOscuroRegresa).
comic(batmanAnioUno).

esComic(Obra) :- comic(Obra).
esArtistaNovenoArte(Artista) :- escribio(Artista, Obra), esComic(Obra).

%- Consultas
%  	escribio(Artista, watchmen). => alanMoore
%  	escribio(alanMoore, watchmen). => true
% 	escribio(_, watchmen). => true
%	escribio(isaacAsimov, Obra). => Obra = fundacion, Obra = yoRobot, Obra = elFinDeLaEternidad, Obra = laBusquedaDeLosElementos
