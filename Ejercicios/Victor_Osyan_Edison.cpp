#include <iostream>
#include <string>
using namespace std;

int main() {
    int puntaje1, puntaje2, puntaje3;
    int numErrores, tiempoTotal;
    char desafioExtra, descalificado;
    int puntajeBase, penalizacion, bonificacion, puntajeFinal;
    string nivel, observacion;

    cout << "Puntaje reto 1: ";
    cin >> puntaje1;
    cout << "Puntaje reto 2: ";
    cin >> puntaje2;
    cout << "Puntaje reto 3: ";
    cin >> puntaje3;
    cout << "Numero de errores: ";
    cin >> numErrores;
    cout << "Tiempo total (minutos): ";
    cin >> tiempoTotal;
    cout << "Resolvio desafio extra? (S/N): ";
    cin >> desafioExtra;
    cout << "Descalificado por copia? (S/N): ";
    cin >> descalificado;

    puntajeBase  = puntaje1 + puntaje2 + puntaje3;
    penalizacion = numErrores * 4;
    bonificacion = 0;

    if (desafioExtra == 'S' || desafioExtra == 's')
        bonificacion = bonificacion + 15;
    if (tiempoTotal < 30)
        bonificacion = bonificacion + 10;

    puntajeFinal = puntajeBase - penalizacion + bonificacion;

    if (puntajeFinal < 0)
        puntajeFinal = 0;

    if (puntajeFinal >= 90)      nivel = "Experto";
    else if (puntajeFinal >= 70) nivel = "Avanzado";
    else if (puntajeFinal >= 50) nivel = "Intermedio";
    else if (puntajeFinal >= 30) nivel = "Basico";
    else                         nivel = "Principiante";

    if (descalificado == 'S' || descalificado == 's')
        nivel = "Descalificado";

    observacion = "";
    if (puntajeFinal >= 70 && numErrores >= 5)
        observacion = "Resultado inconsistente: revisar calidad de resolucion";

    cout << "Puntaje base:  " << puntajeBase   << endl;
    cout << "Penalizacion:  " << penalizacion  << endl;
    cout << "Bonificacion:  " << bonificacion  << endl;
    cout << "Puntaje final: " << puntajeFinal  << endl;
    cout << "Nivel:         " << nivel         << endl;
    if (observacion != "")
        cout << "Observacion:   " << observacion << endl;

    return 0;
}

