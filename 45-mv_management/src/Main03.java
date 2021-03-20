import org.apache.ibatis.session.SqlSession;

import study.java.mvmanagement.MyBatisConnectionFactory;
import study.java.mvmanagement.model.Professor;

/**
 * @FileName : Main03.java
 * @Author : Hari
 * @Description : 데이터 삭제 기능을 수행하는 메인
 */
public class Main03 {

	public static void main(String[] args) {
		// 1) 데이터베이스 접속
		// --> import org.apache.ibatis.session.SqlSession;
		// --> import study.java.myschool.MyBatisConnectionFactory;
		SqlSession sqlSession = MyBatisConnectionFactory.getSqlSession();
		
		// 2) 삭제할 데이터 --> Main01에서 출력된 값을 입력하세요.
		Professor model = new Professor();
		model.setProfno(9909);
		
		// 3) 데이터 삭제
		// --> DepartmentMapper라는 namespace를 갖는 XML에서
		//	   remove_department라는 id값을 갖는 <delete> 태그를 호출.
		int result = sqlSession.delete(
				"ProfessorMapper.remove_professor", model);
		
		// 4) 결과 판별
		System.out.println(result + "개의 데이터 삭제됨");
		
		// 5) DB 접속 해제
		// 페이지 종료 전에 데이터의 변경사항을 저장(commit)하고
		// 데이터베이스 접속 해제하기
		sqlSession.commit();
		sqlSession.close();
	}

}
