package cl.inacap.Odiseo.DTO;

public class CategoriaLibro {
	
	int idCategoria;
	String categoriaLibro;
	
	public int getIdCategoria() {
		return idCategoria;
	}
	public void setIdCategoria(int idCategoria) {
		this.idCategoria = idCategoria;
	}
	public String getCategoriaLibro() {
		return categoriaLibro;
	}
	public void setCategoriaLibro(String categoriaLibro) {
		this.categoriaLibro = categoriaLibro;
	}

	public String toString() {
		return categoriaLibro;
	}
}
