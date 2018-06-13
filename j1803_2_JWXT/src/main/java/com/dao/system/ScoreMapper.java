package com.dao.system;

import java.util.List;

import com.model.system.NewScore;
import com.model.system.Score;

public interface ScoreMapper {
    int deleteByPrimaryKey(String scoreId);

    int insert(Score record);

    int insertSelective(Score record);

    Score selectByPrimaryKey(String scoreId);

    int updateByPrimaryKeySelective(Score record);

    int updateByPrimaryKey(Score record);

	/**
	 * <p>
	 * 
	 * </p>
	 * @author zm
	 * @Date 2018年5月29日
	 * @return
	 */
	List<NewScore> queryAllScore();

	/**
	 * <p>
	 * 
	 * </p>
	 * @author zm
	 * @Date 2018年5月30日
	 * @return
	 */
	List<NewScore> userId();

	/**
	 * <p>
	 * 
	 * </p>
	 * @author zm
	 * @Date 2018年5月30日
	 * @param userId
	 * @return
	 */
	List<NewScore> selectStudScoreById(String userId);

	/**
	 * <p>
	 * 
	 * </p>
	 * @author zm
	 * @Date 2018年5月30日
	 * @param tId
	 * @param sId
	 * @param subjectId
	 * @return
	 */
	NewScore querySelectById(String tId, String sId, String subjectId);

	/**
	 * <p>
	 * 
	 * </p>
	 * @author zm
	 * @Date 2018年5月30日
	 * @param scoreId
	 * @param score
	 * @return
	 */
	int updatescore(String scoreId, String score);

	/**
	 * <p>
	 * 
	 * </p>
	 * @author zm
	 * @Date 2018年5月30日
	 * @param userId
	 * @return
	 */
	List<NewScore> selectAllbyUserId(String userId);

	/**
	 * <p>
	 * 
	 * </p>
	 * @author zm
	 * @Date 2018年5月30日
	 * @param scoreId
	 * @return
	 */
	NewScore queryselectByScoreId(String scoreId);

	/**
	 * <p>
	 * 
	 * </p>
	 * @author zm
	 * @Date 2018年5月30日
	 * @param studentId
	 * @param teacherId
	 * @param subjectId
	 * @return
	 */
	int selectBySidTidSubjectid(String studentId, String teacherId, String subjectId);

	/**
	 * <p>
	 * 
	 * </p>
	 * @author zm
	 * @Date 2018年5月31日
	 * @param userId
	 * @return
	 */
	List<NewScore> selectAllStudScore(String userId);

	/**
	 * <p>
	 * 
	 * </p>
	 * @author zm
	 * @Date 2018年5月31日
	 * @param userId
	 * @param str
	 * @return
	 */
	List<NewScore> selectStudentByName(String userId, String str);

	/**
	 * <p>
	 * 
	 * </p>
	 * @author zm
	 * @Date 2018年6月1日
	 * @param userId
	 * @param str
	 * @return
	 */
	List<NewScore> studentselectBysbujectName(String userId, String str);

	/**
	 * <p>
	 * 
	 * </p>
	 * @author zm
	 * @Date 2018年6月1日
	 * @return
	 */
	List<NewScore> adminselectAllScore();

	/**
	 * <p>
	 * 
	 * </p>
	 * @author zm
	 * @Date 2018年6月1日
	 * @param namestr
	 * @return
	 */
	List<NewScore> adminselectStudentScore(String namestr);

	/**
	 * <p>
	 * 
	 * </p>
	 * @author zm
	 * @Date 2018年6月1日
	 * @param subjectstr
	 * @return
	 */
	List<NewScore> adminselectSubjectScore(String subjectstr);

	/**
	 * <p>
	 * 
	 * </p>
	 * @author zm
	 * @Date 2018年6月4日
	 * @param userId
	 * @return
	 */
	List<NewScore> selectStudScoreByIdgroup(String userId);

	/**
	 * <p>
	 * 
	 * </p>
	 * @author zm
	 * @Date 2018年6月4日
	 * @return
	 */
	List<NewScore> adminselectAllScoreGroup();

	/**
	 * <p>
	 * 
	 * </p>
	 * @author zm
	 * @Date 2018年5月31日
	 * @param userId
	 * @param str
	 * @return
	 */
//	List<NewScore> selectStudentByName(String userId, String str);
}