package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Helper{
	public boolean validate(HttpServletRequest request,HttpServletResponse response){
		boolean corretto = true;
		String id, pwd;
		String idError, pwdError;
		id = request.getParameter("id");
		pwd = request.getParameter("pwd");
		
		if(id.equals("")){
			corretto = false;
			idError = "id utente: Campo Obbligatorio";
			request.setAttribute("idError", idError);
		}
		if(pwd.equals("")){
			corretto = false;
			pwdError = "password: Campo Obbligatorio";
			request.setAttribute("pwdError",  pwdError);
		}

		return corretto;
	}
}
