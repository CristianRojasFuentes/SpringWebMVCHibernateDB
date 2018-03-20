package cl.stg.mp.modelos.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import cl.stg.mp.modelos.entidad.Producto;

@Repository("ProductoDao")
public class ProductoDaoImplement implements IProductoDao{

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Producto> listar() {
		return (List<Producto>) hibernateTemplate.find("from Producto");
	}

	@Override
	public Producto buscarPorId(int productoId) {
		return hibernateTemplate.get(Producto.class, productoId);
	}

	@Override
	public void guardar(Producto producto) {
		hibernateTemplate.saveOrUpdate(producto);
	}

	@Override
	public void eliminar(Producto producto) {
		hibernateTemplate.delete(producto);
	}

}
