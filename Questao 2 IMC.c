#include <stdio.h>
#include <locale.h>
#include <math.h>

main(){
// para escrever correto no codigo
    setlocale(LC_ALL,"");

    float peso, altura, imc;
    printf("Informe a altura para c�lculo do IMC :");
    scanf("%f", &altura);

    printf("Agora informa o peso para o c�lculo: ");
    scanf("%f", &peso);

    imc = peso/(pow(altura,2));
// Verifica��o do IMC
    if (imc < 18.5){
        printf("Voc� est� abaixo do peso!");
    }else if (imc >= 18.5 && imc < 25){
        printf("Voc� est� com o peso normal!");
    }else if (imc >= 25 && imc < 30){
        printf("Voc� est� acima do peso!");
    }else {
        printf("Voc� est� obeso!");
    }

}
