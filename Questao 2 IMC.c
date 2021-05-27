#include <stdio.h>
#include <locale.h>
#include <math.h>

main(){
// para escrever correto no codigo
    setlocale(LC_ALL,"");

    float peso, altura, imc;
    printf("Informe a altura para cálculo do IMC :");
    scanf("%f", &altura);

    printf("Agora informa o peso para o cálculo: ");
    scanf("%f", &peso);

    imc = peso/(pow(altura,2));
// Verificação do IMC
    if (imc < 18.5){
        printf("Você está abaixo do peso!");
    }else if (imc >= 18.5 && imc < 25){
        printf("Você está com o peso normal!");
    }else if (imc >= 25 && imc < 30){
        printf("Você está acima do peso!");
    }else {
        printf("Você está obeso!");
    }

}
