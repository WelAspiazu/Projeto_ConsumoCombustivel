
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
                    <option value="gasolinaPodium">Gasolina Podium</option>
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
            <iframe name="result" width="390" height="200"> </iframe>
        </div>            
    </body>
</html>