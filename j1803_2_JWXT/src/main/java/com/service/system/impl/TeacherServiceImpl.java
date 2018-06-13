/*****************************************************
 *  HISTORY
 *  FileName:TeacherServiceimp.java
 *  Package:com.service.system.impl
 *  Project:j1803_2_JWXT
 *  Version:1.0
 *  Date:2018年5月29日 zm创建文件
 **********修改记录*************
 * Date:          Author:
 *
 *******************************************************/
package com.service.system.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.system.TeacherMapper;
import com.dao.system.UserMapper;
import com.github.pagehelper.PageHelper;
import com.model.system.SubjectTeacherStudent;
import com.model.system.Teacher;
import com.service.system.TeacherService;

import framework.utils.pageUtil.PageBeanUtil;
import framework.utils.pageUtil.PagedResult;

/**
 * <p>
 * 
 * </p>
 * 
 * @Copyright (C),华清远见
 * @author zm
 * @Date:2018年5月29日
 */
@Service
public class TeacherServiceImpl implements TeacherService {
	@Autowired
	private TeacherMapper teacherMapper;

	@Override
	public List<Teacher> selectAllTeacher() {

		return teacherMapper.selectAllTeacher();
	}

	@Override
	public List<SubjectTeacherStudent> selectsubByTeacherId(String userId) {

		return teacherMapper.selectsubByTeacherId(userId);
	}

	@Override
	public SubjectTeacherStudent selectsubBySutId(String sId, String userId,String name) {

		return teacherMapper.selectsubBySutId(sId, userId,name);
	}

	@Override
	public PagedResult<SubjectTeacherStudent> selectsubByTeacherByPage(Integer pageNumber, Integer pageSize,
			String userId) {
		// 1.调用分页插件
		PageHelper.startPage(pageNumber, pageSize);
		// 2.查询数据库，获取数据
		List<SubjectTeacherStudent> userlist = teacherMapper.selectsubByTeacherId(userId);
		// 3.通过分页工具类加载分页数据
		return PageBeanUtil.toPagedResult(userlist);

	}

	@Override
	public PagedResult<Teacher> getAllByPage(Integer pageNumber, Integer pageSize) {
		// 1.调用分页插件
		PageHelper.startPage(pageNumber, pageSize);
		// 2.查询数据库，获取数据
		List<Teacher> teacherlist = teacherMapper.queryAllUser();
		// 3.通过分页工具类加载分页数据
		return PageBeanUtil.toPagedResult(teacherlist);
	}

	@Override
	public int addTeacher(Teacher teacher) {
		// TODO Auto-generated method stub
		return teacherMapper.insertSelective(teacher);
	}

	@Override
	public int deleteTeacherById(String tId) {
		// TODO Auto-generated method stub
		return teacherMapper.deleteByPrimaryKey(tId);
	}

	@Override
	public Teacher querytId(String tId) {
		// TODO Auto-generated method stub
		return teacherMapper.selectByPrimaryKey(tId);
	}

	@Override
	public int updateTeacher(Teacher teacher) {
		// TODO Auto-generated method stub
		return teacherMapper.updateByPrimaryKeySelective(teacher);
	}

	@Override
	public PagedResult<Teacher> queryLikeName(Integer pageNumber, Integer pageSize, String str1) {
		// 1.调用分页插件
		PageHelper.startPage(pageNumber, pageSize);
		// 2.查询数据库，获取数据
		List<Teacher> teacherlist = teacherMapper.queryLikeName(str1);
		System.out.println(teacherlist + "teacherlist");
		return PageBeanUtil.toPagedResult(teacherlist);
	}


	@Override
	public PagedResult<SubjectTeacherStudent> queryStudentAndTeacher(Integer pageNumber, Integer pageSize, String sName,
			String userId) {

		// 1.调用分页插件
		PageHelper.startPage(pageNumber, pageSize);
		// 2.查询数据库，获取数据
		List<SubjectTeacherStudent> userlist = teacherMapper.selectsubByTeacherIdAndName(userId, sName);
		// 3.通过分页工具类加载分页数据
		return PageBeanUtil.toPagedResult(userlist);

	}

	@Override
	public PagedResult<SubjectTeacherStudent> selectsubByTeacherByPageGroup(Integer pageNumber, Integer pageSize,
			String userId) {
		// 1.调用分页插件
		PageHelper.startPage(pageNumber, pageSize);
		// 2.查询数据库，获取数据
		List<SubjectTeacherStudent> userlist = teacherMapper.selectsubByTeacherIdgroup(userId);
		// 3.通过分页工具类加载分页数据
		return PageBeanUtil.toPagedResult(userlist);
	}


	@Override
	public List<Teacher> queryAllTeacher() {
		return teacherMapper.queryAllUser();
	}


}
