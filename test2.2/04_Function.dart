int Fabonacci(int n){
  if(n==0||n==1) return n;
  return Fabonacci(n-1)+Fabonacci(n-2);
}

var result = Fabonacci(20);
