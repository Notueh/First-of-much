#include <stdio.h>
#include <locale.h>

main(){
// para escrever correto no codigo
    setlocale(LC_ALL,"");

    int vetor[14];
    int i, X, Y, soma, aux;
// para preencher o vetor
    printf("Preencha o valores para cada posi��o abaixo\n");
    for( i = 0; i < 15; i++){
        printf("vetor[%d]: ", i);
        scanf("%d", &vetor[i]);
    }
// para informar e validar as posi��es
    do {
        printf("Informe a posi��o X: ");
        scanf("%d", &X);
        printf("Informe a posi��o Y: ");
        scanf("%d", &Y);

        if((X < 0 || X >= 15)||(Y < 0 || Y >= 15)) {
        printf("Posi��es Invalidas!\n");
        aux = 1;
        }else {
        aux = 0;
        }
    }while (aux == 1);

    soma = vetor[X] + vetor[Y];

    printf("O valor contido na posi��o X � %i.\n", vetor[X]);
    printf("O valor contido na posi��o Y � %i.\n", vetor[Y]);
    printf("A soma dos valores contidos nas posi��es X e Y do vetor � %d", soma);

}
