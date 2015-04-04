package com.amatic.ch.controller;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.amatic.ch.constants.WebConstants;
import com.amatic.ch.dto.Publicacion;
import com.amatic.ch.exception.UnknownResourceException;
import com.amatic.ch.utils.WebUtils;

@Controller
public class BlogController extends PublicacionAbstract {

    @RequestMapping(value = { "/blog" }, method = { RequestMethod.GET })
    public String getPublicaciones(ModelMap model, HttpServletRequest request,
	    HttpServletResponse response) throws IOException {

	setPublicaciones(model, WebConstants.SessionConstants.ARTICULO);

	return "blog";
    }

    @RequestMapping(value = { "/extras" }, method = { RequestMethod.GET })
    public String getAccesorios(ModelMap model, HttpServletRequest request,
	    HttpServletResponse response) throws IOException {

	setPublicaciones(model, WebConstants.SessionConstants.ACCESORIO);

	return "extras";
    }

    @RequestMapping(value = { "/blog/{url}" }, method = RequestMethod.GET)
    public String cargarPublicacion2(ModelMap model, @PathVariable String url,
	    HttpServletRequest request, HttpServletResponse response)
	    throws IOException, NoSuchAlgorithmException {

	setPublicacion(url, request, model);

	return "articulo";
    }

    @RequestMapping(value = { "/blog/{url}/nuevoComentario" }, method = { RequestMethod.POST })
    public void guardarComentario2(ModelMap model,
	    @RequestParam("url") String url,
	    @RequestParam("nombre") String nombre,
	    @RequestParam("email") String email,
	    @RequestParam("puntos") String puntos,
	    @RequestParam("comentario") String comentario,
	    @RequestParam("web") String web,
	    @RequestParam("nbrComment") String nbrComment,
	    HttpServletRequest request, HttpServletResponse response)
	    throws Exception {

	guardarComentarioPub(request, url, nombre, email, puntos, comentario,
		web, nbrComment, response);

	response.sendRedirect("/blog/" + url);

    }

    @RequestMapping(value = { "/cafeteras/{url}" }, method = RequestMethod.GET)
    public String cargarPublicacione3(ModelMap model, @PathVariable String url,
	    HttpServletRequest request, HttpServletResponse response)
	    throws IOException, NoSuchAlgorithmException {

	setPublicacion(url, request, model);

	return "ebook";
    }

    @RequestMapping(value = { "/cafeteras/{url}/nuevoComentario" }, method = { RequestMethod.POST })
    public void guardarComentarioe3(ModelMap model,
	    @RequestParam("url") String url,
	    @RequestParam("nombre") String nombre,
	    @RequestParam("email") String email,
	    @RequestParam("puntos") String puntos,
	    @RequestParam("comentario") String comentario,
	    @RequestParam("web") String web,
	    @RequestParam("nbrComment") String nbrComment,
	    HttpServletRequest request, HttpServletResponse response)
	    throws Exception {

	guardarComentarioPub(request, url, nombre, email, puntos, comentario,
		web, nbrComment, response);

	response.sendRedirect("/cafeteras/" + url);

    }

    @RequestMapping(value = { "/cafeteras" }, method = { RequestMethod.GET })
    public String getPublicacionese3(ModelMap model,
	    HttpServletRequest request, HttpServletResponse response)
	    throws IOException {

	setPublicaciones(model, WebConstants.SessionConstants.EBOOK);

	return "ebooks";
    }

    @RequestMapping(value = { "/venta/{tipo}/{url}" }, method = { RequestMethod.GET })
    public String getVenta(ModelMap model, @PathVariable String url,
	    @PathVariable String tipo, HttpServletRequest request,
	    HttpServletResponse response) throws IOException,
	    NoSuchAlgorithmException {
	String originalUrl = url;
	if (url.endsWith("-2")) {
	    originalUrl = originalUrl.replace("-2", "");
	}
	if (url.endsWith("-3")) {
	    originalUrl = originalUrl.replace("-3", "");
	}
	String key = WebUtils.SHA1(originalUrl.replaceAll("-", " "));
	Publicacion publicacion = null;
	if (tipo.equals("principal")) {
	    publicacion = publicacionService.getPublicacion(key,
		    WebConstants.SessionConstants.EBOOK);
	    if (publicacion == null) {
		publicacion = publicacionService.getPublicacion(key,
			WebConstants.SessionConstants.ARTICULO);
	    }
	} else if (tipo.equals("extra")) {
	    publicacion = publicacionService.getPublicacion(key,
		    WebConstants.SessionConstants.ACCESORIO);
	} else if (tipo.equals("marca")) {
	    publicacion = new Publicacion();
	    if (url.equals("logo1")) {
		publicacion.setScript(WebConstants.SessionConstants.logo1);
		publicacion.setScript2(WebConstants.SessionConstants.logo1img);
	    } else if (url.equals("logo2")) {
		publicacion.setScript(WebConstants.SessionConstants.logo2);
		publicacion.setScript2(WebConstants.SessionConstants.logo2img);
	    } else if (url.equals("logo3")) {
		publicacion.setScript(WebConstants.SessionConstants.logo3);
		publicacion.setScript2(WebConstants.SessionConstants.logo3img);
	    } else if (url.equals("logo4")) {
		publicacion.setScript(WebConstants.SessionConstants.logo4);
		publicacion.setScript2(WebConstants.SessionConstants.logo4img);
	    } else if (url.equals("logo5")) {
		publicacion.setScript(WebConstants.SessionConstants.logo5);
		publicacion.setScript2(WebConstants.SessionConstants.logo5img);
	    } else if (url.equals("logo6")) {
		publicacion.setScript(WebConstants.SessionConstants.logo6);
		publicacion.setScript2(WebConstants.SessionConstants.logo6img);
	    } else if (url.equals("logo7")) {
		publicacion.setScript(WebConstants.SessionConstants.logo7);
		publicacion.setScript2(WebConstants.SessionConstants.logo7img);
	    } else if (url.equals("logo8")) {
		publicacion.setScript(WebConstants.SessionConstants.logo8);
		publicacion.setScript2(WebConstants.SessionConstants.logo8img);
	    } else if (url.equals("logo9")) {
		publicacion.setScript(WebConstants.SessionConstants.logo9);
		publicacion.setScript2(WebConstants.SessionConstants.logo9img);
	    } else if (url.equals("logo10")) {
		publicacion.setScript(WebConstants.SessionConstants.logo10);
		publicacion.setScript2(WebConstants.SessionConstants.logo10img);
	    } else {
		publicacion = null;
	    }
	}

	if (publicacion == null) {
	    String uri = request.getRequestURI();
	    throw new UnknownResourceException("No existe la ruta: " + uri);
	    // return "channelNotFound";
	}

	StringBuffer mensaje = new StringBuffer();
	Enumeration<String> headerNames = request.getHeaderNames();
	boolean existsAccept = false;
	boolean existsCookie = false;
	boolean existsReferer = false;
	boolean condition1 = false;
	boolean condition2 = false;
	boolean condition3 = false;
	boolean condition4 = false;
	while (headerNames.hasMoreElements()) {
	    String headerName = headerNames.nextElement();
	    if (headerName.equals("Accept")) {
		existsAccept = true;
	    }
	    if (headerName.equals("Cookie")) {
		existsCookie = true;
	    }
	    if (headerName.equals("Referer")) {
		existsReferer = true;
	    }
	    mensaje.append(headerName);
	    String headerValue = request.getHeader(headerName);
	    if (headerName.equals("X-AppEngine-Country")
		    && headerValue.equals("US")) {
		condition1 = true;
	    }
	    if (headerName.equals("X-AppEngine-Region")
		    && headerValue.equals("?")) {
		condition2 = true;
	    }
	    if (headerName.equals("X-AppEngine-City")
		    && headerValue.equals("?")) {
		condition3 = true;
	    }
	    if (headerName.equals("X-AppEngine-Country")
		    && headerValue.equals("ZZ")) {
		condition4 = true;
	    }
	    if (headerName.equals("User-Agent")
		    && headerValue.contains("Zookabot")) {
		existsAccept = false;
	    }
	    mensaje.append(", " + headerValue);
	    mensaje.append("\n");
	}
	mensaje.append("ip: " + WebUtils.getClienAddress(request) + "\n");
	if (condition1 && condition2 && condition3 && !existsCookie) {
	    // mensaje.append("NO ENVIADO A VENTAS");
	    // Mail.sendMail(mensaje.toString(), "CEH " +
	    // request.getRequestURI());
	    return null;
	} else if (existsAccept && !existsCookie && !existsReferer
		&& condition4) {
	    // bot chungo
	    // mensaje.append("NO ENVIADO Blue Coat");
	    // Mail.sendMail(mensaje.toString(), "CCH " +
	    // request.getRequestURI());
	    return null;
	} else if (existsAccept) {
	    // Mail.sendMail(mensaje.toString(), "CCH " +
	    // request.getRequestURI());
	    model.addAttribute("publicacion", publicacion);
	    if (url.endsWith("-2")) {
		return "venta/venta2";
	    } else if (url.endsWith("-3")) {
		return "venta/venta3";
	    } else {
		return "venta/venta";
	    }
	} else {
	    // mensaje.append("NO ENVIADO A VENTAS POR NO TENER ACCEPT");
	    // Mail.sendMail(mensaje.toString(), "CMH " +
	    // request.getRequestURI());

	    return null;
	}

    }

}
