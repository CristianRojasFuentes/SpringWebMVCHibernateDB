package cl.stg.mp.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import cl.stg.mp.modelos.entidad.Producto;
import cl.stg.mp.modelos.servicio.IProductoService;

/**
 * 
 * @author Cristian Rojas
 *
 */

@Controller
@RequestMapping("/catalogo")
@SessionAttributes("producto")
public class ProductoController {
	
	@Autowired
	private IProductoService productoService;
	
	@RequestMapping(value ="/listado.htm", method = RequestMethod.GET)
	@ModelAttribute("productos")
	public List<Producto> listado(Model model){
		
		model.addAttribute("titulo", "Listado de productos");
		
		return productoService.lista();
		
	}
	
	@RequestMapping(value = "/form.htm", method = RequestMethod.GET)
	public String setupForm(@RequestParam(value = "id", required = false, defaultValue = "0") int id,
			Model model) {
		Producto producto = null;
		
		if(id > 0 ) {
			producto = productoService.buscarPorId(id);
		}else {
			producto = new Producto();
		}
		model.addAttribute("producto", producto);
		return "catalogo/form";
	}

	@RequestMapping(value = "form.htm", method = RequestMethod.POST)
	public String processSubmit(Model model, @Valid Producto producto, BindingResult result, SessionStatus status) {
		if (result.hasErrors()) {
			return "catalogo/form";			
		}else {
			model.addAttribute("titulo", "Producto");
			productoService.guardar(producto);
			status.setComplete();
			return "redirect:listado.htm";
		}
	}
	
	@RequestMapping(value = "/eliminar.htm", method = RequestMethod.GET)
	public String eliminar(@RequestParam("id") int id) {
		Producto producto = productoService.buscarPorId(id);
		
		if(null != producto) {
			productoService.eliminar(producto);
		}
		
		return "redirect:listado.htm";
	}

}
