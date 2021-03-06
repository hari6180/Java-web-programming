package study.java.mvmanagement.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import study.java.mvmanagement.model.Actor;
import study.java.mvmanagement.service.ActorService;

public class ActorServiceImpl implements ActorService {
	/** MyBatis의 Mapper를 호출하기 위한 SqlSession 객체 */
	// --> import org.apache.ibatis.session.SqlSession;
	private SqlSession session;
	
	/** 생성자. SqlSession을 전달받는다. */
	public ActorServiceImpl(SqlSession session) {
		this.session = session;
	}
	
	/** 배우 저장하기 -> 저장 후 저장된 결과를 조회하여 리턴한다. */

	@Override
	public Actor addActor(Actor params) 
			throws NullPointerException, Exception {
		int row_count = session.insert("ActorMapper.add_Actor", params);
		
		// 저장된 데이터의 행 수가 없을 경우 강제로 예외를 발생시킨다.
		if (row_count == 0) {
			throw new NullPointerException();
		}
		
		return session.selectOne("ActorMapper.get_Actor_item", params);
	}

	/** 배우 저장하기 -> 수정된 결과를 조회하여 리턴한다. */
	@Override
	public Actor editActor(Actor params) 
			throws NullPointerException, Exception {
		int row_count = session.update("ActorMapper.edit_Actor", params);
		
		// 수정된 데이터의 행 수가 없을 경우 강제로 예외를 발생시킨다.
		if (row_count == 0) {
			throw new NullPointerException();
		}
		
		return session.selectOne("ActorMapper.get_Actor_item", params);
	}

	/** 배우 삭제하기 */
	@Override
	public void deleteActor(Actor params) 
			throws NullPointerException, Exception {
		
		// 배우 데이터 삭제
		int row_count = session.delete(
				"ActorMapper.remove_Actor", params);
		
		// 최종적으로 삭제된 행이 없을 경우 강제로 예외를 발생시킨다.
		if (row_count == 0) {
			throw new NullPointerException();
		}
	}

	/** 학과 데이터 조회하기 (단일행) */
	@Override
	public Actor getActorItem(Actor params) 
			throws NullPointerException, Exception {
		Actor item = session.selectOne(
				"ActorMapper.get_Actor_item", params);
		
		if (item == null) {
			throw new NullPointerException();
		}
		
		return item;
	}

	/** 학과 데이터 조회 (다중행) */
	@Override
	public List<Actor> getActorList() 
			throws NullPointerException, Exception {
		List<Actor> list = session.selectList(
				"ActorMapper.get_Actor_list", null);
		
		if (list == null) {
			throw new NullPointerException();
		}
		
		return list;
	}
}