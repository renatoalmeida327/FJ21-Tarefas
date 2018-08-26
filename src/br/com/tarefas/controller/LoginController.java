package br.com.tarefas.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.tarefas.dao.JdbcUsuarioDao;
import br.com.tarefas.modelo.Usuario;

@Controller
public class LoginController {

	@RequestMapping("loginForm")
	public String loginForm() {
		return "formulario-login";
	}
	
	@RequestMapping("menu")
	public String menu() {
		return "menu";
	}
	
	@RequestMapping("efetuarLogin")
	public String efetuarLogin(Usuario user, HttpSession session) {
		if(new JdbcUsuarioDao().existeUsuario(user)) {
			session.setAttribute("usuarioLogado", user);
			return "menu";
		}
		return "redirect:loginForm";
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:loginForm";
	}
	
}
