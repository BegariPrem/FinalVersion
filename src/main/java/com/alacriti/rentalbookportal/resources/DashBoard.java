package com.alacriti.rentalbookportal.resources;

import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;

import com.alacriti.rentalbookportal.delegate.HomePageGenerator;

@Path("/home")
public class DashBoard {
	HomePageGenerator homePageGenerator=new HomePageGenerator();
	@Context HttpServletRequest httpServletRequest;
	@GET
	
	public Response getHomePage()
	{
		
		 return homePageGenerator.homePage(httpServletRequest);
	}
	
	@Path("/index")
	@GET
	public Response getUserHomePage()
	{
		return homePageGenerator.googleUserPage(httpServletRequest);
	}
	
	
}
