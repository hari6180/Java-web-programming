package study.java.mvmanagement.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import study.java.mvmanagement.model.Director;
import study.java.mvmanagement.service.DirectorService;

/**
 * @FileName : DirectorServiceImpl.java
 * @Author : Hari
 * @Description : 인터페이스의 구현체. 참조키 무결성 제약조건을 반영하여 
 * 하위 데이터 (학생)부터 삭제 후 상위 데이터(감독)를 삭제하는 순서를 반영하였다.
 */

public class DirectorServiceImpl implements DirectorService {
	/** MyBatis의 Mapper를 호출하기 위한 SqlSession 객체 */
	// --> import org.apache.ibatis.session.SqlSession;
	private SqlSession session;
	
	/** 생성자. SqlSession을 전달받는다. */
	public DirectorServiceImpl(SqlSession session) {
		this.session = session;
	}
	
	/** 감독 저장하기 -> 저장 후 저장된 결과를 조회하여 리턴한다. */

	@Override
	public Director addDirector(Director params) 
			throws NullPointerException, Exception {
		int row_count = session.insert("DirectorMapper.add_Director", params);
		
		// 저장된 데이터의 행 수가 없을 경우 강제로 예외를 발생시킨다.
		if (row_count == 0) {
			throw new NullPointerException();
		}
		
		return session.selectOne("DirectorMapper.get_Director_item", params);
	}

	/** 감독 저장하기 -> 수정된 결과를 조회하여 리턴한다. */
	@Override
	public Director editDirector(Director params) 
			throws NullPointerException, Exception {
		int row_count = session.update("DirectorMapper.edit_Director", params);
		
		// 수정된 데이터의 행 수가 없을 경우 강제로 예외를 발생시킨다.
		if (row_count == 0) {
			throw new NullPointerException();
		}
		
		return session.selectOne("DirectorMapper.get_Director_item", params);
	}

	/** 감독 삭제하기 */
	@Override
	public void deleteDirector(Director params) 
			throws NullPointerException, Exception {
		
		// 학생 데이터 삭제
		// --> import study.java.myschool.model.Student;
		Student stud = new Student();
		stud.setProfno(params.getProfno());
		session.delete("StudentMapper.remove_student_by_profno", stud);
		
		// 감독 데이터 삭제
		int row_count = session.delete(
				"DirectorMapper.remove_Director", params);
		
		// 최종적으로 삭제된 행이 없을 경우 강제로 예외를 발생시킨다.
		if (row_count == 0) {
			throw new NullPointerException();
		}
	}

	/** 학과 데이터 조회하기 (단일행) */
	@Override
	public Director getDirectorItem(Director params) 
			throws NullPointerException, Exception {
		Director item = session.selectOne(
				"DirectorMapper.get_Director_item", params);
		
		if (item == null) {
			throw new NullPointerException();
		}
		
		return item;
	}

	/** 학과 데이터 조회 (다중행) */
	@Override
	public List<Director> getDirectorList() 
			throws NullPointerException, Exception {
		List<Director> list = session.selectList(
				"DirectorMapper.get_Director_list", null);
		
		if (list == null) {
			throw new NullPointerException();
		}
		
		return list;
	}
}