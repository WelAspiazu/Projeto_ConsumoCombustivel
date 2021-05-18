<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Suporte.Veiculos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consumo Combustível</title>
    </head>
    <body>
        <h3>Calculo de Consumo de Combustível</h3>
        <div id="dados">
            <form action="recebecalculo.jsp" method="get" target="result">
                <h4>
                    Para calcular a média em quilômetros por litro, vamos 
                    dividir os quilômetros percorridos pela quantidade de litros 
                    que a bomba marcou no abastecimento.</h4>  
                <select name="opcao">
                    <option value="etanol">Etanol</option>
                    <option value="gasolina">Gasolina</option>
                    <option value="Gasolina Podium">Gasolina Podium</option>
                    <option value="diesel">Diesel</option>
                </select>
                <br>
                <br>
                
                <table>
                    <tr>
                        <td>Kilometros rodados: </td>
                        <td><input type="text" name="kmrodado"/></td>
                    </tr>
                    <tr>
                        <td>Litros abastecidos: </td>
                        <td><input type="text" name="litros"/></td>
                    </tr>
                </table>
                <br>
                <input type="submit" value="Calcular"/>
            </form>
        </div>
        <br>
        <div id="retorno">
            <iframe name="result" width="350" height="50"> </iframe>
        </div> 
        <h4> O consumo de combustível e a quantidade de litros abastecidos pode 
            variar de acordo com a categoria de seu veículo e sua capacidade do 
            tanque de combustível. </h4>
        <%
            List<Veiculos> vl = new ArrayList<Veiculos>();
            vl.add(new Veiculos("Moto", "17 Litros"));
            vl.add(new Veiculos("Hatch", "55 Litros"));
            vl.add(new Veiculos("SUV", "64 Litros"));
            vl.add(new Veiculos("Perua", "70 Litros"));
            vl.add(new Veiculos("Picape", "80 Litros"));
            vl.add(new Veiculos("Furgão", "90 Litros"));
            vl.add(new Veiculos("Caminhão", "330 Litros"));
            
            for(Veiculos valor: vl){
                out.print(valor.getCategorias() + " - ");
                out.print(valor.getLitragem()+ "<br>");
                out.print("------------------- <br>");
            }
        %>
    </body>
</html>