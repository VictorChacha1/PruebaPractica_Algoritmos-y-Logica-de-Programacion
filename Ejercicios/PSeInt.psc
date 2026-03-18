Algoritmo CompetenciaProgramacion
   Definir puntaje1, puntaje2, puntaje3 Como Entero
   Definir numErrores, tiempoTotal Como Entero
   Definir puntajeBase, penalizacion, bonificacion, puntajeFinal Como Entero
   Definir desafioExtra, descalificado Como Caracter
   Definir nivel, observacion Como Cadena
 
   Escribir "Puntaje reto 1: "
   Leer puntaje1
   Escribir "Puntaje reto 2: "
   Leer puntaje2
   Escribir "Puntaje reto 3: "
   Leer puntaje3
   Escribir "Numero de errores: "
   Leer numErrores
   Escribir "Tiempo total en minutos: "
   Leer tiempoTotal
   Escribir "Resolvio desafio extra? (S/N): "
   Leer desafioExtra
   Escribir "Descalificado por copia? (S/N): "
   Leer descalificado
 
   puntajeBase <- puntaje1 + puntaje2 + puntaje3
   penalizacion <- numErrores * 4
   bonificacion <- 0
 
   Si desafioExtra == 'S' Entonces
      bonificacion <- bonificacion + 15
   FinSi
 
   Si tiempoTotal < 30 Entonces
      bonificacion <- bonificacion + 10
   FinSi
 
   puntajeFinal <- puntajeBase - penalizacion + bonificacion
 
   Si puntajeFinal < 0 Entonces
      puntajeFinal <- 0
   FinSi
 
   Si puntajeFinal >= 90 Entonces
      nivel <- "Experto"
   SiNo Si puntajeFinal >= 70 Entonces
      nivel <- "Avanzado"
   SiNo Si puntajeFinal >= 50 Entonces
      nivel <- "Intermedio"
   SiNo Si puntajeFinal >= 30 Entonces
      nivel <- "Basico"
   SiNo
      nivel <- "Principiante"
   FinSi
 
   Si descalificado == 'S' Entonces
      nivel <- "Descalificado"
   FinSi
 
   observacion <- ""
   Si puntajeFinal >= 70 Y numErrores >= 5 Entonces
      observacion <- "Resultado inconsistente: revisar calidad de resolucion"
   FinSi
 
   Escribir "Puntaje base: ", puntajeBase
   Escribir "Penalizacion: ", penalizacion
   Escribir "Bonificacion: ", bonificacion
   Escribir "Puntaje final: ", puntajeFinal
   Escribir "Nivel: ", nivel
   Si observacion <> "" Entonces
      Escribir "Observacion: ", observacion
   FinSi
  FinSi
 FinSi
FinSi
FinAlgoritmo

