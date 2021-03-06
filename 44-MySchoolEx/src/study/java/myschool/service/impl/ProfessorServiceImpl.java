package study.java.myschool.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import study.java.myschool.model.Professor;
import study.java.myschool.model.Student;
import study.java.myschool.service.ProfessorService;

public class ProfessorServiceImpl implements ProfessorService {
	/** MyBatis의 Mapper를 호출하기 위한 SqlSession 객체 */
	// --> import org.apache.ibatis.session.SqlSession;
	private SqlSession session;
	
	/** 생성자. SqlSession을 전달받는다. */
	public ProfessorServiceImpl(SqlSession session) {
		this.session = session;
	}
	
	/** 교수 저장하기 -> 저장 후 저장된 결과를 조회하여 리턴한다. */

	@Override
	public Professor addProfessor(Professor params) 
			throws NullPointerException, Exception {
		int row_count = session.insert("ProfessorMapper.add_professor", params);
		
		// 저장된 데이터의 행 수가 없을 경우 강제로 예외를 발생시킨다.
		if (row_count == 0) {
			throw new NullPointerException();
		}
		
		return session.selectOne("ProfessorMapper.get_professor_item", params);
	}

	/** 교수 저장하기 -> 수정된 결과를 조회하여 리턴한다. */
	@Override
	public Professor editProfessor(Professor params) 
			throws NullPointerException, Exception {
		int row_count = session.update("ProfessorMapper.edit_professor", params);
		
		// 수정된 데이터의 행 수가 없을 경우 강제로 예외를 발생시킨다.
		if (row_count == 0) {
			throw new NullPointerException();
		}
		
		return session.selectOne("ProfessorMapper.get_professor_item", params);
	}

	/** 교수 삭제하기 */
	@Override
	public void deleteProfessor(Professor params) 
			throws NullPointerException, Exception {
		
		// 학생 데이터 삭제
		// --> import study.java.myschool.model.Student;
		Student stud = new Student();
		stud.setProfno(params.getProfno());
		session.delete("StudentMapper.remove_student_by_profno", stud);
		
		// 교수 데이터 삭제
		int row_count = session.delete(
				"ProfessorMapper.remove_professor", params);
		
		// 최종적으로 삭제된 행이 없을 경우 강제로 예외를 발생시킨다.
		if (row_count == 0) {
			throw new NullPointerException();
		}
	}

	/** 학과 데이터 조회하기 (단일행) */
	@Override
	public Professor getProfessorItem(Professor params) 
			throws NullPointerException, Exception {
		Professor item = session.selectOne(
				"ProfessorMapper.get_professor_item", params);
		
		if (item == null) {
			throw new NullPointerException();
		}
		
		return item;
	}

	/** 학과 데이터 조회 (다중행) */
	@Override
	public List<Professor> getProfessorList() 
			throws NullPointerException, Exception {
		List<Professor> list = session.selectList(
				"ProfessorMapper.get_professor_list", null);
		
		if (list == null) {
			throw new NullPointerException();
		}
		
		return list;
	}
}