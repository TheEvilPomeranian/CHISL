#include <iostream>
#include <math.h>
using namespace std;
double f(double c) {
	return pow(c, 3) - 2 - log(c + 2);
}

/*double del(double c) {
	double f, f1;
	f = pow(c, 3) - 2 - log(c + 2);
	f1 = 3 * pow(c, 2) - 1 / (c + 2);
	return f / f1;
}*/

/*double f1(double c) {
	return 3 * pow(c, 2) - 1 / (c + 2);
}

double f2(double c) {
	return (3 * pow(c, 3) + 6 * pow(c, 2) - 1) / (c + 2);
}

double f2(double c) {
	
	return pow(log(c + 2) + 2, 0.333333333);
}*/

int main() {
	setlocale(LC_ALL, "ru");
	double a, b, e, x0, x;
	int i = 1;
	cout << "Введите концы отрезка: "; cin >> a >> b;
	cout << "Введите точность: "; cin >> e;
	/*while (abs(b - a) > e) {
		x = (a + b) / 2;
		if (f(x) * f(b) < 0) {
			a = x;
		}
		else {
			b = x;
		}
		i++;
	}
	x = (a + b) / 2;*/
	/*x = f2(a);
	while (abs(x - a) > e) {
		a = x;
		x = f2(a);
		i++;
	}*/
	/*if (a * f2(a) > 0) {
		x0 = a;
	}
	else {
		x0 = b;
	}
	//x = x0 + 2 * e;

	x = x0 - f(x0) / f1(x0);
	//x = x0 - del(x0);
	i++;
	while (abs(x - x0) > e) {
		x0 = x;
		x = x0 - f(x0) / f1(x0);
		i++;
	}*/
	x0 = a - (b - a) / (f(b) - f(a)) * f(a);
	x = a - (b - a) / (f(b) - f(a)) * f(a);
	do {
		x0 = x;
		if (f(b) * f(x0) < 0) {
			a = x0;
		}
		else {
			b = x0;
		}
		x = a - (b - a) / (f(b) - f(a)) * f(a);
		i++;
	} while (abs(x - x0)>e);

	cout << "\nКорень: " << x << endl;
	cout << "Точность: " << e << endl;
	cout << "Количесвто итераций: " << i << endl;
}
