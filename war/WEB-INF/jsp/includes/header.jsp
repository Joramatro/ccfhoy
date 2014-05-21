<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<head>

	<!-- start: Meta -->
	<meta charset="utf-8">
	<meta name="robots" content="index,all" />
	<meta name="revisit-after" content="1 days" />
	<meta name="lang" content="es" />
	<!-- end: Meta -->
	
	<!-- start: Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- end: Mobile Specific -->
	<c:choose>
	<c:when test="${!empty publicacion && publicacion.tipo eq 'EB'}">
		<title>${publicacion.titulo} en análisis y online en Comprar Cafetera Express</title> 
		<meta name="description" content="${publicacion.descripcion} en Comprar Cafetera Express"/>
		<meta name="author" content="Jorge Amat" />
		<meta name="copyright" content="Comprar Cafetera Express" />
		<meta name="application-name" content="${publicacion.titulo} en Comprar Cafetera Express" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="${publicacion.titulo} en análisis y online en Comprar Cafetera Express"/>
		<meta property="og:description" content="${publicacion.descripcion} en Comprar Cafetera Express"/>
		<meta property="og:type" content="cafetera"/>
		<meta property="og:url" content="http://www.comprarcafeteraexpress.com/cafeteras/${publicacion.url}"/>
		<meta property="og:image" content="${publicacion.lImages[0]}"/>
		<meta property="og:email" content="hola@comprarcafeteraexpress.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@ComprarHoy">
		<meta name="twitter:creator" content="@Jorge_Amat1">
		<meta name="twitter:title" content="${publicacion.titulo}">
		<meta name="twitter:description" content="${publicacion.descripcion}">
		<meta name="twitter:image" content="${publicacion.lImages[0]}">
		<meta name="twitter:domain" content="comprarcafeteraexpress.com">
		<!-- end: Twitter tags -->
		<!--
		  <PageMap>
		    <DataObject type="thumbnail">
		      <Attribute name="src" value="${publicacion.lImages[0]}"/>
		      <Attribute name="width" value="100"/>
		      <Attribute name="height" value="130"/>
		    </DataObject>
		  </PageMap>
		-->
		<link rel="canonical" href="http://www.comprarcafeteraexpress.com/cafeteras/${publicacion.url}"/>
	</c:when>
	<c:when test="${!empty publicacion && publicacion.tipo eq 'AR'}">
		<title>${publicacion.titulo} en Comprar Cafetera Express</title> 
		<meta name="description" content="${publicacion.descripcion}"/>
		<meta name="author" content="Jorge Amat" />
		<meta name="copyright" content="Comprar Cafetera Express" />
		<meta name="application-name" content="${publicacion.titulo} en Comprar Cafetera Express" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="${publicacion.titulo}"/>
		<meta property="og:description" content="${publicacion.descripcion}"/>
		<meta property="og:type" content="articulos"/>
		<meta property="og:url" content="http://www.comprarcafeteraexpress.com/blog/${publicacion.url}"/>
		<meta property="og:image" content="${publicacion.lImages[0]}"/>
		<meta property="og:email" content="hola@comprarcafeteraexpress.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@ComprarHoy">
		<meta name="twitter:creator" content="@Jorge_Amat1">
		<meta name="twitter:title" content="${publicacion.titulo}">
		<meta name="twitter:description" content="${publicacion.descripcion}">
		<meta name="twitter:image" content="${publicacion.lImages[0]}">
		<meta name="twitter:domain" content="comprarcafeteraexpress.com">
		<!-- end: Twitter tags -->
		<!--
		  <PageMap>
		    <DataObject type="thumbnail">
		      <Attribute name="src" value="${publicacion.lImages[0]}"/>
		      <Attribute name="width" value="100"/>
		      <Attribute name="height" value="130"/>
		    </DataObject>
		  </PageMap>
		-->
		<link rel="canonical" href="http://www.comprarcafeteraexpress.com/blog/${publicacion.url}"/>
	</c:when>	
	<c:when test="${fn:contains(pageContext.request.requestURI, 'extras')}">
		<title>Extras y accesorios online para tu cafetera en Comprar Cafetera Express</title> 
		<meta name="description" content="Accede a todos los extras para comprar online accesorios para tu cafetera express, automática, de cápsulas o de café molido como un dispensador de cápsulas, paquetes de cápsulas ó filtros de café"/>
		<meta name="author" content="Jorge Amat" />
		<meta name="copyright" content="Comprar Cafetera Express" />
		<meta name="application-name" content="Extras en Comprar Cafetera Express" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="Extras y accesorios online para tu cafetera en Comprar Cafetera Express"/>
		<meta property="og:description" content="Accede a todos los extras para comprar online accesorios para tu cafetera express como un dispensador de cápsulas, paquetes de cápsulas ó filtros de café"/>
		<meta property="og:type" content="extras"/>
		<meta property="og:url" content="http://www.comprarcafeteraexpress.com/extras"/>
		<c:if test="${!empty publicaciones}">
			<meta property="og:image" content="${publicaciones[0].lImages[0]}"/>
		</c:if>
		<meta property="og:email" content="hola@comprarcafeteraexpress.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@ComprarHoy">
		<meta name="twitter:creator" content="@ComprarHoy">
		<meta name="twitter:title" content="Extras y accesorios para cafeteras en Comprar Cafetera Express">
		<meta name="twitter:description" content="Accede a todos los extras para comprar online accesorios a tu cafetera express como un dispensador de cápsulas, paquetes de cápsulas ó filtros de café">
		<c:if test="${!empty publicaciones}">
			<meta name="twitter:image" content="${publicaciones[0].lImages[0]}">
		</c:if>
		<meta name="twitter:domain" content="comprarcafeteraexpress.com">
		<!-- end: Twitter tags -->		
		<link rel="canonical" href="http://www.comprarcafeteraexpress.com/extras"/>
	</c:when>
		<c:when test="${fn:contains(pageContext.request.requestURI, 'sobre')}">
		<title>Sobre Nosotros y Comprar Cafetera Express</title> 
		<meta name="description" content="Toda la información sobre los que trabajamos en Comprar Cafetera Express, su experiencia y valores profesionales"/>
		<meta name="author" content="Jorge Amat" />
		<meta name="copyright" content="Comprar Cafetera Express" />
		<meta name="application-name" content="Sobre Nosotros en Comprar Cafetera Express" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="Sobre Nosotros en Comprar Cafetera Express"/>
		<meta property="og:description" content="Toda la información sobre los que trabajamos en Comprar Cafetera Express, su experiencia y valores profesionales"/>
		<meta property="og:type" content="sobre"/>
		<meta property="og:url" content="http://www.comprarcafeteraexpress.com/sobre"/>
		<meta property="og:image" content="/img/img-meta/logoGrande.jpg"/>
		<meta property="og:email" content="hola@comprarcafeteraexpress.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@ComprarHoy">
		<meta name="twitter:creator" content="@Jorge_Amat1">
		<meta name="twitter:title" content="Sobre nosotros en Comprar Cafetera Express">
		<meta name="twitter:description" content="Toda la información sobre los que trabajamos en Comprar Cafetera Express, su experiencia y valores profesionales">
		<meta name="twitter:image" content="/img/img-meta/logoGrande.jpg">
		<meta name="twitter:domain" content="comprarcafeteraexpress.com">
		<!-- end: Twitter tags -->
		<link rel="canonical" href="http://www.comprarcafeteraexpress.com/sobre"/>	
	</c:when>
	<c:when test="${fn:contains(pageContext.request.requestURI, 'contacta')}">
		<title>Contacta con Comprar Cafetera Express</title> 
		<meta name="description" content="Contacta con los que trabajamos en Comprar Cafetera Express"/>
		<meta name="author" content="Jorge Amat" />
		<meta name="copyright" content="Comprar Cafetera Express" />
		<meta name="application-name" content="Contacto en Comprar Cafetera Express" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="Contacta en Comprar Cafetera Express"/>
		<meta property="og:description" content="Contacta con los que trabajamos en Comprar Cafetera Express"/>
		<meta property="og:type" content="contacto"/>
		<meta property="og:url" content="http://www.comprarcafeteraexpress.com/contacto"/>
		<meta property="og:image" content="/img/img-meta/logoGrande.jpg"/>
		<meta property="og:email" content="hola@comprarcafeteraexpress.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@ComprarHoy">
		<meta name="twitter:creator" content="@Jorge_Amat1">
		<meta name="twitter:title" content="Contacta con nosotros en Comprar Cafetera Express">
		<meta name="twitter:description" content="Contacta con los que trabajamos en Comprar Cafetera Express">
		<meta name="twitter:image" content="/img/img-meta/logoGrande.jpg">
		<meta name="twitter:domain" content="comprarcafeteraexpress.com">
		<!-- end: Twitter tags -->
		<link rel="canonical" href="http://www.comprarcafeteraexpress.com/contacto"/>
	</c:when>
	
	<c:when test="${fn:contains(pageContext.request.requestURI, 'ebooks') && not empty param.filtro}">
		<title>Cafeteras espresso de tipo <%= request.getParameter("filtro").replaceAll("-"," ") %> en Comprar Cafetera Express</title> 
		<meta name="description" content="Análisis y precios de las mejores cafeteras espresso de tipo <%= request.getParameter("filtro").replaceAll("-"," ") %> para que puedas comprar y comparar online"/>
		<meta name="author" content="Jorge Amat" />
		<meta name="copyright" content="Comprar Cafetera Express" />
		<meta name="application-name" content="Cafeteras en Comprar Cafetera Express" />
		<!-- start: Facebook Open Graph -->		
		<meta property="og:title" content="Cafeteras espresso de tipo <%= request.getParameter("filtro").replaceAll("-"," ") %> en Comprar Cafetera Express"/>
		<meta property="og:description" content="Análisis y precios de las mejores cafeteras espresso de tipo <%= request.getParameter("filtro").replaceAll("-"," ") %> para que puedas comprar y comparar online"/>
		<meta property="og:type" content="cafetera"/>
		<meta property="og:url" content="http://www.comprarcafeteraexpress.com/cafeteras"/>
		<c:if test="${!empty publicaciones}">
			<c:if test="${!empty publicaciones[0].lImages}">
				<meta property="og:image" content="${publicaciones[0].lImages[0]}"/>
			</c:if>
		</c:if>
		<meta property="og:email" content="hola@comprarcafeteraexpress.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@ComprarHoy">
		<meta name="twitter:creator" content="@ComprarHoy">
		<meta property="twitter:title" content="Cafeteras espresso de tipo <%= request.getParameter("filtro").replaceAll("-"," ") %> en Comprar Cafetera Express"/>
		<meta name="twitter:description" content="Análisis y precios de las mejores cafeteras espresso de tipo <%= request.getParameter("filtro").replaceAll("-"," ") %> para que puedas comprar y comparar online"/>
		<c:if test="${!empty publicaciones}">
			<c:if test="${!empty publicaciones[0].lImages}">
				<meta name="twitter:image" content="${publicaciones[0].lImages[0]}">
			</c:if>
		</c:if>
		<meta name="twitter:domain" content="comprarcafeteraexpress.com">
		<!-- end: Twitter tags -->	
		<link rel="canonical" href="http://www.comprarcafeteraexpress.com/cafeteras"/>	
	</c:when>	
	
	<c:when test="${fn:contains(pageContext.request.requestURI, 'ebooks')}">
		<title>Cafeteras, precios y análisis en Comprar Cafetera Express</title> 
		<meta name="description" content="Análisis y precios de las mejores cafeteras express, máquinas de cafe automáticas, de cápsulas o de cafe molido y de las mejores marcas como Saeco, Senseo, Krups, Nescafe o Dolce Gusto para que puedas comprar y comparar online"/>
		<meta name="author" content="Jorge Amat" />
		<meta name="copyright" content="Comprar Cafetera Express" />
		<meta name="application-name" content="Cafeteras en Comprar Cafetera Express" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="Cafeteras, precios y análisis en Comprar Cafetera Express"/>
		<meta property="og:description" content="Análisis y precios de las mejores cafeteras express, máquinas de cafe automáticas, de cápsulas o de cafe molido y de las mejores marcas como Saeco, Senseo, Krups, Nescafe o Dolce Gusto para que puedas comprar y comparar online"/>
		<meta property="og:type" content="cafetera"/>
		<meta property="og:url" content="http://www.comprarcafeteraexpress.com/cafeteras"/>
		<c:if test="${!empty publicaciones}">
			<c:if test="${!empty publicaciones[0].lImages}">
				<meta property="og:image" content="${publicaciones[0].lImages[0]}"/>
			</c:if>
		</c:if>
		<meta property="og:email" content="hola@comprarcafeteraexpress.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@ComprarHoy">
		<meta name="twitter:creator" content="@ComprarHoy">
		<meta name="twitter:title" content="Análisis y precios de cafeteras express, automáticas, de cápsulas y de cafe molido">
		<meta name="twitter:description" content="Análisis y precios de las mejores cafeteras express, máquinas de café automáticas, de cápsulas o de café molido y de las mejores marcas como Saeco, Senseo, Krups, Nescafe o Dolce Gusto para que puedas comprar y comparar online">
		<c:if test="${!empty publicaciones}">
			<c:if test="${!empty publicaciones[0].lImages}">
				<meta name="twitter:image" content="${publicaciones[0].lImages[0]}">
			</c:if>
		</c:if>
		<meta name="twitter:domain" content="comprarcafeteraexpress.com">
		<!-- end: Twitter tags -->	
		<link rel="canonical" href="http://www.comprarcafeteraexpress.com/cafeteras"/>	
	</c:when>
	
	<c:when test="${fn:contains(pageContext.request.requestURI, 'blog') && not empty param.filtro}">
		<title>Artículos y opinión sobre cafeteras express de tipo <%= request.getParameter("filtro").replaceAll("-"," ") %> en Comprar Cafetera Express</title> 
		<meta name="description" content="Opinión y artículos en nuestro blog de las mejores cafeteras expres en la actualidad de tipo <%= request.getParameter("filtro").replaceAll("-"," ") %> para que puedas comprar online"/>
		<meta name="author" content="Jorge Amat" />
		<meta name="copyright" content="Comprar Cafetera Express" />
		<meta name="application-name" content="Blog en Comprar Cafetera Express" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="Artículos y opinión sobre cafeteras express de tipo <%= request.getParameter("filtro").replaceAll("-"," ") %> en Comprar Cafetera Express"/> 
		<meta property="og:description" content="Opinión y artículos en nuestro blog de las mejores cafeteras expres en la actualidad de tipo <%= request.getParameter("filtro").replaceAll("-"," ") %> para que puedas comprar online"/>
		<meta property="og:type" content="articulo"/>
		<meta property="og:url" content="http://www.comprarcafeteraexpress.com/blog"/>
		<c:if test="${!empty publicaciones}">
			<c:if test="${!empty publicaciones[0].lImages}">
				<meta property="og:image" content="${publicaciones[0].lImages[0]}"/>
			</c:if>
		</c:if>
		<meta property="og:email" content="hola@comprarcafeteraexpress.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@ComprarHoy">
		<meta name="twitter:creator" content="@ComprarHoy">
		<meta property="twitter:title" content="Artículos y opinión sobre cafeteras express de tipo <%= request.getParameter("filtro").replaceAll("-"," ") %> en Comprar Cafetera Express"/> 
		<meta property="twitter:description" content="Opinión y artículos en nuestro blog de las mejores cafeteras expres en la actualidad de tipo <%= request.getParameter("filtro").replaceAll("-"," ") %> para que puedas comprar online"/>
		<c:if test="${!empty publicaciones}">
			<c:if test="${!empty publicaciones[0].lImages}">
				<meta name="twitter:image" content="${publicaciones[0].lImages[0]}">
			</c:if>
		</c:if>
		<meta name="twitter:domain" content="comprarcafeteraexpress.com">
		<!-- end: Twitter tags -->
		<link rel="canonical" href="http://www.comprarcafeteraexpress.com/blog"/>		
	</c:when>
	
	<c:when test="${fn:contains(pageContext.request.requestURI, 'blog')}">
		<title>Artículos y opinión sobre cafeteras express en Comprar Cafetera Express</title> 
		<meta name="description" content="Opinión y artículos en nuestro blog de las mejores cafeteras express, automaticas, de cafe molido y de las mejores marcas como Saeco, Senseo, Krups, Nescafe o Dolce Gusto en la actualidad para que puedas comprar online"/>
		<meta name="author" content="Jorge Amat" />
		<meta name="copyright" content="Comprar Cafetera Express" />
		<meta name="application-name" content="Blog en Comprar Cafetera Express" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="Opinión y detalles sobre cafeteras express para comprar tu maquina de cafe online"/>
		<meta property="og:description" content="Opinión y artículos en nuestro blog de las mejores cafeteras express, automaticas, de cafe molido y de las mejores marcas como Saeco, Senseo, Krups, Nescafe o Dolce Gusto en la actualidad para que puedas comprar online"/>
		<meta property="og:type" content="articulo"/>
		<meta property="og:url" content="http://www.comprarcafeteraexpress.com/blog"/>
		<c:if test="${!empty publicaciones}">
			<c:if test="${!empty publicaciones[0].lImages}">
				<meta property="og:image" content="${publicaciones[0].lImages[0]}"/>
			</c:if>
		</c:if>
		<meta property="og:email" content="hola@comprarcafeteraexpress.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@ComprarHoy">
		<meta name="twitter:creator" content="@ComprarHoy">
		<meta name="twitter:title" content="Opinión y artículos sobre cafeteras express para comprar tu cafetera express preferida">
		<meta name="twitter:description" content="Opinión y artículos en nuestro blog de las mejores cafeteras express, automaticas, de cafe molido y de las mejores marcas como Saeco, Senseo, Krups, Nescafe o Dolce Gusto en la actualidad para que puedas comprar online">
		<c:if test="${!empty publicaciones}">
			<c:if test="${!empty publicaciones[0].lImages}">
				<meta name="twitter:image" content="${publicaciones[0].lImages[0]}">
			</c:if>
		</c:if>
		<meta name="twitter:domain" content="comprarcafeteraexpress.com">
		<!-- end: Twitter tags -->
		<link rel="canonical" href="http://www.comprarcafeteraexpress.com/blog"/>		
	</c:when>
	<c:when test="${fn:contains(pageContext.request.requestURI, 'privacidad')}">
		<title>Política de privacidad de Comprar Cafetera Express</title> 
		<meta name="description" content="Política de privacidad y condiciones de uso de Comprar Cafetera Express"/>
		<meta name="author" content="Jorge Amat" />
		<meta name="copyright" content="Comprar Cafetera Express" />
		<meta name="application-name" content="Política privacidad Comprar Cafetera Express" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="Política de privacidad de Comprar Cafetera Express"/>
		<meta property="og:description" content="Política de privacidad y condiciones de uso de Comprar Cafetera Express"/>
		<meta property="og:url" content="http://www.comprarcafeteraexpress.com/politica-de-privacidad"/>
		<meta property="og:email" content="hola@comprarcafeteraexpress.com/"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@ComprarHoy">
		<meta name="twitter:creator" content="@ComprarHoy">
		<meta name="twitter:title" content="Política de privacidad de Comprar Cafetera Express">
		<meta name="twitter:description" content="Política de privacidad y condiciones de uso de Comprar Cafetera Express">
		<meta name="twitter:domain" content="comprarcafeteraexpress.com/">
		<link rel="canonical" href="http://www.comprarcafeteraexpress.com/politica-de-privacidad"/>
		<!-- end: Twitter tags -->		
	</c:when>	
	<c:otherwise>
		<title>Bienvenido a Comprar Cafetera Express - Análisis y opinión sobre las mejores cafeteras para comprar online</title> 
		<meta name="description" content="Información para que puedas comprar online tu cafetera express o espresso, automática, de cápsulas o de café molido adecuada y de las mejores marcas, cafeteras Saeco, Senseo, Krups, Nescafe o cafeteras Dolce Gusto, así como extras para tu maquina de cafe ya sean dispensadores de cápsulas, paquetes de cápsulas o filtros de café"/>
		<meta name="author" content="Comprar Cafetera Express" />
		<meta name="copyright" content="Comprar Cafetera Express" />
		<meta name="application-name" content="cafeteras express en Comprar Cafetera Express" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="Bienvenido a Comprar Cafetera Express - Análisis y opinión sobre las mejores cafeteras para comprar online"/>
		<meta property="og:description" content="Información para que puedas comprar tu cafetera express o espresso online de las mejores marcas como cafeteras Saeco, Senseo, Krups, Nescafe o Dolce Gusto, así como extras para tu maquina de cafe como dispensadores de cápsulas, paquetes de cápsulas o filtros de café"/>
		<meta property="og:type" content="principal"/>
		<meta property="og:url" content="http://www.comprarcafeteraexpress.com"/>
		<meta property="og:image" content="/img/img-meta/logoGrande.jpg"/>
		<meta property="og:email" content="hola@comprarcafeteraexpress.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@ComprarHoy">
		<meta name="twitter:creator" content="@ComprarHoy">
		<meta name="twitter:title" content="Cafeteras express online, cafeteras automaticas, de cápsulas o de café molido en Comprar Cafetera Express">
		<meta name="twitter:description" content="Información para que puedas comprar tu cafetera express online adecuada a lo que necesitas y de las mejores marcas como Saeco, Senseo, Krups, Nescafe o Dolce Gusto, así como extras para tu maquina de cafe como dispensadores de cápsulas, paquetes de cápsulas o filtros de café">
		<meta name="twitter:image" content="/img/img-meta/logoGrande.jpg">
		<meta name="twitter:domain" content="comprarcafeteraexpress.com">
		<!-- end: Twitter tags -->				
		<link rel="canonical" href="http://www.comprarcafeteraexpress.com"/>
	</c:otherwise>		
	</c:choose>
	<link rel="alternate" type="application/rss+xml" title="Comprar Cafetera Express RSS Feed" href="http://www.comprarcafeteraexpress.com/rssfeed" />
	<link rel="author" href="https://plus.google.com/+JorgeAmat" />
	<link rel="publisher" href="https://www.google.com/+Comprarebookhoy" />
	<style>
	@font-face {
	  font-family: 'Droid Sans';
	  font-style: normal;
	  font-weight: 400;
	  src: local('Droid Sans'), local('DroidSans'), url(http://themes.googleusercontent.com/static/fonts/droidsans/v3/s-BiyweUPV0v-yRb-cjciBsxEYwM7FgeyaSgU71cLG0.woff) format('woff');
	}
	@font-face {
	  font-family: 'Droid Sans';
	  font-style: normal;
	  font-weight: 700;
	  src: local('Droid Sans Bold'), local('DroidSans-Bold'), url(http://themes.googleusercontent.com/static/fonts/droidsans/v3/EFpQQyG9GqCrobXxL-KRMQFhaRv2pGgT5Kf0An0s4MM.woff) format('woff');
	}
	</style>
    <!-- start: CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link href="/css/parallax-sliderv1.css" rel="stylesheet">   
	<%@ include file="/WEB-INF/jsp/includes/styles.jsp"%>
	<!-- end: CSS -->

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-44277459-1', 'comprarcafeteraexpress.com');
ga('require', 'displayfeatures');
ga('send', 'pageview');

</script>
</head>
<body>
	
	<!--start: Header -->
	<header>
		
		<!--start: Container -->
		<div class="container">
			<%-- <div>
				<script async src="http://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
				<!-- includes ch -->
				<ins class="adsbygoogle"
				     style="display:inline-block;width:970px;height:90px"
				     data-ad-client="ca-pub-3168560600423825"
				     data-ad-slot="2942822544"></ins>
				<script>
				(adsbygoogle = window.adsbygoogle || []).push({});
				</script>
			</div>--%>
			<!--start: Navbar -->
			<div class="navbar navbar-inverse">
	    		<div class="navbar-inner">
	          		<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
	            		<span class="icon-bar"></span>
	            		<span class="icon-bar"></span>
	            		<span class="icon-bar"></span>
	          		</a>
					<a class="brand" href="/"><i class="ico-coffe-cup circle"></i>Comprar Cafetera <span>Express</span>.</a>
	          		<div class="nav-collapse collapse">
	            		<ul id="menuSuperior" class="nav" style="margin-right:-30px;">
							<li id="menuInicio">
	                			<a onClick="ga('send', 'event', 'Menu Superior', 'Menu Inicio', 'Inicio');" href="/">Inicio</a>
	              			</li>
	              			<li id="menuCafeteras"><a onClick="ga('send', 'event', 'Menu Superior', 'Menu Cafeteras', 'Cafeteras');" title="Cafeteras" href="/cafeteras">Cafeteras</a></li>
							<li class="dropdown">
	                			<a href="#" class="dropdown-toggle" data-toggle="dropdown">Destacados<b class="caret"></b></a>
	                			<ul class="dropdown-menu">
	                				<c:forEach var="publicacion" items="${publicacionesDestacadas}" varStatus="status" end="5">
										<c:choose>
											<c:when test="${publicacion.tipo eq 'EB' }">
												<li><a onClick="ga('send', 'event', 'Menu Superior', '${publicacion.titulo}', 'Destacados');" title="${publicacion.titulo}" href="/cafeteras/${publicacion.url}">${publicacion.titulo}</a></li>
											</c:when>	
											<c:otherwise>
												<li><a onClick="ga('send', 'event', 'Menu Superior', '${publicacion.titulo}', 'Destacados');" title="${publicacion.titulo}" href="/blog/${publicacion.url}">${publicacion.titulo}</a></li>
											</c:otherwise>
										</c:choose>										
	                  				</c:forEach>	                					                  				
								</ul>
	              			</li>
	              			<li id="menuExtras"><a onClick="ga('send', 'event', 'Menu Superior', 'Menu Extras', 'Extras');" title="Extras" href="/extras">Extras</a></li>
	              			<li id="menuBlog"><a onClick="ga('send', 'event', 'Menu Superior', 'Menu Blog', 'Blog');" title="Blog" href="/blog">Blog</a></li>	              																			
	              			<li id="menuSobre"><a onClick="ga('send', 'event', 'Menu Superior', 'Menu Sobre', 'Sobre');" title="Sobre Nosotros" href="/sobre">Acerca de</a></li>
	              			<li id="menuContacto"><a onClick="ga('send', 'event', 'Menu Superior', 'Menu Contacto', 'Contacto');" title="Contacto" href="/contacto">Contacto</a></li>
	              			<li style="margin-top: -8px;"><a onClick="ga('send', 'event', 'Menu Superior', 'Menu RSS', 'RSS');" href="#newsletter" accesskey="r"><img src="/img/rssmenu.png" alt="RSS"></a></li>
	            		</ul>
	          		</div>
	        	</div>
	      	</div>
			<!--end: Navbar -->
						
		</div>
		<!--end: Container-->			
	<div id="banGooHeader" class="iframe_wrap" style="width: 74%; margin:0 auto;">
		<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
		<!-- superior 1 skyscraper cafetera -->
		<ins class="adsbygoogle"
		     style="display:inline-block;width:728px;height:90px"
		     data-ad-client="ca-pub-3168560600423825"
		     data-ad-slot="8273478147"></ins>
		<script>
		(adsbygoogle = window.adsbygoogle || []).push({});
		</script>
		
	</div>			
	</header>
	<!--end: Header-->