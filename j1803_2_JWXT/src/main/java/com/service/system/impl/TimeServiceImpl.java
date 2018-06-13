package com.service.system.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.system.TimeMapper;
import com.github.pagehelper.PageHelper;
import com.model.system.Time;
import com.service.system.TimeService;

import framework.utils.pageUtil.PageBeanUtil;
import framework.utils.pageUtil.PagedResult;

@Service
public class TimeServiceImpl implements TimeService {

	@Autowired
	private TimeMapper timeMapper;

	@Override
	public PagedResult<Time> getAllByPage(Integer pageNumber, Integer pageSize) {
		PageHelper.startPage(pageNumber, pageSize);
		List<Time> timelist = timeMapper.queryAllTime();
		return PageBeanUtil.toPagedResult(timelist);
	}

	@Override
	public int addTime(Time time) {
		// TODO Auto-generated method stub
		return timeMapper.insertSelective(time);
	}

	@Override
	public int deleteTimeById(String timeId) {
		// TODO Auto-generated method stub
		return timeMapper.deleteByPrimaryKey(timeId);
	}

	@Override
	public Time querytimeId(String timeId) {
		// TODO Auto-generated method stub
		return timeMapper.selectByPrimaryKey(timeId);
	}

	@Override
	public int updateTime(Time time) {
		// TODO Auto-generated method stub
		return timeMapper.updateByPrimaryKeySelective(time);
	}
	
	@Override
	public List<Time> queryAllTime() {
		return timeMapper.queryAllTime();
	}

	@Override
	public PagedResult<Time> queryLikeName(Integer pageNumber, Integer pageSize, String str1) {
		// 1.调用分页插件
		PageHelper.startPage(pageNumber, pageSize);
		// 2.查询数据库，获取数据
		List<Time> timelist = timeMapper.queryLikeName(str1);
		System.out.println(timelist + "timelist");
		return PageBeanUtil.toPagedResult(timelist);
	}

}
