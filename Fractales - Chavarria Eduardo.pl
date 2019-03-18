/*
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Tarea Fractales  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;Instituto Tecnológico de Costa Rica
;Escuela de Ingenería en Computacion
;Curso:Lenguajes de programación
;Grupo:1
;Profesor: Kirstein Gätjens
;Estudiante: Eduardo Andrés Chavarría Rey
;Carnet: 2013012779
;Fecha: 1/junio/2015
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;MANUAL DE USUARIO / Documentacion ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Introduccion:
;El siguiente programa fue hecho con fines academicos para el curso Lenguajes de programación del ITCR Instituto
;;Tecnologico de Costa Rica
;La idea del presente programa fue dada por el Profesor Kirstein Gätjens.
;Este Programa esta escrito en el lenguaje Prolog.


;El objetivo del programa es generar mediante el uso de gráficos (gracias a la librería de Turtle), fractales. Los fractales son un tipo
;de figura u objeto geométrica que tiene una estructura básica en el fondo, la cual se repite varias veces y con
;ello es capaz de generar muchos patrones, estas repeticiones ocurren a diferentes escalas generando el efecto particular de los
;fractales.

;MANUAL DE USO:
;El nombre del programa es Fractales - Chavarria Eduardo.pl
;Este programa es ejecutado en el interprete de Prolog - SWI Prolog

;Utilización:
;Por tratarse de un programa el prolog, y puesto que este es un lenguaje interpretado no hay ejecutables ni requiere de ningún tipo de instalación 
;simplemente se debe tener este archivo.

;+ De la siguiente manera en la consola de SWI prolog se puede invocar la relación para generar graficamente el copo 
;copo(2,100).

;+ De la siguienet manera en la consola de SWI prolog se puede invocar la relación para generar graficamente el pentagrama
;corbatin(2,300).

;+ De la siguienet manera en la consola de SWI prolog se puede invocar la relación para generar graficamente el pentagrama
;panal(2,300).

;+ De la siguientet manera en la consola de SWI prolog se puede invocar la relación para generar graficamente el pentagrama
;estrella(2,300).

;+ Si se utilizan correctamente las relaciones anteriores se mostrara una pantalla negra en la cual estara dibujado
;el fractal correspondiente.

;NOTA: Para cada función existe además las funciones XXXX/R/C/RGB(). Por ejemplo: Copo(),CopoR(),CopoC(),CopoRGB(). 
; Donde las funciones terminadas en R, son dibujadas con colores Random.
; Donde las funciones terminadas en C, son dibujadas del color específicado. (De la lista que hay más abajo).
; Y donde las funciones terminadas en RGB, son donde se desee especificar un color personalizado.

;
;
;
;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Analisis de resultadoas;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Tabla Evaluacion Resultados;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;                         (1)Funcionalidad             (2)Calficiacion Por Estudiante           (3)Justificacion

; Desempeño General                A                                   A                         Funciona

; Copo de nieve                    A                                   A                         Todo Funciona Perfectamente

; Copo de nieveC                   A                                   A                         Todo Funciona Perfectamente

; Copo de nieveR                   A                                   A                         Todo Funciona Perfectamente

; Corbatin                         A                                   A                         Todo Funciona Perfectamente

; CorbatinR                        A                                   A                         Todo Funciona Perfectamente

; CorbatinC                        A                                   A                         Todo Funciona Perfectamente

; Panal                            A                                   A                         Todo Funciona Perfectamente

; Estrella                         A                                   A                         Todo Funciona Perfectamente

; EstrellaR                        A                                   A                         Todo Funciona Perfectamente

; EstrellaC                        A                                   A                         Todo Funciona Perfectamente

; Tapete externo                   A                                   A                         No programado solo implementado en papel

; Tapete interno                   A                                   A                         No programado solo implementado en papel

; Aros                             D                                   D                         No programado solo implementado en papel

; Tonel                            D                                   D                         No programado solo implementado en papel

; Figura Original 1                A                                   A                         Todo funciona perfectamente
 
; Figura Original 2                A                                   A                         No programado solo implementado en papel
 
; Figura Original 3                D                                   D                         No programado solo implementado en papel
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

*/






% Black  (0,0,0)
% White  (255,255,255)
% Red  (255,0,0)
% Lime   (0,255,0)
% Blue   (0,0,255)
% Yellow   (255,255,0)
% Cyan / Aqua  (0,255,255)
% Magenta / Fuchsia  (255,0,255)
% Silver   (192,192,192)
% Gray   (128,128,128)
% Maroon   (128,0,0)
% Olive  (128,128,0)
% Green  (0,128,0)
% Purple   (128,0,128)
% Teal   (0,128,128)
% Navy   (0,0,128)
% maroon   (128,0,0)
% dark red   (139,0,0)
% brown  (165,42,42)
% firebrick  (178,34,34)
% crimson  (220,20,60)
% red  (255,0,0)
% tomato   (255,99,71)
% coral  (255,127,80)
% indian red   (205,92,92)
% light coral  (240,128,128)
% dark salmon  (233,150,122)
% salmon   (250,128,114)
% light salmon   (255,160,122)
% orange red   (255,69,0)
% dark orange  (255,140,0)
% orange   (255,165,0)
% gold   (255,215,0)
% yellow   (255,255,0)
% yellow green   (154,205,50)



:- module(turtle,
     [ turtle_init2/1    % Initialize the Turtle.
     , turtle_init/0    % Initialize the Turtle.
     , turtle_term/0    % Terminate the Turtle.
     , turtle_drawto/2  % Draw a line to an absolute point P(X/Y).
     , turtle_draw/1    % Draw a line of length L in the current direction.
     , turtle_drawRGB/4    % Draw a line of length L in the current direction with an specific color.
     , turtle_drawRand/1    % Draw a line of length L in the current direction.
     , turtle_turn/1    % Turn the direction of the Turtle by W degrees relative.
     , turtle_turnto/1  % Turn the Turtle to the absolute angle W.
     , turtle_move/1    % Move the Turtle a line of length L in the current direction.
     , turtle_moveto/2  % Move the Turtle to a point P(X/Y) without drawing.
     , turtle_drawGrosso/5 %Draw with thickness!!!
     , dragon/2
     , dragonPrueba/2
     , dragonR/2
     , dragonC/3
     , dragonRGB/5
     , color/4
     , copo/2 
     , copoR/2
     , copoC/3
     , copoRGB/5
     , primerOriginal/2
     , primerOriginalR/2
     , primerOriginalC/3
     , primerOriginalRGB/5
     , corbatinBase/2
     , corbatin/2
     , corbatinBaseFallido/2
     , corbatinFallido/2
     , estrellaBaseAlrrevez/2
     , estrellaBase/2
     , estrella/2
     , panalBaseFallida/2
     , panalFallido/2
     , panalBaseFallidaDos/2
     , panalFallidoDos/2
     , panalBase/2
     , panal/2
     ]).



color(black,0,0,0).
color(white,255*257,255*257,255*257).
color(red,255*257,0,0).
color(lime,0,255*257,0).
color(blue,0,0,255*257).
color(yellow,255*257,255*257,0).
color(cyan,0,255*257,255*257).
color(magenta,255*257,0,255*257).
color(silver,192*257,192*257,192*257).
color(gray,128*257,128*257,128*257).
color(maroon,128*257,0,0).
color(olive,128*257,128*257,0).
color(green,0,128*257,0).
color(purple,128*257,0,128*257).

color(negro,0,0,0).
color(blanco,255*257,255*257,255*257).
color(rojo,255*257,0,0).
color(lima,0,255*257,0).
color(azul,0,0,255*257).
color(amarillo,255*257,255*257,0).
color(plateado,192*257,192*257,192*257). 
color(gris,128*257,128*257,128*257). 
color(maroon,128*257,0,0).
color(oliva,128*257,128*257,0). 
color(verde,0,128*257,0). 
color(purpura,128*257,0,128*257). 
color(morado,128*257,0,128*257).

turtle_init2(COLOR):-
   % delete old state
   retractall(turtle(_,_,_)),

   % set new state
   B is 1280,
   H is 1000,
   B1 is B /2,
   H1 is H / 2,
   W1 is 0,
   assert(turtle(B1, H1, W1)),

   % close old LOGO-window
   free(@logo),

   % open new LOGO-window
   new(@logo, picture('Fractal Factory', size(B, H))),
   send(@logo, background(COLOR)),
   send(@logo, open_centered).

turtle_init:-
   % delete old state
   retractall(turtle(_,_,_)),

   % set new state
   B is 1280,
   H is 1000,
   B1 is B /2,
   H1 is H / 2,
   W1 is 0,
   assert(turtle(B1, H1, W1)),

   % close old LOGO-window
   free(@logo),

   % open new LOGO-window
   new(@logo, picture('Fractal Factory', size(B, H))),
   send(@logo, background(red)),
   send(@logo, open_centered).

turtle_term:-
  retractall(logo/3),
  free(@logo).

turtle_drawto(X, Y):-
  retract(turtle(X1, Y1, W)),
  send(@logo, display, new(_, line(X1, Y1, X, Y))),
  assert(turtle(X, Y, W)).

turtle_drawRand(L):-
  retract(turtle(X1, Y1, W)),
  X2 is X1 + L*cos(W*pi/180),
  Y2 is Y1 - L*sin(W*pi/180),
  send(@logo, display, new(LINE, line(X1, Y1, X2, Y2))),
  random(1000, 65535, RAND1),
  random(1000, 65535, RAND2),
  random(1000, 65535, RAND3),
  new(C, colour(@default, RAND1, RAND2, RAND3)),
  send(LINE, colour, C),
  assert(turtle(X2, Y2, W)).

turtle_draw(L):-
  retract(turtle(X1, Y1, W)),
  X2 is X1 + L*cos(W*pi/180),
  Y2 is Y1 - L*sin(W*pi/180),
  send(@logo, display, new(LINE, line(X1, Y1, X2, Y2))),
  new(C, colour(@default, 65535, 65535, 65535)),
  send(LINE, colour, C),
  assert(turtle(X2, Y2, W)).

turtle_drawRGB(L,Red,Green,Blue):-
  retract(turtle(X1, Y1, W)),
  X2 is X1 + L*cos(W*pi/180),
  Y2 is Y1 - L*sin(W*pi/180),
  send(@logo, display, new(LINE, line(X1, Y1, X2, Y2))),
  new(C, colour(@default, Red, Green, Blue)),
  send(LINE, colour, C),
  assert(turtle(X2, Y2, W)).

turtle_drawGrosso(L,Red,Green,Blue,Grosor):-
  retract(turtle(X1, Y1, W)),
  X2 is X1 + L*cos(W*pi/180),
  Y2 is Y1 - L*sin(W*pi/180),
  send(@logo, display, new(LINE, line(X1, Y1, X2, Y2))),
  new(C, colour(@default, Red, Green, Blue)),
 % new(G, pen(Grosor,@default,C)),
  send(LINE, pen, Grosor),
  send(LINE, colour, C),
  assert(turtle(X2, Y2, W)).

turtle_turn(W):-
  retract(turtle(X, Y, W1)),
  W2 is W1 + W,
  assert(turtle(X, Y, W2)).

turtle_turnto(W):-
  retract(turtle(X, Y, _)),
  assert(turtle(X, Y, W)).

turtle_move(L):-
  retract(turtle(X1, Y1, W)),
  X2 is X1 + L*cos(W*pi/180),
  Y2 is Y1 - L*sin(W*pi/180),
  assert(turtle(X2, Y2, W)).

turtle_moveto(X, Y):-
  retract(turtle(_, _, W)),
  assert(turtle(X, Y, W)).

dragonPrueba(0,T):- turtle_draw(T).
dragonPrueba(N,T):-
  S is(T div 3),
  N1 is(N-1),
  dragonPrueba(N1,S),
  turtle_turn(300),
  dragonPrueba(N1,S),
  turtle_turn(120),
  dragonPrueba(N1,S),
  turtle_turn(300),
  dragonPrueba(N1,S).

dragon(0,T):- turtle_draw(T).
dragon(N,T):-
  S is(T div 3),
  N1 is(N-1),
  dragon(N1,S),
  turtle_turn(60),
  dragon(N1,S),
  turtle_turn(-120),
  dragon(N1,S),
  turtle_turn(60),
  dragon(N1,S).

dragonR(0,T):- turtle_drawRand(T).
dragonR(N,T):-
  S is(T div 3),
  N1 is(N-1),
  dragonR(N1,S),
  turtle_turn(60),
  dragonR(N1,S),
  turtle_turn(-120),
  dragonR(N1,S),
  turtle_turn(60),
  dragonR(N1,S).

dragonC(0,T,COL):- color(COL,R,G,B), turtle_drawRGB(T,R,G,B).
dragonC(N,T,COL):-
  S is(T div 3),
  N1 is(N-1),
  dragonC(N1,S,COL),
  turtle_turn(60),
  dragonC(N1,S,COL),
  turtle_turn(-120),
  dragonC(N1,S,COL),
  turtle_turn(60),
  dragonC(N1,S,COL).

dragonRGB(0,T,R,G,B):- turtle_drawRGB(T,R,G,B).
dragonRGB(N,T,R,G,B):-
  S is(T div 3),
  N1 is(N-1),
  dragonRGB(N1,S,R,G,B),
  turtle_turn(60),
  dragonRGB(N1,S,R,G,B),
  turtle_turn(-120),
  dragonRGB(N1,S,R,G,B),
  turtle_turn(60),
  dragonRGB(N1,S,R,G,B).

primerOriginal(N,T):-
  dragon(N,T),
  turtle_turn(120),
  dragon(N,T),
  turtle_turn(120),
  dragon(N,T).

primerOriginalR(N,T):-
  dragonR(N,T),
  turtle_turn(120),
  dragonR(N,T),
  turtle_turn(120),
  dragonR(N,T).

primerOriginalC(N,T,COL):-
  dragonC(N,T,COL),
  turtle_turn(120),
  dragonC(N,T,COL),
  turtle_turn(120),
  dragonC(N,T,COL).

primerOriginalRGB(N,T,R,G,B):-
  dragonRGB(N,T,R,G,B),
  turtle_turn(120),
  dragonRGB(N,T,R,G,B),
  turtle_turn(120),
  dragonRGB(N,T,R,G,B).

copo(N,T):-
  dragon(N,T),
  turtle_turn(-120),
  dragon(N,T),
  turtle_turn(-120),
  dragon(N,T).

copoR(N,T):-
  dragonR(N,T),
  turtle_turn(-120),
  dragonR(N,T),
  turtle_turn(-120),
  dragonR(N,T).

copoC(N,T,COL):-
  dragonC(N,T,COL),
  turtle_turn(-120),
  dragonC(N,T,COL),
  turtle_turn(-120),
  dragonC(N,T,COL).

copoRGB(N,T,R,G,B):-
  dragonRGB(N,T,R,G,B),
  turtle_turn(-120),
  dragonRGB(N,T,R,G,B),
  turtle_turn(-120),
  dragonRGB(N,T,R,G,B).

corbatinBaseFallido(0,T):- turtle_draw(T).
corbatinBaseFallido(N,T):-
  S is(T div 3),
  N1 is(N-1),
  turtle_turn(45),
  corbatinBaseFallido(N1,S),
  turtle_turn(-90),
  corbatinBaseFallido(N1,S),
  corbatinBaseFallido(N1,S),
  turtle_turn(90),
  corbatinBaseFallido(N1,S),
   turtle_turn(-45).


corbatinFallido(N,T):-
  corbatinBaseFallido(N,T),
  turtle_turn(90),
  corbatinBaseFallido(N,T),
  turtle_turn(90),
  corbatinBaseFallido(N,T),
  turtle_turn(90),
  corbatinBaseFallido(N,T),
  turtle_turn(90),
  corbatinBaseFallido(N,T).


corbatinBase(0,T):- turtle_draw(T).
corbatinBase(N,T):-
  S is(T div 3),
  N1 is(N-1),
  turtle_turn(45),
  corbatinBase(N1,S),
  turtle_turn(-90),
  corbatinBase(N1,S),
  corbatinBase(N1,S),
  turtle_turn(90),
  corbatinBase(N1,S),
   turtle_turn(-45).


corbatin(N,T):-
  corbatinBase(N,T),
  turtle_turn(90),
  corbatinBase(N,T),
  turtle_turn(90),
  corbatinBase(N,T),
  turtle_turn(90),
  corbatinBase(N,T),
  turtle_turn(90),
  corbatinBase(N,T).

  corbatinBaseR(0,T):- turtle_drawRand(T).
corbatinBaseR(N,T):-
  S is(T div 3),
  N1 is(N-1),
  turtle_turn(45),
  corbatinBaseR(N1,S),
  turtle_turn(-90),
  corbatinBaseR(N1,S),
  corbatinBaseR(N1,S),
  turtle_turn(90),
  corbatinBaseR(N1,S),
   turtle_turn(-45).


corbatinR(N,T):-
  corbatinBaseR(N,T),
  turtle_turn(90),
  corbatinBaseR(N,T),
  turtle_turn(90),
  corbatinBaseR(N,T),
  turtle_turn(90),
  corbatinBaseR(N,T),
  turtle_turn(90),
  corbatinBaseR(N,T).

  corbatinBaseC(0,T,COL):- color(COL,R,G,B), turtle_drawRGB(T,R,G,B).
corbatinBaseC(N,T,COL):-
  S is(T div 3),
  N1 is(N-1),
  turtle_turn(45),
  corbatinBaseC(N1,S,COL),
  turtle_turn(-90),
  corbatinBaseC(N1,S,COL),
  corbatinBaseC(N1,S,COL),
  turtle_turn(90),
  corbatinBaseC(N1,S,COL),
   turtle_turn(-45).


corbatinC(N,T,COL):-
  corbatinBaseC(N,T,COL),
  turtle_turn(90),
  corbatinBaseC(N,T,COL),
  turtle_turn(90),
  corbatinBaseC(N,T,COL),
  turtle_turn(90),
  corbatinBaseC(N,T,COL),
  turtle_turn(90),
  corbatinBaseC(N,T,COL).

estrellaBaseAlrrevez(0,T):- turtle_draw(T).
estrellaBaseAlrrevez(N,T):-
  S is(T div 2),
  N1 is(N-1),
  turtle_turn(15),
  estrellaBaseAlrrevez(N1,S),
  turtle_turn(-30),
  estrellaBaseAlrrevez(N1,S).

estrellaBase(0,T):- turtle_draw(T).
estrellaBase(N,T):-
  S is(T div 2),
  N1 is(N-1),
  turtle_turn(-15),
  estrellaBase(N1,S),
  turtle_turn(30),
  estrellaBase(N1,S),
  turtle_turn(-15). 

estrella(N,T):-
  turtle_turn(45),
  estrellaBase(N,T),
  turtle_turn(-90),
  estrellaBase(N,T),
  turtle_turn(-90),
  estrellaBase(N,T),
  turtle_turn(-90),
  estrellaBase(N,T),
  turtle_turn(-90),
  turtle_turn(-45).

estrellaBaseR(0,T):- turtle_drawRand(T).
estrellaBaseR(N,T):-
  S is(T div 2),
  N1 is(N-1),
  turtle_turn(-15),
  estrellaBaseR(N1,S),
  turtle_turn(30),
  estrellaBaseR(N1,S),
  turtle_turn(-15). 

estrellaR(N,T):-
  turtle_turn(45),
  estrellaBaseR(N,T),
  turtle_turn(-90),
  estrellaBaseR(N,T),
  turtle_turn(-90),
  estrellaBaseR(N,T),
  turtle_turn(-90),
  estrellaBaseR(N,T),
  turtle_turn(-90),
  turtle_turn(-45).

  estrellaBaseC(0,T,COL):- color(COL,R,G,B), turtle_drawRGB(T,R,G,B).
estrellaBaseC(N,T,COL):-
  S is(T div 2),
  N1 is(N-1),
  turtle_turn(-15),
  estrellaBaseC(N1,S,COL),
  turtle_turn(30),
  estrellaBaseC(N1,S,COL),
  turtle_turn(-15). 

estrellaC(N,T,COL):-
  turtle_turn(45),
  estrellaBaseC(N,T,COL),
  turtle_turn(-90),
  estrellaBaseC(N,T,COL),
  turtle_turn(-90),
  estrellaBaseC(N,T,COL),
  turtle_turn(-90),
  estrellaBaseC(N,T,COL),
  turtle_turn(-90),
  turtle_turn(-45).


panalBaseFallida(0,T):- turtle_draw(T).
panalBaseFallida(N,T):-
  S is(T div 5),
  N1 is(N-1),
  turtle_turn(180),

  turtle_turn(45),
  panalBaseFallida(N1,S),

  turtle_turn(-90),
  panalBaseFallida(N1,S),

  turtle_turn(45),
  turtle_turn(180),
  panalBaseFallida(N1,S),

  turtle_move(S),
  turtle_turn(45),
  panalBaseFallida(N1,S),

  turtle_turn(-90),
  panalBaseFallida(N1,S),
  turtle_turn(45). 

panalFallido(N,T):-
  panalBaseFallida(N,T),
  turtle_turn(-90),
  panalBaseFallida(N,T),
  turtle_turn(-90),
  panalBaseFallida(N,T),
  turtle_turn(-90),
  panalBaseFallida(N,T),
  turtle_turn(-90).

panalBaseFallidaDos(0,T):- turtle_draw(T).
panalBaseFallidaDos(N,T):-
  S is(T div 5),
  N1 is(N-1),
  turtle_turn(180),

  turtle_turn(45),
  panalBaseFallidaDos(N1,S),
  turtle_turn(180),
  turtle_move(S),
  turtle_turn(180),

  turtle_turn(-90),
  panalBaseFallidaDos(N1,S),
  turtle_turn(180),
  turtle_move(S),
  turtle_turn(180),

  turtle_turn(45),
  turtle_turn(180),
  panalBaseFallidaDos(N1,S),

  turtle_turn(45),
  panalBaseFallidaDos(N1,S),
  turtle_turn(180),
  turtle_move(S),
  turtle_turn(180),

  turtle_turn(-90),
  panalBaseFallidaDos(N1,S),
  turtle_turn(45). 

panalFallidoDos(N,T):-
  panalBaseFallidaDos(N,T),
  turtle_turn(-90),
  panalBaseFallidaDos(N,T),
  turtle_turn(-90),
  panalBaseFallidaDos(N,T),
  turtle_turn(-90),
  panalBaseFallidaDos(N,T),
  turtle_turn(-90).


segundoPropioBase(0,T):- turtle_draw(T).
segundoPropioBase(N,T):-
  S is(T div 5),
  N1 is(N-1),

  turtle_turn(45),
  segundoPropioBase(N1,S),

  turtle_turn(-90),
  segundoPropioBase(N1,S),
  turtle_turn(180),
  turtle_move(S),
  turtle_turn(180),

  turtle_turn(135),
  segundoPropioBase(N1,S),

  turtle_turn(-45),
  segundoPropioBase(N1,S),
  turtle_turn(180),
  turtle_move(S),
  turtle_turn(180),

  turtle_turn(90),
  segundoPropioBase(N1,S),
  turtle_move(S),
  turtle_turn(180).

segundoPropio(N,T):-
  segundoPropioBase(N,T),
  turtle_turn(-90),
  segundoPropioBase(N,T),
  turtle_turn(-90),
  segundoPropioBase(N,T),
  turtle_turn(-90),
  segundoPropioBase(N,T),
  turtle_turn(-90).




panalBase(0,T):- turtle_draw(T).
panalBase(N,T):-
  S is(T div 5),
  N1 is(N-1),

  turtle_turn(45),
  panalBase(N1,S),

  turtle_turn(-90),
  panalBase(N1,S),
  turtle_turn(180),
  turtle_move(S),
  turtle_turn(180),

  turtle_turn(135),
  panalBase(N1,S),

  turtle_turn(-45),
  panalBase(N1,S),
  turtle_turn(180),
  turtle_move(S),
  turtle_turn(180),

  turtle_turn(90),
  panalBase(N1,S).

panal(N,T):-
  panalBase(N,T),
  turtle_turn(-90),
  panalBase(N,T),
  turtle_turn(-90),
  panalBase(N,T),
  turtle_turn(-90),
  panalBase(N,T),
  turtle_turn(-90).


tapeteExternoBase(0,T):- turtle_draw(T).
tapeteExternoBase(N,T):-
  S is(T div 5),
  N1 is(N-1),
  tapeteExternoBase(N1,S),
  turtle_turn(90),
  tapeteExternoBase(N1,S),
  turtle_turn(-90),
  tapeteExternoBase(N1,S),
  turtle_turn(-90),
  tapeteExternoBase(N1,S),
  turtle_turn(90),
  tapeteExternoBase(N1,S).

tapeteExterno(N,T):-
  tapeteExternoBase(N,T),
  turtle_turn(-90),
  tapeteExternoBase(N,T),
  turtle_turn(-90),
  tapeteExternoBase(N,T),
  turtle_turn(-90),
  tapeteExternoBase(N,T),
  turtle_turn(-90).

tapeteExternoBaseR(0,T):- turtle_drawRand(T).
tapeteExternoBaseR(N,T):-
  S is(T div 5),
  N1 is(N-1),
  tapeteExternoBaseR(N1,S),
  turtle_turn(90),
  tapeteExternoBaseR(N1,S),
  turtle_turn(-90),
  tapeteExternoBaseR(N1,S),
  turtle_turn(-90),
  tapeteExternoBaseR(N1,S),
  turtle_turn(90),
  tapeteExternoBaseR(N1,S).

tapeteExternoR(N,T):-
  tapeteExternoBaseR(N,T),
  turtle_turn(-90),
  tapeteExternoBaseR(N,T),
  turtle_turn(-90),
  tapeteExternoBaseR(N,T),
  turtle_turn(-90),
  tapeteExternoBaseR(N,T),
  turtle_turn(-90).


tapeteExternoBaseC(0,T,COL):- color(COL,R,G,B), turtle_drawRGB(T,R,G,B).
tapeteExternoBaseC(N,T,COL):-
  S is(T div 5),
  N1 is(N-1),
  tapeteExternoBaseC(N1,S,COL),
  turtle_turn(90),
  tapeteExternoBaseC(N1,S,COL),
  turtle_turn(-90),
  tapeteExternoBaseC(N1,S,COL),
  turtle_turn(-90),
  tapeteExternoBaseC(N1,S,COL),
  turtle_turn(90),
  tapeteExternoBaseC(N1,S,COL).

tapeteExternoC(N,T,COL):-
  tapeteExternoBaseC(N,T,COL),
  turtle_turn(-90),
  tapeteExternoBaseC(N,T,COL),
  turtle_turn(-90),
  tapeteExternoBaseC(N,T,COL),
  turtle_turn(-90),
  tapeteExternoBaseC(N,T,COL),
  turtle_turn(-90).



tapeteInternoBase(0,T):- turtle_draw(T).
tapeteInternoBase(N,T):-
  S is(T div 5),
  N1 is(N-1),
  tapeteInternoBase(N1,S),
  turtle_turn(-90),
  tapeteInternoBase(N1,S),
  turtle_turn(90),
  tapeteInternoBase(N1,S),
  turtle_turn(90),
  tapeteInternoBase(N1,S),
  turtle_turn(-90),
  tapeteInternoBase(N1,S).

tapeteInterno(N,T):-
  tapeteInternoBase(N,T),
  turtle_turn(-90),
  tapeteInternoBase(N,T),
  turtle_turn(-90),
  tapeteInternoBase(N,T),
  turtle_turn(-90),
  tapeteInternoBase(N,T),
  turtle_turn(-90).



tapeteInternoBaseR(0,T):- turtle_drawRand(T).
tapeteInternoBaseR(N,T):-
  S is(T div 5),
  N1 is(N-1),
  tapeteInternoBaseR(N1,S),
  turtle_turn(-90),
  tapeteInternoBaseR(N1,S),
  turtle_turn(90),
  tapeteInternoBaseR(N1,S),
  turtle_turn(90),
  tapeteInternoBaseR(N1,S),
  turtle_turn(-90),
  tapeteInternoBaseR(N1,S).

tapeteInternoR(N,T):-
  tapeteInternoBaseR(N,T),
  turtle_turn(-90),
  tapeteInternoBaseR(N,T),
  turtle_turn(-90),
  tapeteInternoBaseR(N,T),
  turtle_turn(-90),
  tapeteInternoBaseR(N,T),
  turtle_turn(-90).



tapeteInternoBaseC(0,T,COL):- color(COL,R,G,B), turtle_drawRGB(T,R,G,B).
tapeteInternoBaseC(N,T,COL):-
  S is(T div 5),
  N1 is(N-1),
  tapeteInternoBaseC(N1,S,COL),
  turtle_turn(-90),
  tapeteInternoBaseC(N1,S,COL),
  turtle_turn(90),
  tapeteInternoBaseC(N1,S,COL),
  turtle_turn(90),
  tapeteInternoBaseC(N1,S,COL),
  turtle_turn(-90),
  tapeteInternoBaseC(N1,S,COL).

tapeteInternoC(N,T,COL):-
  tapeteInternoBaseC(N,T,COL),
  turtle_turn(-90),
  tapeteInternoBaseC(N,T,COL),
  turtle_turn(-90),
  tapeteInternoBaseC(N,T,COL),
  turtle_turn(-90),
  tapeteInternoBaseC(N,T,COL),
  turtle_turn(-90).


