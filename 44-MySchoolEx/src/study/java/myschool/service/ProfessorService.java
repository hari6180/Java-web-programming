
package study.java.myschool.service;

import java.util.List;

import study.java.myschool.model.Professor;

public interface ProfessorService {
	/**
	 * 학과 정보를 새로 저장하고 저장된 정보를 조회하여 리턴한다. 저장된 행의 수가 0이거나, SQL에 에러가 있는 경우는 예외를 발생시켜서,
	 * 이 메서드를 호출하는 위치에서 try~catch 구문을 강제적으로 사용하도록 throws를 명시한다.
	 * 
	 * @param params - 저장될 정보를 담고 있는 Beans
	 * @return - 저장된 데이터
	 * @throws NullPointerException - 저장된 데이터가 없는 경우
	 * @throws Exception            - SQL처리에 실패한 경우
	 */
	public Professor addProfessor(Professor params) throws NullPointerException, Exception;

	/**
	 * 학과 정보를 수정하고, 수정된 정보를 조회하여 리턴한다. 수정 후 영향을 받은 행 수가 없거나, SQL에 에러가 있는 경우는 예외를
	 * 발생시켜서, 이 메서드를 호출하는 위치에서 try~catch 구문을 강제적으로 사용하도록 throws를 명시한다.
	 * 
	 * @param params - 수정될 정보를 담고 있는 Beans
	 * @return - 수정된 데이터
	 * @throws NullPointerException - 수정된 데이터가 없는 경우
	 * @throws Exception            - SQL처리에 실패한 경우
	 */
	public Professor editProfessor(Professor params) throws NullPointerException, Exception;

	/**
	 * 학과 정보를 삭제한다. 이 때, 학과에 소속되어 있는 학생과 교수도 일괄 삭제한다. 삭제 후 department 테이블에서 영향을 받은 행
	 * 수가 없거나, SQL에 에러가 있는 경우는 예외를 발생시켜서 이 메서드를 호출하는 위치에서 try~catch 구문을 강제적으로 사용하도록
	 * throws를 명시한다.
	 * 
	 * @param params - 삭제될 학과의 정보를 담고 있는 Beans
	 * @return - Void
	 * @throws NullPointerException - 삭제된 데이터가 없는 경우
	 * @throws Exception            - SQL처리에 실패한 경우
	 */
	public void deleteProfessor(Professor params) throws NullPointerException, Exception;

	/**
	 * 학과 하나의 정보를 조회하여 리턴한다.
	 * 
	 * @param params - 조회할 대상의 정보를 담고 있는 Beans
	 * @return - 조회결과를 담고 있는 Beans
	 * @throws NullPointerException - 조회된 데이터가 없는 경우
	 * @throws Exception            - SQL처리에 실패한 경우
	 */
	public Professor getProfessorItem(Professor params) throws NullPointerException, Exception;

	/**
	 * 학과 목록을 조회하여 리턴한다.
	 * 
	 * @return - 조회 결과를 담고 있는 컬렉션
	 * @throws NullPointerException - 조회된 데이터가 없는 경우
	 * @throws Exception            - SQL처리에 실패한 경우
	 */
	public List<Professor> getProfessorList() throws NullPointerException, Exception;
}
