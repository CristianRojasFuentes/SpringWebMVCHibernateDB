package cl.stg.mp.modelos.servicio;

import java.util.List;

import cl.stg.mp.modelos.entidad.Producto;

public interface IProductoService {
	
	public List<Producto> lista();
	
	public Producto buscarPorId(int productoId);
	
	public void guardar(Producto producto);
	
	public void eliminar(Producto producto);
	
	

}
