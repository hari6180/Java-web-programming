package study.java.mvmanagement.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import study.java.mvmanagement.model.Movie;
import study.java.mvmanagement.model.Mvac_rel;
import study.java.mvmanagement.model.Mvdi_rel;
import study.java.mvmanagement.service.MovieService;

public class MovieServiceImpl implements MovieService {

	/** MyBatis의 Mapper를 호출하기 위한 SqlSession 객체 */
	// --> import org.apache.ibatis.session.SqlSession;
	private SqlSession session;
	
	/** 생성자. SqlSession을 전달받는다. */
	public MovieServiceImpl(SqlSession session) {
		this.session = session;
	}
	
	/** 영화 저장하기 -> 저장 후 저장된 결과를 조회하여 리턴한다. */
	// -> import study.java.myschool.model.Movie;
	@Override
	public Movie addMovie(Movie params) 
			throws NullPointerException, Exception {
/*
		// 1) 영화-감독관계 데이터 추가
		Mvdi_rel dir = new Mvdi_rel();
		dir.setMcode(params.getMcode());
		session.insert("Mvdi_relMapper.add_Mvdi_rel", dir);
		
		// 2) 영화-배우관계 데이터 추가
		Mvac_rel act = new Mvac_rel();
		act.setMcode(params.getMcode());
		session.insert("Mvac_relMapper.add_Mvac_rel", act);
*/
		// 3) 영화 데이터 추가
		int row_count = session.insert("MovieMapper.add_movie", params);
		
		// 저장된 데이터의 행 수가 없을 경우 강제로 예외를 발생시킨다.
		if (row_count == 0) {
			throw new NullPointerException();
		}
		
		return session.selectOne("MovieMapper.get_movie_item", params);
	}

	/** 영화 수정하기 -> 수정된 결과를 조회하여 리턴한다. */
	@Override
	public Movie editMovie(Movie params) 
			throws NullPointerException, Exception {
		
		// 1) 영화-감독관계 데이터 수정
		Mvdi_rel dir = new Mvdi_rel();
		dir.setMcode(params.getMcode());
		session.update("Mvdi_relMapper.edit_Mvdi_rel_bymcode", dir);
		
		// 2) 영화-배우관계 데이터 수정
		Mvac_rel act = new Mvac_rel();
		act.setMcode(params.getMcode());
		session.update("Mvac_relMapper.edit_Mvac_rel_bymcode", act);
		
		// 3) 영화 데이터 수정
		int row_count = session.update("MovieMapper.edit_movie", params);
		
		// 수정된 데이터의 행 수가 없을 경우 강제로 예외를 발생시킨다.
		if (row_count == 0) {
			throw new NullPointerException();
		}
		
		return session.selectOne("MovieMapper.get_movie_item", params);
	}

	/** 영화 삭제하기 */
	@Override
	public void deleteMovie(Movie params) 
			throws NullPointerException, Exception {
		// 1) 영화-감독관계 데이터 삭제
		Mvdi_rel dir = new Mvdi_rel();
		dir.setMcode(params.getMcode());
		session.delete("Mvdi_relMapper.remove_Mvdi_rel_bymcode", dir);
		
		// 2) 영화-배우관계 데이터 삭제
		Mvac_rel act = new Mvac_rel();
		act.setAcode(params.getAcode());
		session.delete("Mvac_relMapper.remove_Mvac_rel_byacode", act);
		
		// 3) 영화 데이터 삭제
		int row_count = session.delete(
				"MovieMapper.remove_Movie", params);
		
		// 최종적으로 삭제된 행이 없을 경우 강제로 예외를 발생시킨다.
		if (row_count == 0) {
			throw new NullPointerException();
		}
	}

	/** 영화 데이터 조회하기 (단일행) */
	@Override
	public Movie getMovieItem(Movie params) 
			throws NullPointerException, Exception {
		Movie item = session.selectOne(
				"MovieMapper.get_movie_item", params);
		
		if (item == null) {
			throw new NullPointerException();
		}
		
		return item;
	}

	/** 영화 데이터 조회 (다중행) */
	@Override
	public List<Movie> getMovieList() 
			throws NullPointerException, Exception {
		List<Movie> list = session.selectList(
				"MovieMapper.get_movie_list", null);
		
		if (list == null) {
			throw new NullPointerException();
		}
		
		return list;
	}

}
