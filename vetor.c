#include <stdio.h>
#include <locale.h>

main(){
// para escrever correto no codigo
    setlocale(LC_ALL,"");

    int vetor[14];
    int i, X, Y, soma, aux;

    printf("Preencha o valores para cada posi��o abaixo\n");
    for( i = 0; i < 15; i++){
        printf("vetor[%i]: ", i);
        scanf("%i", &vetor[i]);
    }

    do {
        printf("Informe a posi��o X: ");
        scanf("%i", &X);
        printf("Informe a posi��o Y: ");
        scanf("%i", &Y);

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
    printf("A soma dos valores contidos nas posi��es X e Y do vetor � %i", soma);

}
