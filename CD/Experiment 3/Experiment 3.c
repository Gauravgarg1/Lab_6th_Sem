#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include<math.h>

int n[11], i, j, c, k, h, l, h1, f, h2, temp1[12], temp2[12], count = 0, ptr = 0;
char a[20][20], s[5][8];
int tr[5][2], ecl[5][8], st[5], flag;

void ecls (int b[10], int x) {
  i = 0;
  k = -1;
  flag = 0;

  while (l < x) {
    n[++k] = b[l];
    i = b[l];
    h = k + 1;

    a:
    for (j = i; j <= 11; j++) {
      if (a[i][j] == 'e') {
        n[++k] = j;
      }


      if (j == 11 && h <= k) {
        i = n[h];
        h++;

        goto a;
      }
    }

    l++;
  }


  for (i = 0; i < k; i++)


  for (j = i + 1; j < k; j++)


  if (n[i] > n[j])


    {


  c = n[i];


  n[i] = n[j];


  n[j] = c;


  }


  for (i = 0; i < ptr; i++)


  for (j = 0; j < k; j++)


        {


  if (ecl[i][j] != n[j])


      {


  if (i < count)


          {

  i++;


  j = 0;


  }


        else


  goto b;


  }


    else if ((ecl[i][j] == n[j]) && (j == k))


      {


  tr[ptr][f] = st[i];


  flag = 1;


  break;


  }

  }


  b:if (flag == 0)


      {

  for (i = 0; i <= k; i++)


  ecl[count][i] = n[i];


  st[count] = count + 65;


  tr[ptr][f] = st[count];


  count++;


  }

}




void
mova (int g)
{

h1 = 0;


for (i = 0; i < 7; i++)


    {

if (ecl[g][i] == 3)


temp1[h1++] = 4;


if (ecl[g][i] == 8)


temp1[h1++] = 9;


}


printf ("\n move(%c,a):", st[g]);


for (i = 0; i < h1; i++)


printf ("%d", temp1[i]);


f = 0;


ecls (temp1, h1);


}




void
movb (int g)
{


h2 = 0;


for (i = 0; i < 7; i++)


    {


if (ecl[g][i] == 5)


temp2[h2++] = 6;


if (ecl[g][i] == 9)


temp2[h2++] = 10;


if (ecl[g][i] == 10)


temp2[h2++] = 11;

}


printf ("move(%c,b):", st[g]);


for (i = 0; i < h2; i++)


printf ("%d", temp2[i]);


f = 1;


ecls (temp2, h2);


}




int main() {
  printf ("\n the no. of states in nfa (a/b)*abb are:11");


  for (i = 0; i <= 11; i++)
    for (j = 0; j <= 11; j++)
      a[i][j] = '\0';

  a[1][2] = 'e';
  a[1][6] = 'e';
  a[2][4] = 'e';
  a[2][8] = 'e';
  a[3][4] = 'a';
  a[4][8] = 'e';
  a[5][8] = 'b';
  a[5][10] = 'e';
  a[6][10] = 'e';
  a[7][4] = 'e';
  a[7][10] = 'e';
  a[9][10] = 'a';
  a[10][10] = 'b';
  a[11][10] = 'b';
  printf ("\n the transmission table is as follows");
  printf ("\n states  1 2 3 4 5 6 7 8 9 10 11");

  for (i = 1; i <= 11; i++) {
    printf ("\n %d \t", i);

    for (j = 1; j <= 11; j++) {
      if (a[i][j]) {
        printf ("%c", a[i][j]);
      }
      else {
        printf(" ");
      }
    }
  }
}
