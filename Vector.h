[13:57, 28/2/2024] Elias T: #include "Vector.h"
#include <iostream>

 using namespace std;

 Vector::Vector(void) {} // constructor
 Vector::~Vector(void) {} //destructor
void Vector::set_n(int _n)
{
	n = _n;
}
int Vector::get_n()
{
	return n;
}
void Vector::cargarVector(int vec[], int n) {//metodos
		for (int i = 0; i < n; i++) {
	cout << "vec[" << i << "] =";
	cin >> vec[i];
	}
}

void Vector::mostrarVector(int vec[], int n) {
	for (int i = 0; i < n; i++) {
		cout << vec[i] << ", ";
	}
	cout << endl;
}

void Vector::ordenarVector(int vec[], int n) {
	int aux;
	for (int i = 0; i < (n - 1); i++) {
		for (int j = i; j < n; j++) {
			if (vec[i] > vec[j]) {
				aux = vec[i];
				vec[i] = vec[j];
				vec[j] = aux;
			}
		}
	}
} //vector.ccp
[13:57, 28/2/2024] Elias T: #pragma once
class Vector
{
private:
	int vec[10], n;
public:
	Vector(void); // constructor
	~Vector(void); //destructor
	void set_n(int _n);
	int get_n();
	void cargarVector(int vec[], int n); //metodos
	void mostrarVector(int vec[], int n);
	void ordenarVector(int vec[], int n);
};
