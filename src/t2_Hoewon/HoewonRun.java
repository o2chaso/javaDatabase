package t2_Hoewon;

public class HoewonRun {
	public static void main(String[] args) {
		HoewonDAO dao = new HoewonDAO();
		
//	'홍길동' 회원 자료 검색
		HoewonVO vo = dao.getNameSearch("호시마치 스이세이");
		
		System.out.println("검색 결과: ");
		if(vo != null) System.out.println("VO: " + vo);
		else System.out.println("자료가 없습니다.");
		
		dao.connClose();
	}
}
