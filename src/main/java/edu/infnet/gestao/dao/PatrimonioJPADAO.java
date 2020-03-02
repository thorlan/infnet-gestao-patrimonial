package edu.infnet.gestao.dao;

import edu.infnet.gestao.modelo.Patrimonio;

public class PatrimonioJPADAO extends JpaDAO<Patrimonio, Integer> {

	public PatrimonioJPADAO() {
		super(Patrimonio.class);
	}
	
	
	
}
