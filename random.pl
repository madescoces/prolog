personajeDeFiccion(frodo).
personajeDeFiccion(harryPotter).
personajeDeFiccion(martinFierro).

pais(argentina).
pais(uruguay).
departamento(canelones).
provincia(santaCruz).
cancion(jijiji).
recital(deLasBandasEternas).

acontecimiento(caidaConstantinopla, 1453).
acontecimiento(nacioColon, 1453).
acontecimiento(fundacionDePixar, 1986).
acontecimiento(inicioSegundaGuerraMundial, 1939).
acontecimiento(nacimientoAdaLovelace, 1815).


% Regla para verificar si es un pais
es_pais(Pais) :- pais(Pais).

% Regla base para verificar que pasó en un año
acontecimiento_en_anio(Evento, Anio) :- acontecimiento(Evento, Anio).

/** <examples>
?- es_pais(mexico)
?- acontecimiento_en_anio(Evento, 1453).
*/

% Personajes de novelas
personaje(novela, anaKarenina).
personaje(novela, jayGatsby).
personaje(novela, holdenCaulfield).
personaje(novela, sherlockHolmes).
personaje(novela, elCondeDeMontecristo).
personaje(novela, sherlockHolmes).

% Personajes de películas
personaje(pelicula, lukeSkywalker).
personaje(pelicula, harryPotter).
personaje(pelicula, frodoBolsón).
personaje(pelicula, trinity).
personaje(pelicula, rockyBalboa).
personaje(pelicula, harryPotter).
personaje(pelicula, sherlockHolmes).

% Personajes de libros
personaje(libro, bilboBolsón).
personaje(libro, lisbethSalander).
personaje(libro, atticusFinch).
personaje(libro, hollyGolightly).
personaje(libro, winstonSmith).
personaje(libro, harryPotter).
personaje(libro, sherlockHolmes).

% Personajes de series
personaje(serie, walterWhite).
personaje(serie, daenerysTargaryen).
personaje(serie, donDraper).
personaje(serie, michaelScott).
personaje(serie, rickSanchez).
personaje(serie, sherlockHolmes).

% Es un personaje popular
personajePopular(Personaje) :- 
    personaje(libro, Personaje),
    personaje(novela, Personaje), 
    personaje(serie, Personaje),
    personaje(pelicula, Personaje).



% Ejercicio 7
% 1- A Mabel y a Ana les atrae el rosa.
% 2- A Mara le atraen el celeste y el lila.
% 3- A Juan le atraen todos los colores pastel. 
% 4- A todas las mujeres y a Pablo les atrae el azul.
% 5- A los varones mayores y a Mabel les atrae el rojo.
% 6- A todos los porteños (sin importar el sexo) y a Adrián les atrae el amarillo.
% 7- A Ana y a Juan les atrae el naranja.
% 8- A Mabel, Mara y Pablo son porteños.
% 9- Ana y Pablo son mayores.
% 10- El rosa, el celeste y el lila son colores pastel.

% 1-
atraeA(mabel, rosa).
atraeA(ana, rosa).
% 2-
atraeA(mara, lila).
atraeA(mara, celeste).
% 3-
atraeA(juan, pastel).
% 4-
atraeA(Persona, azul) :- mujer(Persona).
atraeA(pablo, azul).
% 5-
atraeA(Persona, rojo) :- esHombreMayor(Persona).
atraeA(mabel, rojo).
% 6-
atraeA(Persona, amarillo) :- portenio(Persona).
atraeA(adrian, amarillo).
% 7-
atraeA(ana, naranja).
atraeA(juan, naranja).

mayor(pablo).
mayor(ana).
mujer(mara).
mujer(ana).
mujer(mabel).
varon(juan).
varon(pablo).
portenio(mabel).
portenio(mara).
portenio(pablo).
pastel(celeste).
pastel(rosa).
pastel(lila).

esHombreMayor(Persona) :- mayor(Persona), varon(Persona).
aQuienAtrae(Persona, Color ) :- atraeA(Persona, Color).
