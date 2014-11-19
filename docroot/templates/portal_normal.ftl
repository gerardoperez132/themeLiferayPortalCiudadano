<!DOCTYPE html>

<#include init />

<html class="<@liferay.language key="lang.dir" />" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	${theme.include(top_head_include)}
</head>

<body class="${css_class}">

<a href="#main-content" id="skip-to-content"><@liferay.language key="skip-to-content" /></a>

${theme.include(body_top_include)}

<#if is_signed_in>
	<@liferay.dockbar />
</#if>

<div id="wrapper">
	<header>
	    <!-- Seccion Membrete-->
		<section>
		<div id="logoGobierno"></div>
		<div id="logoGobierno2"></div>
		</section>
		
		<div id="lineSeparador">
		</div>
		
		<!-- Seccion Baner Web-->
		<section id="banner" role="banner">	
				<div id="heading">
					<h1 class="site-title">
						<a class="${logo_css_class}" href="${site_default_url}" title="<@liferay.language key="go-to" /> ${site_name}">
							<img alt="${logo_description}" height="${site_logo_height}" src="${site_logo}" width="${site_logo_width}" />
						</a>
		
						<#if show_site_name>
							<span class="site-name" title="<@liferay.language key="go-to" /> ${site_name}">
								${site_name}
							</span>
						</#if>
					</h1>
		
					<h2 class="page-title">
						<span>${the_title}</span>
					</h2>
				</div>
		
				<#if !is_signed_in>
					<a href="${sign_in_url}" id="sign-in" rel="nofollow">${sign_in_text}</a>
				</#if>
							<!-- Seccion Inf Pais-->
							<section class="datosPais">
								<ul>
									<li class="fecha">
									22.08.2014
									</li>
									<li class="relog">
									 Hora: <em class="hora">10:40 AM</em>
									</li>
									<li class="datosEconomicos">
									Tipo de Cambio Bsf./US$:1/Compra 6,43500 Venta 6,30
									</li>
								</ul>
							</section>
				<!--
				<#if has_navigation || is_signed_in>
					<#include "${full_templates_path}/navigation.ftl" />
				</#if>
				-->
		</section>
	</header>

	 <div id="content">
		<!-- <nav class="site-breadcrumbs" id="breadcrumbs">
			<h1>
				<span><@liferay.language key="breadcrumbs" /></span>
			</h1>

			<@liferay.breadcrumbs />
		</nav>
	-->
		<#if selectable>
			${theme.include(content_include)}
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			${theme.wrapPortlet("portlet.ftl", content_include)}
		</#if>
	</div>

	<footer id="footer" role="contentinfo">
		<!--<p class="powered-by">-->
		
		
		
			
				<a href="http://www.cnti.gob.ve/">
				<div class="cert"> </div>
				</a>
			
			<ul>
                  <li><a>Políticas de Privacidad</a></li>
					<li>&nbsp;|&nbsp;</li>
					<li><a>Términos de uso</a></li>
					<li>&nbsp;|&nbsp;</li>
					<li><a>Mapa del sitio</a></li>
					<li>&nbsp;|&nbsp;</li>
					<li><a>Contáctenos</a></li>
					<li>&nbsp;|&nbsp;</li>
					<li><a>Enlaces de Interés</a></li>
					<li>&nbsp;|&nbsp;</li>
					<li><a>Servicios</a></li>
					<li>&nbsp;|&nbsp;</li>
                  <p></p>
				</ul>


<ul>
					<li>Portal desarrollado y administrado por el Centro Nacional de Tecnologías de Información, adscrito al Ministerio del Poder Popular para Ciencia, Tecnología e Innovación</li>
				</ul>
			
			
			
			
			<!--<@liferay.language key="powered-by" /> <a href="http://www.liferay.com" rel="external">Liferay</a>-->
		<!-- </p> -->
		
	</footer>
</div>

${theme.include(body_bottom_include)}

${theme.include(bottom_include)}

</body>

</html>