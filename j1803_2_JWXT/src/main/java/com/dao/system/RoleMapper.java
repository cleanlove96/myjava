package com.dao.system;

import java.util.List;

import com.model.system.Role;

public interface RoleMapper {
    int deleteByPrimaryKey(String roleId);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(String roleId);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);

	/**
	 * @return获取所有角色
	 */
	List<Role> findRoleAll();

	/**
	 * 通过角色名模糊查询
	 * @param keywords
	 * @return
	 */
	List<Role> findRoleLByRN(String keywords);

	/**
	 * 通过角色描述模糊查询
	 * @param keywords
	 * @return
	 */
	List<Role> findRoleLByRD(String keywords);

	List<Role> queryAllRole();
}