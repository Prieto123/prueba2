package cl.inacap.Odiseo.DTO;

import cl.inacap.Odiseo.DTO.CategoriaLibro;

public class Libros {
	
	int idLibro;
	String nombreLibro;
	String autorLibro;
	int cantPaginas;
	boolean booleanDestacado;
	String portadaLibro;
	int estrellas;
	CategoriaLibro categoria;
	
	public int getIdLibro() {
		return idLibro;
	}
	public void setIdLibro(int idLibro) {
		this.idLibro = idLibro;
	}
	public String getNombreLibro() {
		return nombreLibro;
	}
	public void setNombreLibro(String nombreLibro) {
		this.nombreLibro = nombreLibro;
	}
	public String getAutorLibro() {
		return autorLibro;
	}
	public void setAutorLibro(String autorLibro) {
		this.autorLibro = autorLibro;
	}
	public int getCantPaginas() {
		return cantPaginas;
	}
	public void setCantPaginas(int cantPaginas) {
		this.cantPaginas = cantPaginas;
	}
	public boolean isBooleanDestacado() {
		return booleanDestacado;
	}
	public void setBooleanDestacado(boolean booleanDestacado) {
		this.booleanDestacado = booleanDestacado;
	}
	public String getPortadaLibro() {
		return portadaLibro;
	}
	public void setPortadaLibro(String portadaLibro) {
		this.portadaLibro = portadaLibro;
	}
	public int getEstrellas() {
		return estrellas;
	}
	public void setEstrellas(int estrellas) {
		this.estrellas = estrellas;
	}
	public CategoriaLibro getCategoria() {
		return categoria;
	}
	public void setCategoria(CategoriaLibro categoria) {
		this.categoria = categoria;
	}
	
	public String toString() {
		return idLibro + "," + nombreLibro + "," + autorLibro + "," + cantPaginas + "," + booleanDestacado + "," + portadaLibro + "," + estrellas + "," + categoria;
		
	}

}
