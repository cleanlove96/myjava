/*****************************************************
 *  HISTORY
 *  FileName:StudentServiceimp.java
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

import com.dao.system.StudentMapper;
import com.dao.system.UserMapper;
import com.github.pagehelper.PageHelper;
import com.model.system.Name;
import com.model.system.Student;
import com.service.system.StudentService;

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
public class StudentServiceImpl implements StudentService {
	@Autowired
	private StudentMapper studentMapper;

	@Override
	public List<Student> selectAllStudent() {

		return studentMapper.selectAllStudent();
	}

	@Override
	public Student selectStudentByName(String studentName) {

		return studentMapper.selectStudentByName(studentName);
	}

	@Override
	public PagedResult<Student> getAllByPage(Integer pageNumber, Integer pageSize) {
		// 1.调用分页插件
		PageHelper.startPage(pageNumber, pageSize);
		// 2.查询数据库，获取数据
		List<Student> studentlist = studentMapper.queryAllUser();
		// 3.通过分页工具类加载分页数据
		return PageBeanUtil.toPagedResult(studentlist);
	}

	@Override
	public int addStudent(Student student) {
		// TODO Auto-generated method stub
		return studentMapper.insertSelective(student);
	}

	@Override
	public int deleteStudentBySId(String sId) {
		// TODO Auto-generated method stub
		return studentMapper.deleteByPrimaryKey(sId);
	}

	@Override
	public Name querysId(String sId) {
		// TODO Auto-generated method stub
		return studentMapper.selectByID(sId);
	}

	@Override
	public int updateStudent(Student student) {
		// TODO Auto-generated method stub
		return studentMapper.updateByPrimaryKeySelective(student);
	}

	@Override
	public PagedResult<Name> queryLikeName(Integer pageNumber, Integer pageSize, String str1) {
		// 1.调用分页插件
		PageHelper.startPage(pageNumber, pageSize);
		// 2.查询数据库，获取数据
		List<Name> namelist = studentMapper.queryLikeName(str1);
		System.out.println(namelist + "namelist");
		return PageBeanUtil.toPagedResult(namelist);
	}

	@Override
	public PagedResult<Name> queryStudentAll(Integer pageNumber, Integer pageSize) {
		// 1.调用分页插件
		PageHelper.startPage(pageNumber, pageSize);
		// 2.查询数据库，获取数据
		List<Name> namelist = studentMapper.queryStudentAll();
		// 3.通过分页工具类加载分页数据
		return PageBeanUtil.toPagedResult(namelist);
	}
}
