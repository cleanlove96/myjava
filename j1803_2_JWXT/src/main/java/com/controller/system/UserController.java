/*****************************************************
 *  HISTORY
 *  FileName:UserController.java
 *  Package:com.controller.system
 *  Project:j1803_2_JWXT
 *  Version:1.0
 *  Date:2018年5月29日 zm创建文件
 **********修改记录*************
 * Date:          Author:
 *
 *******************************************************/
package com.controller.system;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.model.system.Classes;
import com.model.system.Major;
import com.model.system.Menu;
import com.model.system.Name;
import com.model.system.Role;
import com.model.system.Time;
import com.model.system.User;
import com.service.system.ClassesService;
import com.service.system.MajorService;
import com.service.system.MenuService;
import com.service.system.RoleService;
import com.service.system.UserService;

import framework.controller.BaseController;
import framework.utils.PrimaryKeyUtil;
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
@Controller
@RequestMapping("/userController")
public class UserController extends BaseController {
	/**  */
	private static final long serialVersionUID = 4132695702680720162L;
	@Autowired
	private UserService userService;
	@Autowired
	private MenuService menuService;
	
	@Autowired
	private MajorService majorService;
	@Autowired
	private ClassesService classesService;
	
	@Autowired
	private RoleService roleService;
	@RequestMapping("/login.do")
	/***
	 * 
	 * <p>
	 * 通过userId查找这个人的所有权限 并返回到前台，通过前台的判定 找出父Id为root的权限
	 * </p>
	 * @author zm
	 * @Date 2018年5月30日
	 * @param request
	 * @param response
	 * @param session
	 * @param model
	 * @param user
	 * @return
	 */
	public String login(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model,
			User user) {
		/***
		 * 判断用户的登录名和密码是否为空，如果为空则提示输入错误， 如果不为空再判断账号密码是否匹配，如果匹配成功，则跳转到主界面
		 */
		 //1.收集数据
		// 3.调用相关业务
		User u = userService.queryUserByLoginAmeAndPassword(user);

		if (u == null) {
			model.addAttribute("loginError", "用户名或密码错误");

			// 2.跳转页面
			return "login";
		} else {
			model.addAttribute("loginSuccess", "登录成功");
			// 2.跳转页面
			session.setAttribute("USER", u);
			List<Menu> listmenu = menuService.queryMenuByUserId(u.getUserId());
			model.addAttribute("listmenu", listmenu);
			for (Menu menu1 : listmenu) {
				System.out.println("++++1" + menu1.toString());
			}
			return "main";
		}
	}
	@RequestMapping("/logindd.do")
	public String logindd(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model,
			User user) {
		/***
		 * 判断用户的登录名和密码是否为空，如果为空则提示输入错误， 如果不为空再判断账号密码是否匹配，如果匹配成功，则跳转到主界面
		 */
		 //1.收集数据
		// 3.调用相关业务
		User u = userService.queryUserByLoginAmeAndPassword(user);

		if (u == null) {
			model.addAttribute("loginError", "用户名或密码错误");

			// 2.跳转页面
			return "login2";
		} else {
			model.addAttribute("loginSuccess", "登录成功");
			// 2.跳转页面
			session.setAttribute("user", u);
			List<Menu> listmenu = menuService.queryMenuByUserId(u.getUserId());
			model.addAttribute("listmenu", listmenu);
			for (Menu menu1 : listmenu) {
				System.out.println("++++1" + menu1.toString());
			}
			return "redirect:/indexController/person.do";
		}
	}
	
	
	/***
	 * 
	 * <p>
	 * 动态显示权限
	 * </p>
	 * @author zm
	 * @Date 2018年5月30日
	 * @param request
	 * @param response
	 * @param session
	 * @param model
	 * @param user
	 * @param menuId
	 * @return
	 */
	@RequestMapping("/queryAnthortySon.do")
	public String queryAnthortySon(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model,
			User user,String menuId) {
		/***
		 * 判断用户的登录名和密码是否为空，如果为空则提示输入错误， 如果不为空再判断账号密码是否匹配，如果匹配成功，则跳转到主界面
		 */
		 //1.收集数据
		// 3.调用相关业务
		User u = (User) session.getAttribute("USER");
		String uId=u.getUserId();
		 System.out.println("menuId+++++++++++++++++"+menuId);
		if (u == null) {
			model.addAttribute("loginError", "用户名或密码错误");

			// 2.跳转页面
			return "login";
		} else {
			model.addAttribute("loginSuccess", "登录成功");
			// 2.跳转页面
			session.setAttribute("USER", u);	
			
			List<Menu> listmenuson = menuService.queryMenuSelectedSonByMenuId(uId,menuId);
			model.addAttribute("listmenuson", listmenuson);
			for (Menu menu : listmenuson) {
				System.out.println("menu-----------"+menu.toString());
			}
			List<Menu> listmenu = menuService.queryAllMenuXZByUserId(u.getUserId());
			model.addAttribute("listmenu", listmenu);
			for (Menu menu1 : listmenu) {
				System.out.println("menu++++++++++++"+menu1.toString());
			}
			System.out.println(listmenu.toString());
			return "main";
		}
	}

	@RequestMapping(value = "listPage.do", produces = "application/json;charset=utf-8")
	public ModelAndView listPage(@RequestParam(value = "pageNumber", defaultValue = "1") Integer pageNumber,
	@RequestParam(value = "pageSize", defaultValue = "5") Integer pageSize) {
	System.out.println("------------------传统---------------------");
	ModelAndView mv = new ModelAndView();
	// 当前页和每页的条数
	// 传入数据到分页工具类
	PagedResult<Name> pageResult = userService.queryUserAll(pageNumber, pageSize);
	// 数据传递到前台页面展示层
	mv.addObject("pageResult", pageResult);
	mv.setViewName("user/user_list");
	return mv;
	}
	
	
	/**
	 * <p>
	 * 增加
	 * </p>
	 * 
	 * @author LGH
	 * @Date 2018年5月16日
	 * @param request
	 * @param response
	 * @param session
	 * @param model
	 * @param user
	 * @return
	 */
	@RequestMapping("addUI.do")
	public String addUI(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) {
		List<Role> rolelist=roleService.selectRoleAll();
		model.addAttribute("rolelist", rolelist);
		return "user/user_add";
	}
	
	@RequestMapping("add.do")
	public String add(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model,
			User user,Role role) {
		// 1、收集数据
		System.err.println("--------------------" + user);
		// 3.调用相关业务
		// 维护
		user.setUserId(PrimaryKeyUtil.getPrimaryKey());
		model.addAttribute("userId", user.getUserId());
		user.setRoleId(role.getRoleId());
		model.addAttribute("roleId", user.getRoleId());
		user.setCreateTime(new Date());
		int n = userService.addUser(user);
		List<Major> majorlist=majorService.selectAllMajor();
		model.addAttribute("majorlist", majorlist);
		List<Classes> classeslist=classesService.selectAllClasses();
		model.addAttribute("classeslist", classeslist);
		if("1".equals(user.getRoleId())){
			return "admin/admin_add";
		}else if("2".equals(user.getRoleId())){
			return "teacher/teacher_add";
		}else if("3".equals(user.getRoleId())){
			return "student/student_add";
		}else{
		// 2、跳转页面
		return "redirect:/userController/addUI.do";
		}

	}
	@RequestMapping("/delete.do")
	public String delete(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model,
			User user, String userId) {
		// 1、收集数据
		// 3、调用相关业务
		int m = userService.deleteUserByUserId(userId);
		
		return "redirect:/userController/listPage.do";
	}
	
	@RequestMapping(value = "/deleteMany.do")
	public String deleteMany(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model,
			User user,String[] ids){
		if(ids==null){return "redirect:/userController/listPage.do";}
		for (String id : ids) {
			int m=userService.deleteUserByUserId(id);
		}
		return "redirect:/userController/listPage.do";
	}
	
	@RequestMapping(value = "search.do", produces = "application/json;charset=utf-8")
	public ModelAndView search(@RequestParam(value = "pageNumber", defaultValue = "1") Integer pageNumber,
			@RequestParam(value = "pageSize", defaultValue = "5") Integer pageSize,HttpSession session,HttpServletRequest request,String str) {
		ModelAndView mv = new ModelAndView();
		if(str!=null) {
			String like =request.getParameter("str");
			session.setAttribute("str", like);
		}
		String str1 = (String)session.getAttribute("str");
		// 当前页和每页的条数
		// 传入数据到分页工具类
		System.out.println("str1"+str1);
		PagedResult<Name> pageResult = userService.queryLikeName(pageNumber, pageSize,str1);
		// 数据传递到前台页面展示层
		System.out.println(pageResult+"pageResult");
		mv.addObject("pageResult", pageResult);
		mv.setViewName("user/user_list");
		return mv;

	}
	
}
