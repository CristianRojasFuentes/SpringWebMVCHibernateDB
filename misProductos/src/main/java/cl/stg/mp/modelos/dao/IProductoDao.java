package cl.stg.mp.modelos.dao;

import java.util.List;

import cl.stg.mp.modelos.entidad.Producto;

public interface IProductoDao {

	public List<Producto> listar();
	
	public Producto buscarPorId(int productoId);
	
	public void guardar(Producto producto);
	
	public void eliminar(Producto producto);
	
}
