package service;

import java.util.ArrayList;

import dao.OlimpiadaDAO;
import model.Olimpiada;
import model.Pais;

public class OlimpiadaDadosService {
	OlimpiadaDAO dao;
	
	public OlimpiadaDadosService(){
		dao = new OlimpiadaDAO();
	}/*
	public ArrayList<Olimpiada> listarPaises(){
		return dao.listarPaises();
	}*/
	/*
	public ArrayList<Pais> listarPaises(String chave){
		return dao.listarPaises(chave);
	}
	*/
}
