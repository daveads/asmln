int f (int n){
		if (n < 2) return 2;

		return f ( n -1 ) * n;
}
