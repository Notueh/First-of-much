#include <stdio.h>
#include <locale.h>
//fun��o para recursividade
int fatorialN(int n){
    if (n == 0 || n == 1){
        return 1;
    } else {
        return n*fatorialN(n-1);
    }
}

main(){
// para escrever correto no codigo
    setlocale(LC_ALL,"");

    int n;

    printf("Digite o n�mero que deseja saber seu fatorial: ");
    scanf("%d", &n);
    printf("\nO fatorial � %d.", fatorialN(n));
}
