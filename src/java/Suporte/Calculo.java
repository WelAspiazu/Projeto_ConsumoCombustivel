
package Suporte;


public class Calculo {
    public String combustivel(double kmrodados, double litro, String opcao){
        double resultado = 0;
        if(opcao.equals("etanol")){
            resultado = kmrodados / litro;
        }
        else if(opcao.equals("gasolina")){
            resultado = kmrodados / litro;
        }
        else if(opcao.equals("gasolinaPodium")){
            resultado = kmrodados / litro;
        }
        else if(opcao.equals("diesel")){
            resultado = kmrodados / litro;
        }
    return String.format("Seu consumo com " + opcao + " é: %.2f", resultado);
    }
}
