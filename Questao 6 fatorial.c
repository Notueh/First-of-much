#include <stdio.h>
#include <locale.h>

main(){
// para escrever correto no codigo
    setlocale(LC_ALL,"");

    int n, fatorial;

    printf("Digite o n�mero que deseja saber seu fatorial: ");
    scanf("%d", &n);

    if (n < 0){
        printf("N�o existe fatorial de n�mero negativo");

    }else {
    for(fatorial = 1; n > 1; n = n - 1){
    fatorial = fatorial * n;
    }
     printf("\nO fatorial � %d.", fatorial);
}
}
