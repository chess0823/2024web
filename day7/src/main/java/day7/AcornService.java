package day7;

import java.util.ArrayList;

import oracle.net.aso.m;

public class AcornService {
	
	
	AcornDAO dao = new AcornDAO();
	
	//학생정보 가져오기(매개변수, 반환)
	
	public ArrayList<Acorn> getMemberListTmp(){
		
		ArrayList<Acorn> list = new ArrayList<>();
		
		list.add(new Acorn("kjg","1234","강지훈"));
		list.add(new Acorn("gy","5234","김기엽"));
		list.add(new Acorn("sjin","4762","김수진"));

		return list;
		
	}
	
	public ArrayList<Acorn> getMemberListReal(){
		
		ArrayList<Acorn> list = dao.selectAll();
		
		return list;	
	}
	
	public void registerMember(Acorn acorn) {
		dao.insertMember(acorn);
	}
//	public static void main(String[] args) {
//		AcornService service = new AcornService();
//		ArrayList<Acorn> list = service.getMemberListReal();
//		
//		for(int i=0; i<list.size(); i++) {
//			System.out.println(list.get(i));
//		}
//	}

	public Acorn getMember(String id) {
		Acorn acorn =dao.selectOne(id);
		return acorn;
	}
	
	public void modifyMember(String id, String newpw) {
		dao.update(id, newpw);
	}
}