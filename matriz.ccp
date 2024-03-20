#include "Matriz.h"
#include <iostream>
using namespace std;
#define MAX 20
Matriz::Matriz() {

}
Matriz::~Matriz() {

}
void Matriz::set_fil(int F) {
	fil = F;
}
int Matriz::get_fil() {
	return fil;
}
void Matriz::set_col(int C) {
	col = C;
}
int Matriz::get_col() {
	return col;
}
void Matriz::cargar_matriz(int F1, int C1, int A[MAX][MAX], int B[MAX][MAX]) {
	cout << "MAtriz 1:\n";
	for (int i = 0; i < F1; i++) {
		for (int j = 0; j < C1;j++) {
			cout << "[" << i + 1 << "][" << j + 1 << "]="; cin >> A[i][j];
		}
	}
	cout << "Matriz 2:\n";
	for (int k = 0; k < F1; k++) {
		for (int l = 0; l < C1; l++) {
			cout << "[" << k + 1 << "][" << l + 1 << "]="; cin >> B[k][l];
		}
	}

}
void Matriz::mostrar_matriz(int F1, int C1, int A[MAX][MAX], int B[MAX][MAX]) {
	for (int i = 0; i < F1; i++) {
		for (int j = 0; j < C1; j++) {
			cout << A[i][j]<<" ";
		}
		cout << endl;
	}
	for (int k = 0; k < F1; k++) {
		for (int l = 0; l < C1; l++) {
			cout << B[k][l] << " ";
		}
		cout << endl;
	}
}
double Matriz::promedio_matriz(int F1, int C1, int A[MAX][MAX]) {
	double prom, sum = 0;
	for (int i = 0; i < F1; i++) {
		for (int j = 0; j < C1; j++) {
			sum += A[i][j];
		}
	}
	prom = sum / (F1 * C1);
	return prom;
}
double Matriz::mayor_valor(int F1, int C1, int A[MAX][MAX]) {
	double mayor = A[0][0];
	for (int i = 0; i < F1; i++) {
		for (int j = 0; j < C1; j++) {
			if (A[i][j] > mayor) {
				mayor = A[i][j];
			}
		}
	}
	return mayor;
}
void suma_matriz(int F1, int C1, int B[MAX][MAX], int A[MAX][MAX], int c[MAX][MAX]) {
	for (int i = 0; i < F1; i++) {
		for (int j = 0; j < C1; j++) {
			c[i][j] = A[i][j] + B[i][j];
		}
	}
	for (int i = 0; i < F1; i++) {
		for (int j = 0; j < C1; j++) {
			cout<<c[i][j];
		}
		cout << endl;
	}
}
