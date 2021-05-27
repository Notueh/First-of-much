#include <stdio.h>
#include <locale.h>

main(){
// para escrever correto no codigo
    setlocale(LC_ALL,"");

    int n, fatorial;

    printf("Digite o número que deseja saber seu fatorial: ");
    scanf("%d", &n);

    if (n < 0){
        printf("Não existe fatorial de número negativo");

    }else {
    for(fatorial = 1; n > 1; n = n - 1){
    fatorial = fatorial * n;
    }
     printf("\nO fatorial é %d.", fatorial);
}
}
