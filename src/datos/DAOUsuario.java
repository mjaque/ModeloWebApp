package datos;

import javax.persistence.Query;

import org.hibernate.Session;

import negocio.Usuario;

public class DAOUsuario {

	public static Usuario Login(String nombre, String clave) {
		Usuario resultado = null;
		try {
			Session sesion = ORM.INSTANCE.openSession();
			Query query = sesion.createQuery("from Usuario where nombre = :usuario and clave = MD5(:clave) ");
			query.setParameter("usuario", nombre);
			query.setParameter("clave", clave);
			resultado = (Usuario)query.getSingleResult();
		} catch (Exception e) {
			System.out.println("El usuario no existe");
		}
		return resultado;
	}

}
