
package Suporte;

public class Veiculos {
    
    private String categorias;
    private String litragem;
    
    public Veiculos(String categorias, String litragem){
        this.categorias = categorias;
        this.litragem = litragem;
    }
    /**
     * @return the categorias
     */
    public String getCategorias() {
        return categorias;
    }

    /**
     * @param categorias the categorias to set
     */
    public void setCategorias(String categorias) {
        this.categorias = categorias;
    }

    /**
     * @return the litragem
     */
    public String getLitragem() {
        return litragem;
    }

    /**
     * @param litragem the litragem to set
     */
    public void setLitragem(String litragem) {
        this.litragem = litragem;
    }
}
