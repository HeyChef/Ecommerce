<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri = "http://java.sun.com/jstl/core_rt" prefix = "c" %>
<%@ page import="fr.epsi.eboutique.business.entity.Produit" %>
<%@ page import="fr.epsi.eboutique.business.entity.CommandeLigne" %>
<%@ page pageEncoding="utf-8" %>

<html>
<head>
<spring:url value="/assets/bootstrap/css/bootstrap.min.css" var="bootstrap" />
<spring:url value="/assets/css/styles.css" var="main" />
<link rel="stylesheet" href="${bootstrap}">
<link rel="stylesheet" href="${main}">
</head>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>

	<!-- <main class="container"> -->
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-10">
					<div class="row">
						<div class="col-md-3"><h2>Votre Panier</h2></div>
			        	<div class="col-md-5"></div>
						<div class="col-md-2">Prix</div>
	        			<div class="col-md-2">Quantité</div>
					</div>
					<hr>
			        <c:forEach var="commandeLigne" items="${commande.getLignes()}">
			        	<a href="<%=request.getContextPath()%>/mobile/${commandeLigne.getProduit().identifier}">
				        	<div class="product-container">
					        	<div class="row">
						        	<div class="col-md-3">
							      		<img src='<c:out value="${commandeLigne.getProduit().image}"/>'/>
						        	</div>
						        	<div class="col-md-5">
						        		<c:out value="${commandeLigne.getProduit().libelle}"/>
				        				<div class="marque-div">Vendu par <c:out value="${commandeLigne.getProduit().marque.getLibelle()}"/></div>
				        			</div>
									<div class="col-md-2">
				        				<div class="prix-div"><c:out value="${commandeLigne.getProduit().prix}"/> €</div>
				        			</div>
				        			<div class="col-md-2">
				        				<div class="prix-div"><c:out value="${commandeLigne.quantite}"/></div>
				        			</div>
		        				</div>
		        			</div>
	        			</a>
	      			</c:forEach>			
      			</div>
			</div>
		</div>
	<!-- <main> -->
</body>
</html>