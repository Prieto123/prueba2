package cl.inacap.Odiseo.Controllers;

import java.math.BigInteger;
import java.security.MessageDigest;

public class Funciones {
	
	
	static void main(String[] args ) {
		System.out.println("aca "+EncriptarMD5("holamundo"));
	
	}
	
	
	
	static String EncriptarMD5(String Palabra) {
		String  PalabraCodificada="";
		
		try {
			MessageDigest md=MessageDigest.getInstance("MD5");
			byte[] messageDigest=md.digest(Palabra.getBytes());
			BigInteger no=new BigInteger(1,messageDigest);
			String  hash=no.toString(16);
			while(hash.length() <32) {
				hash="0"+hash;
			}
			PalabraCodificada=hash;
			
			
		}catch(Exception e) {
			
		}
		
		return PalabraCodificada;
	}

}
