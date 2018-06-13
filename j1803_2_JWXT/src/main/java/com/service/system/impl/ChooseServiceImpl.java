package com.service.system.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.system.ChooseMapper;
import com.github.pagehelper.PageHelper;
import com.model.system.Choose;
import com.model.system.Course;
import com.service.system.ChooseService;

import framework.utils.pageUtil.PageBeanUtil;
import framework.utils.pageUtil.PagedResult;

@Service
public class ChooseServiceImpl implements ChooseService {
	@Autowired
	private ChooseMapper chooseMapper;


	@Override
	public int add(Choose choose) {
		return chooseMapper.insertSelective(choose);
	}

	@Override
	public PagedResult<Course> queryChooseBysId(Integer pageNumber, Integer pageSize, String sId) {
		
		PageHelper.startPage(pageNumber, pageSize);
		
		List<Course> maillist = chooseMapper.querySubjectBysId(sId);
		
		return PageBeanUtil.toPagedResult(maillist);
	}

	@Override
	public int deleteChoose(String sId) {
		return chooseMapper.deleteByPrimaryKey(sId);
	}

	@Override
	public List<Choose> queryChooseBysId(String sId) {
		return chooseMapper.selectByPrimaryKey(sId);
	}

	@Override
	public PagedResult<Course> queryScheduleAll(Integer pageNumber, Integer pageSize) {
		// 1.���÷�ҳ���
		PageHelper.startPage(pageNumber, pageSize);
		// 2.��ѯ���ݿ⣬��ȡ����
		List<Course> maillist = chooseMapper.queryScheduleAll();
		// 3.ͨ����ҳ��������ط�ҳ����
		return PageBeanUtil.toPagedResult(maillist);
	}

	@Override
	public List<Course> querySubjectBysId(String sId) {
		return chooseMapper.querySubjectBysId(sId);
	}

	@Override
	public Choose queryChooseBysIdAndschedule(String sId, String scheduleId) {
	
		return chooseMapper.queryChooseBysIdAndschedule(sId,scheduleId);
	}

	@Override
	public PagedResult<Course> getLikeByPage(Integer pageNumber, Integer pageSize, String str1) {
		PageHelper.startPage(pageNumber, pageSize);
		
		List<Course> maillist = chooseMapper.getLikeByPage(str1);
		
		return PageBeanUtil.toPagedResult(maillist);
	}

	
	@Override
	public PagedResult<Course> getLikeByPage2(Integer pageNumber, Integer pageSize, String str1) {
		PageHelper.startPage(pageNumber, pageSize);
		
		List<Course> maillist = chooseMapper.getLikeByPage2(str1);
		
		return PageBeanUtil.toPagedResult(maillist);
	}

	@Override
	public Choose queryChooseByTimeId(String timeId,String sId) {
		
		return chooseMapper.queryChooseByTimeId(timeId,sId);
	}

	@Override
	public PagedResult<Course> getLikeByPage3(Integer pageNumber, Integer pageSize, String str1) {

		
	   PageHelper.startPage(pageNumber, pageSize);
		
		List<Course> maillist = chooseMapper.getLikeByPage3(str1);
		
		return PageBeanUtil.toPagedResult(maillist);
	}

	@Override
	public List<Course> queryChooseBysIdAndTime(String sId) {
		return chooseMapper. queryChooseBysIdAndTime(sId);
	}

	@Override
	public List<Course> queryChooseBysIdAndTime2(String sId) {
		// TODO Auto-generated method stub
		return chooseMapper. queryChooseBysIdAndTime2(sId);
	}

}
