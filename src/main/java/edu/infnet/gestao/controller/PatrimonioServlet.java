package edu.infnet.gestao.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import edu.infnet.gestao.modelo.Patrimonio;
import edu.infnet.gestao.servico.PatrimonioService;

@WebServlet(urlPatterns = "/PatrimonioSrv")
public class PatrimonioServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private static Logger logger = LogManager.getLogger(PatrimonioServlet.class);

	private PatrimonioService service;

	public PatrimonioServlet() {
		service = new PatrimonioService();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		logger.info("Requisição recebida em PatrimonioSrv - doGet");
		
		String paginaResposta = "pages/home.jsp";
		String titulo = "Novo patrimônio";
		String botao = "Cadastrar";

		String action = req.getParameter("action");
		logger.info("action = " + action);
		String nextFormAction = "";

		if ("delete".equals(action)) {
			paginaResposta = "pages/delete.jsp";
			Integer id = Integer.parseInt(req.getParameter("patrimonioId"));
			Patrimonio patrimonio = service.buscarPorId(id);
			req.setAttribute("patrimonio", patrimonio);
		} else if ("new".equals(action)) {
			paginaResposta = "pages/patrimonio_form.jsp";
			nextFormAction = "new";
		} else if ("edit".equals(action)) {
			paginaResposta = "pages/patrimonio_form.jsp";
			Integer patrimonioId = Integer.parseInt(req.getParameter("patrimonioId"));
			Patrimonio patrimonio = service.buscarPorId(patrimonioId);
			req.setAttribute("patrimonio", patrimonio);
			titulo = "Editar patrimonio";
			botao = "Editar";
			nextFormAction = "edit";
		} else {
			List<Patrimonio> patrimonios = service.getPatrimonios();
			req.setAttribute("patrimonios", patrimonios);
			patrimonios.forEach(p -> logger.info(p));
		}

		req.setAttribute("action", nextFormAction);
		req.setAttribute("titulo", titulo);
		req.setAttribute("botao", botao);

		req.getRequestDispatcher(paginaResposta).forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		logger.info("Requisição recebida em PatrimonioSrv - doPost");
		String paginaResposta = "pages/home.jsp";

		String action = req.getParameter("action");
		
		if ("new".equals(action)) {

			Patrimonio patrimonio = getPatrimonioFromRequest(req);

			if (service.save(patrimonio)) {
				req.getSession().setAttribute("sucesso", "O patrimônio " + patrimonio.getDescricao() + " foi cadastrado com sucesso");
			} else {
				req.getSession().setAttribute("erro", "Erro ao cadastrar patrimônio");
			}

		} else if ("edit".equals(action)) {

			Patrimonio patrimonio = getPatrimonioFromRequest(req);
			Integer id = Integer.parseInt(req.getParameter("id"));
			patrimonio.setId(id);
			
			if (service.update(patrimonio)) {
				req.getSession().setAttribute("sucesso", "O patrimônio " + patrimonio.getDescricao() + " foi alterado com sucesso");
			} else {
				req.getSession().setAttribute("erro", "Erro ao alterar o patrimônio");
			}
		} else if ("delete".equals(action)) {
			
			Integer id = Integer.parseInt(req.getParameter("id"));
			service.delete(id);
			req.getSession().setAttribute("sucesso", "O patrimônio foi deletado com sucesso");
		}

		List<Patrimonio> patrimonios = service.getPatrimonios();
		req.getSession().setAttribute("patrimonios", patrimonios);
		resp.sendRedirect(paginaResposta);
	}

	private Patrimonio getPatrimonioFromRequest(HttpServletRequest req) throws IOException, ServletException {

		String descricao = req.getParameter("descricao");
		String localizacao = req.getParameter("localizacao");

		return new Patrimonio(descricao, localizacao);
	}

}
