package cl.stg.mp.modelos.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cl.stg.mp.modelos.dao.IProductoDao;
import cl.stg.mp.modelos.entidad.Producto;

@Service("productoService")
public class ProductoServiceImplement implements IProductoService{

	@Autowired
	private IProductoDao productoDao;
	
	@Override
	@Transactional(readOnly = true)
	public List<Producto> lista() {
		return productoDao.listar();
	}

	@Override
	@Transactional(readOnly = true)
	public Producto buscarPorId(int productoId) {
		return productoDao.buscarPorId(productoId);
	}

	@Override
	@Transactional
	public void guardar(Producto producto) {
		productoDao.guardar(producto);
	}

	@Override
	@Transactional
	public void eliminar(Producto producto) {
		productoDao.eliminar(producto);
	}

}
