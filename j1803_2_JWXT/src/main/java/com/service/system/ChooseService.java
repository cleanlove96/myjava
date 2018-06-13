package com.service.system;

import java.util.List;

import com.model.system.Choose;
import com.model.system.Course;
import framework.utils.pageUtil.PagedResult;

public interface ChooseService {
		
	int add(Choose choose);

	PagedResult<Course> queryChooseBysId(Integer pageNumber, Integer pageSize, String sId);

	int deleteChoose(String sId);

	
	List<Choose> queryChooseBysId(String sId);

	PagedResult<Course> queryScheduleAll(Integer pageNumber, Integer pageSize);

	List<Course> querySubjectBysId(String sId);

	Choose queryChooseBysIdAndschedule(String sId, String scheduleId);

	PagedResult<Course> getLikeByPage(Integer pageNumber, Integer pageSize, String str1);

	PagedResult<Course> getLikeByPage2(Integer pageNumber, Integer pageSize, String str1);

	Choose queryChooseByTimeId(String timeId,String sId);

	PagedResult<Course> getLikeByPage3(Integer pageNumber, Integer pageSize, String str1);

	List<Course> queryChooseBysIdAndTime(String sId);

	List<Course> queryChooseBysIdAndTime2(String sId);

}
