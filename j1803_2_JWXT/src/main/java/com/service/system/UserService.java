/*****************************************************
 *  HISTORY
 *  FileName:UserService.java
 *  Package:com.service.system
 *  Project:j1803_2_JWXT
 *  Version:1.0
 *  Date:2018年5月29日 zm创建文件
 **********修改记录*************
 * Date:          Author:
 *
 *******************************************************/
package com.service.system;

import com.model.system.Name;
import com.model.system.User;

import framework.utils.pageUtil.PagedResult;

/**
 * <p>
 * 
 * </p>	
 * @Copyright (C),华清远见
 * @author zm
 * @Date:2018年5月29日
 */
public interface UserService {

	/**
	 * <p>
	 * 
	 * </p>
	 * @author zm
	 * @Date 2018年5月29日
	 * @param user
	 * @return
	 */
	User queryUserByLoginAmeAndPassword(User user);
	
	PagedResult<User> getAllByPage(Integer pageNumber, Integer pageSize);

	int addUser(User user);

	int deleteUserByUserId(String userId);

	PagedResult<Name> queryLikeName(Integer pageNumber, Integer pageSize, String str1);

	PagedResult<Name> queryUserAll(Integer pageNumber, Integer pageSize);

}
