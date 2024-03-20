#pragma once
#define MAX 20
class Matriz{
private:
	int fil, col, M1[MAX][MAX], M2[MAX][MAX];
public:
	Matriz();
	~Matriz();
	void set_fil(int F);
	int get_fil();
	void set_col(int C);
	int get_col();
	void cargar_matriz(int F1, int C1, int A[MAX][MAX], int B[MAX][MAX]);
	void mostrar_matriz(int F1, int C1, int A[MAX][MAX], int B[MAX][MAX]);
	double promedio_matriz(int F1, int C1, int A[MAX][MAX]);
	double mayor_valor(int F1, int C1, int A[MAX][MAX]);
	void suma_matriz(int F1, int C1, int A[MAX][MAX], int B[MAX][MAX], int c[MAX][MAX]);
};
