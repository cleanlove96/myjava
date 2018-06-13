package com.service.system.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.system.MajorMapper;
import com.github.pagehelper.PageHelper;
import com.model.system.Major;
import com.service.system.MajorService;

import framework.utils.pageUtil.PageBeanUtil;
import framework.utils.pageUtil.PagedResult;

@Service
public class MajorServiceImpl implements MajorService {

	@Autowired
	private MajorMapper majorMapper;

	@Override
	public PagedResult<Major> getAllByPage(Integer pageNumber, Integer pageSize) {
		// 1.���÷�ҳ���
		PageHelper.startPage(pageNumber, pageSize);
		// 2.��ѯ���ݿ⣬��ȡ����
		List<Major> majorlist = majorMapper.queryAllMajor();
		// 3.ͨ����ҳ��������ط�ҳ����
		return PageBeanUtil.toPagedResult(majorlist);
	}

	@Override
	public int addMajor(Major major) {
		// TODO Auto-generated method stub
		return majorMapper.insertSelective(major);
	}

	@Override
	public int deleteMajorById(String majorId) {
		// TODO Auto-generated method stub
		return majorMapper.deleteByPrimaryKey(majorId);
	}

	@Override
	public Major querymajorId(String majorId) {
		// TODO Auto-generated method stub
		return majorMapper.selectByPrimaryKey(majorId);
	}

	@Override
	public int updateMajor(Major major) {
		// TODO Auto-generated method stub
		return majorMapper.updateByPrimaryKeySelective(major);
	}

	@Override
	public List<Major> selectAllMajor() {
		// TODO Auto-generated method stub
		return majorMapper.queryAllMajor();
	}

	@Override
	public PagedResult<Major> queryLikeName(Integer pageNumber, Integer pageSize, String str1) {
		// 1.调用分页插件
		PageHelper.startPage(pageNumber, pageSize);
		// 2.查询数据库，获取数据
		List<Major> majorlist = majorMapper.queryLikeName(str1);
		System.out.println(majorlist + "majorlist");
		return PageBeanUtil.toPagedResult(majorlist);
	}

}
