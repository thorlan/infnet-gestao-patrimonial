package edu.infnet.gestao.servico;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import edu.infnet.gestao.dao.PatrimonioJPADAO;
import edu.infnet.gestao.modelo.Patrimonio;

public class PatrimonioService {

	private static Logger logger = LogManager.getLogger(PatrimonioService.class);

	private PatrimonioJPADAO dao;

	public PatrimonioService() {
		dao = new PatrimonioJPADAO();
	}

	public List<Patrimonio> getPatrimonios() {
		logger.info("Buscando patrimônios.");
		return dao.findAll();
	}

	public boolean save(Patrimonio patrimonio) {

		if (dao.save(patrimonio)) {
			logger.info("Patrimônio salvo com sucesso: " + patrimonio);
			return true;
		}

		logger.info("Ocorreu um erro ao salvar o patrimônio: " + patrimonio);
		return false;

	}

	public Patrimonio buscarPorId(Integer id) {
		return dao.find(id);
	}

	public boolean update(Patrimonio patrimonio) {

		if (dao.edit(patrimonio)) {
			logger.info("Patrimônio editado com sucesso: " + patrimonio);
			return true;
		}

		logger.info("Ocorreu um erro ao editar o patrimônio: " + patrimonio);
		return false;

	}

	public void delete(Integer id) {
		Patrimonio patrimonio = this.buscarPorId(id);
		
		dao.delete(patrimonio);
	}

}
