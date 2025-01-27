<%--
- menu.jsp
-
- Copyright (c) 2019 Rafael Corchuelo.
-
- In keeping with the traditional purpose of furthering education and research, it is
- the policy of the copyright owner to permit non-commercial use and redistribution of
- this software. It has been tested carefully, but it is not guaranteed for any particular
- purposes.  The copyright owner does not offer any warranties or representations, nor do
- they accept any liabilities with respect to them.
--%>

<%@page language="java" import="acme.framework.helpers.PrincipalHelper,acme.entities.roles.Provider,acme.entities.roles.Consumer"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:menu-bar code="master.menu.home">
	<acme:menu-left>
		<acme:menu-option code="master.menu.anonymous" access="isAnonymous()">
			<acme:menu-suboption code="master.menu.anonymous.edubotdom-favourite-link" action="https://www.formula1.com/"/>
			<!-- BotiaBulletin links -->
			<acme:menu-suboption code="master.menu.anonymous.createBotiaBulletin" action="/anonymous/botia_bulletin/create"/>
			<acme:menu-suboption code="master.menu.anonymous.listBotiaBulletin" action="/anonymous/botia_bulletin/list"/>
			<!-- Notice links -->
			<acme:menu-suboption code="master.menu.anonymous.listNotice" action="/anonymous/notice/list"/>
			<!-- Technologies' links -->
			<acme:menu-suboption code="master.menu.anonymous.listTechnology" action="/anonymous/technology/list"/>
			<acme:menu-suboption code="master.menu.anonymous.listTechnologyBySector" action="/anonymous/technology/list_by_sector"/>			
			<acme:menu-suboption code="master.menu.anonymous.listTechnologyByStars" action="/anonymous/technology/list_by_stars"/>
			<!-- Tools' links -->
			<acme:menu-suboption code="master.menu.anonymous.listTool" action="/anonymous/tool/list"/>
			<acme:menu-suboption code="master.menu.anonymous.listToolBySector" action="/anonymous/tool/list_by_sector"/>			
			<acme:menu-suboption code="master.menu.anonymous.listToolByStars" action="/anonymous/tool/list_by_stars"/>
		</acme:menu-option>

		<acme:menu-option code="master.menu.administrator" access="hasRole('Administrator')">
			<acme:menu-suboption code="master.menu.administrator.user-accounts" action="/administrator/user-account/list"/>
			<!-- Notice links -->
			<acme:menu-suboption code="master.menu.administrator.listNotice" action="/administrator/notice/list"/>
			<!-- Customizarion links -->
			<acme:menu-suboption code="master.menu.administrator.customization" action="/administrator/customization/list"/>
			<!-- Dashboard link -->
			<acme:menu-suboption code="master.menu.administrator.dashboard" action="/administrator/dashboard/show"/>
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.administrator.shutdown" action="/master/shutdown"/>
		</acme:menu-option>

		<acme:menu-option code="master.menu.provider" access="hasRole('Provider')">
			<acme:menu-suboption code="master.menu.provider.favourite-link" action="http://www.example.com/"/>
		</acme:menu-option>

		<acme:menu-option code="master.menu.consumer" access="hasRole('Consumer')">
			<acme:menu-suboption code="master.menu.consumer.favourite-link" action="http://www.example.com/"/>
		</acme:menu-option>
	</acme:menu-left>

		<acme:menu-option code="master.menu.authenticated" access="hasRole('Authenticated')">
			<!-- Notice links -->
			<acme:menu-suboption code="master.menu.authenticated.listNotice" action="/authenticated/notice/list"/>
			<!-- Inquiry links -->
			<acme:menu-suboption code="master.menu.authenticated.listInquiry" action="/authenticated/inquiry/list"/>
			<!-- Overture links -->
			<acme:menu-suboption code="master.menu.authenticated.listOverture" action="/authenticated/overture/list"/>	
			<!-- Notice links -->
			<acme:menu-suboption code="master.menu.authenticated.listNotice" action="/authenticated/notice/list"/>
			<!-- Technologies' links -->
			<acme:menu-suboption code="master.menu.authenticated.listTechnology" action="/authenticated/technology/list"/>
			<acme:menu-suboption code="master.menu.authenticated.listTechnologyBySector" action="/authenticated/technology/list_by_sector"/>			
			<acme:menu-suboption code="master.menu.authenticated.listTechnologyByStars" action="/authenticated/technology/list_by_stars"/>						
			<!-- Tools' links -->
			<acme:menu-suboption code="master.menu.authenticated.listTool" action="/authenticated/tool/list"/>
			<acme:menu-suboption code="master.menu.authenticated.listToolBySector" action="/authenticated/tool/list_by_sector"/>			
			<acme:menu-suboption code="master.menu.authenticated.listToolByStars" action="/authenticated/tool/list_by_stars"/>
			<!-- Challenges' links -->
			<acme:menu-suboption code="master.menu.authenticated.listChallenges" action="/authenticated/challenge/list"/>	
		</acme:menu-option>

	<acme:menu-right>
		<acme:menu-option code="master.menu.sign-up" action="/anonymous/user-account/create" access="isAnonymous()"/>
		<acme:menu-option code="master.menu.sign-in" action="/master/sign-in" access="isAnonymous()"/>

		<acme:menu-option code="master.menu.user-account" access="isAuthenticated()">
			<acme:menu-suboption code="master.menu.user-account.general-data" action="/authenticated/user-account/update"/>
			<acme:menu-suboption code="master.menu.user-account.become-provider" action="/authenticated/provider/create" access="!hasRole('Provider')"/>
			<acme:menu-suboption code="master.menu.user-account.provider" action="/authenticated/provider/update" access="hasRole('Provider')"/>
			<acme:menu-suboption code="master.menu.user-account.become-consumer" action="/authenticated/consumer/create" access="!hasRole('Consumer')"/>
			<acme:menu-suboption code="master.menu.user-account.consumer" action="/authenticated/consumer/update" access="hasRole('Consumer')"/>
		</acme:menu-option>

		<acme:menu-option code="master.menu.sign-out" action="/master/sign-out" access="isAuthenticated()"/>
	</acme:menu-right>
</acme:menu-bar>

