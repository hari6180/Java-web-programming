import org.apache.ibatis.session.SqlSession;

import study.java.mvmanagement.MyBatisConnectionFactory;
import study.java.mvmanagement.model.Movie;

/**
 * @FileName : Main01.java
 * @Author : Hari
 * @Description : 데이터 입력기능을 수행하는 메인
 */
public class Main01 {

	public static void main(String[] args) {
		// 1) 데이터베이스 접속
		// --> import study.java.myschool.MyBatisConnectionFactory;
		// --> import org.apache.ibatis.session.SqlSession;
		SqlSession sqlSession = MyBatisConnectionFactory.getSqlSession();
		
		// 2) INSERT를 수행할 데이터 생성
		// --> Beans에 생성자를 정의하지 않으면 필요한
		//	   데이터만 setter로 추가할 수 있다.
		// --> import study.java.myschool.model.Department;
		Movie model = new Movie();
		model.setTitle("니모를찾아서");
		model.setMade_year("2014-01-12");
		model.setCountry("미국");
		model.setRunning_time("03:22:11");
		model.setOpendate("2015-05-14");
		model.setProducer("디즈니");
		model.setDistributor("좋은영화사");
		model.setDcode(201);
		model.setAcode(301);
		
		// 3) 데이터 저장
		// DepartmentMapper라는 namespace를 갖는 XML에서
		// id값이 add_department인 <insert> 태그를 호출한다.
		sqlSession.insert("MovieMapper.add_Movie", model);
		// 이 때, 저장할 데이터를 담고 있는 Beans를 파라미터로 전달하고,
		// 자동으로 생성된 PK는 Beans에 저장된다.
		int result = model.getMcode();
		
		// 4) 결과 판별
		// --> 리턴값이 0이라면 내부적으로 예외가 발생된 상황으로
		// 	   간주해야한다.
		System.out.println(result + "번 데이터 저장됨");
		
		// 5) DB 접속 해제
		// 페이지 종료 전에 데이터의 변경사항을 저장(commit)하고
		// 데이터베이스 접속 해제하기
		sqlSession.commit();
		sqlSession.close();

	}

}
