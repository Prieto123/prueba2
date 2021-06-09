package cl.inacap.Odiseo.DAO;

import java.io.BufferedReader; 
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.nio.file.Files;   
import java.nio.file.Path;     
import java.nio.file.Paths;    
import java.util.ArrayList;
import java.util.List;

import cl.inacap.Odiseo.DTO.CategoriaLibro;
import cl.inacap.Odiseo.DTO.Libros;

public class LibroDAO {
	
	private static List<Libros> libros = new ArrayList<Libros>();
	private static List<CategoriaLibro> categoriasLibros = new ArrayList<CategoriaLibro>();
	
	//Leer Datos de Personas.txt
	public static void leerTxt(boolean destacado) {
		Path archivoTxt = Paths.get("C:\\\\Users\\\\pablo\\\\eclipse-workspace\\\\prueba2\\\\src\\\\main\\\\java\\\\cl\\\\inacap\\\\Odiseo\\\\DAO\\\\Libros.txt");
		try {
			BufferedReader br = Files.newBufferedReader(archivoTxt);
			String linea;
			while((linea = br.readLine()) !=null) {
				if (destacado) {
					String[] datosDeLinea = linea.split(",");
					Libros libro = new Libros();
					libro.setIdLibro(Integer.parseInt(datosDeLinea[0]));
					libro.setNombreLibro(datosDeLinea[1]);
					libro.setAutorLibro(datosDeLinea[2]);
					libro.setCantPaginas(Integer.parseInt(datosDeLinea[3]));
					libro.setBooleanDestacado(Boolean.parseBoolean(datosDeLinea[4]));
					libro.setPortadaLibro(datosDeLinea[5]);
					libro.setEstrellas(Integer.parseInt(datosDeLinea[6]));
					if (datosDeLinea[7].equals("Suspenso")) {
						libro.setCategoria(categoriasLibros.get(0));
					} else if (datosDeLinea[7].equals("Novela")) {
						libro.setCategoria(categoriasLibros.get(1));
					} else if (datosDeLinea[7].equals("Terror")) {
						libro.setCategoria(categoriasLibros.get(2));
					} else if (datosDeLinea[7].equals("Para ninos")) {
						libro.setCategoria(categoriasLibros.get(3));
					} else if (datosDeLinea[7].equals("Thriller")) {
						libro.setCategoria(categoriasLibros.get(4));
					} else if (datosDeLinea[7].equals("Finanzas personales")) {
						libro.setCategoria(categoriasLibros.get(5));
					} else if (datosDeLinea[7].equals("Trolleo")) {
						libro.setCategoria(categoriasLibros.get(6));
					}
					libros.add(libro);
				} else {
					String[] datosDeLinea = linea.split(",");
					if (datosDeLinea[4].equals("true")) {
						Libros libro = new Libros();
						libro.setIdLibro(Integer.parseInt(datosDeLinea[0]));
						libro.setNombreLibro(datosDeLinea[1]);
						libro.setAutorLibro(datosDeLinea[2]);
						libro.setCantPaginas(Integer.parseInt(datosDeLinea[3]));
						libro.setBooleanDestacado(Boolean.parseBoolean(datosDeLinea[4]));
						libro.setPortadaLibro(datosDeLinea[5]);
						libro.setEstrellas(Integer.parseInt(datosDeLinea[6]));
						if (datosDeLinea[7].equals("Suspenso")) {
							libro.setCategoria(categoriasLibros.get(0));
						} else if (datosDeLinea[7].equals("Novela")) {
							libro.setCategoria(categoriasLibros.get(1));
						} else if (datosDeLinea[7].equals("Terror")) {
							libro.setCategoria(categoriasLibros.get(2));
						} else if (datosDeLinea[7].equals("Para ninos")) {
							libro.setCategoria(categoriasLibros.get(3));
						} else if (datosDeLinea[7].equals("Thriller")) {
							libro.setCategoria(categoriasLibros.get(4));
						} else if (datosDeLinea[7].equals("Finanzas personales")) {
							libro.setCategoria(categoriasLibros.get(5));
						} else if (datosDeLinea[7].equals("Trolleo")) {
							libro.setCategoria(categoriasLibros.get(6));
						}
						libros.add(libro);
						
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void escribirTxt() {
		File archivoTxt = new File("C:\\Users\\pablo\\eclipse-workspace\\prueba2\\src\\main\\java\\cl\\inacap\\Odiseo\\DAO\\Libros.txt");
		try {
			FileWriter w = new FileWriter(archivoTxt);
			BufferedWriter bw = new BufferedWriter(w);
			PrintWriter wr = new PrintWriter(bw);
			for (int i = 0; i < libros.size(); ++i) {
				Libros linea = libros.get(i);
				String lineaTxt = (linea+"\n");
				wr.append(lineaTxt);
			}
			wr.close();
			bw.close();
		} catch (Exception e) {
		}
	}
	
	public void crearCategoria() {
		
		categoriasLibros.clear();
		
		CategoriaLibro suspenso = new CategoriaLibro();
		suspenso.setIdCategoria(1);
		suspenso.setCategoriaLibro("Suspenso");
		categoriasLibros.add(suspenso);
		
		CategoriaLibro novela = new CategoriaLibro();
		novela.setIdCategoria(2);
		novela.setCategoriaLibro("Novela");
		categoriasLibros.add(novela);
		
		CategoriaLibro terror = new CategoriaLibro();
		terror.setIdCategoria(3);
		terror.setCategoriaLibro("Terror");
		categoriasLibros.add(terror);
		
		CategoriaLibro ninos = new CategoriaLibro();
		ninos.setIdCategoria(4);
		ninos.setCategoriaLibro("Para ninos");
		categoriasLibros.add(ninos);
		
		CategoriaLibro thriller = new CategoriaLibro();
		thriller.setIdCategoria(5);
		thriller.setCategoriaLibro("Thriller");
		categoriasLibros.add(thriller);
		
		CategoriaLibro finanzas = new CategoriaLibro();
		finanzas.setIdCategoria(6);
		finanzas.setCategoriaLibro("Finanzas personales");
		categoriasLibros.add(finanzas);
		
		CategoriaLibro trolleo = new CategoriaLibro();
		trolleo.setIdCategoria(7);
		trolleo.setCategoriaLibro("Trolleo");
		categoriasLibros.add(trolleo);
		
	}
	
	//Agregar Libro
	public void addLibro(Libros libro, String categoria) {
		
		if (categoria.equals("Suspenso")) {
			libro.setCategoria(categoriasLibros.get(0));
		} else if (categoria.equals("Novela")) {
			libro.setCategoria(categoriasLibros.get(1));
		} else if (categoria.equals("Terror")) {
			libro.setCategoria(categoriasLibros.get(2));
		} else if (categoria.equals("Para niños")) {
			libro.setCategoria(categoriasLibros.get(3));
		} else if (categoria.equals("Thriller")) {
			libro.setCategoria(categoriasLibros.get(4));
		} else if (categoria.equals("Finanzas personales")) {
			libro.setCategoria(categoriasLibros.get(5));
		} else if (categoria.equals("Trolleo")) {
			libro.setCategoria(categoriasLibros.get(6));
		}
		libro.setIdLibro(libros.size()+1);
		libros.add(libro);
		escribirTxt();
	}
	
	//Listar Libros
	public List<Libros> getLibros(boolean destacado) {
		crearCategoria();
		libros.clear();
		leerTxt(destacado);
		return libros;
	}
	
	//Seleccionar Libro
	public Libros selectLibro(int id) {
		return libros.get(id);
	}
	
	//Actualizar Libro
	public void updateLibro(Libros libro, int id, String categoria) {
		if (categoria.equals("Suspenso")) {
			libro.setCategoria(categoriasLibros.get(0));
		} else if (categoria.equals("Novela")) {
			libro.setCategoria(categoriasLibros.get(1));
		} else if (categoria.equals("Terror")) {
			libro.setCategoria(categoriasLibros.get(2));
		} else if (categoria.equals("Para niños")) {
			libro.setCategoria(categoriasLibros.get(3));
		} else if (categoria.equals("Thriller")) {
			libro.setCategoria(categoriasLibros.get(4));
		} else if (categoria.equals("Finanzas personales")) {
			libro.setCategoria(categoriasLibros.get(5));
		} else if (categoria.equals("Trolleo")) {
			libro.setCategoria(categoriasLibros.get(6));
		}
		libro.setIdLibro(id);
		libros.set(id, libro);
		escribirTxt();
	}
	
	//Eliminar Libro
	public void deleteLibro(int id) {
		libros.remove(id);
		escribirTxt();
	}

}
