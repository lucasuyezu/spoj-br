#include <stdio.h>

int read_integer(){
  int var;
  scanf("%d", &var);
  return var;
}

int main(){
  int n = read_integer();
  while( n != 0 ) {
    
    int a[n], i;
    for( i = 0; i < n; i++ )
      a[i] = read_integer();

    int result = 0;
    int max_ending_here = 0;

    for( i = 0; i < n; i++ ) {
      max_ending_here += a[i];
      max_ending_here = max_ending_here > 0 ? max_ending_here : 0;
      result = result > max_ending_here ? result : max_ending_here;
    }
    if ( result > 0 )
      printf ( "The maximum winning streak is %d.\n", result );
    else
      printf( "Losing streak.\n" );

    n = read_integer();
  }
  return 0;
}
