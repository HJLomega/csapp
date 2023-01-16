#include <iostream>
#include <stdio.h>
int f4(int di, int si, int dx) {
	int bx;
	int ax = dx - si;
	ax += (ax >> 31) & 0x1;
	ax >>= 1;
	bx = ax + si;
	if (di < bx) {
		return f4(di, si, bx - 1) + bx;
	}
	else if (di == bx) {
		return bx;
	}
	else {
		return f4(di, 1 + bx, dx) + bx;
	}
}
int f41(int di, int si, int dx) {
	int bx;
	int ax = dx - si;
	ax += (ax >> 31) & 0x1;
	ax >>= 1;
	bx = ax + si;
	if (di < 7) {
		return f4(di, si, bx - 1) + bx;
	}
	else if (di <= bx) {
		return bx;
	}
	else {
		return f4(di, 1 + bx, dx) + bx;
	}
}
void test() {
	char a[100];
	gets_s(a, 100);
	for (int i=0;i<=5;i++)
	std::cout << (int)a[i] << "\n";
}
void f4s() {
	for (int i = 0; i <= 14; i++)
		std::cout << "func4(" << i << ",0,14) = " << f41(i, 0, 14) << "\n";
}
int main() {
	f4s();
	std::cin.get();
}
