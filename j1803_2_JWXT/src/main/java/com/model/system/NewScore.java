/*****************************************************
 *  HISTORY
 *  FileName:NewScore.java
 *  Package:com.model.system
 *  Project:j1803_2_JWXT
 *  Version:1.0
 *  Date:2018年5月29日 zm创建文件
 **********修改记录*************
 * Date:          Author:
 *
 *******************************************************/
package com.model.system;

/**
 * <p>
 * 
 * </p>	
 * @Copyright (C),华清远见
 * @author zm
 * @Date:2018年5月29日
 */
public class NewScore {
	private String scoreId;
	private String tName;
	private String sName;
	private String subjectName;
	private double score;
	private String majorName;
	public String getMajorName() {
		return majorName;
	}
	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}
	private String className;
	
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getScoreId() {
		return scoreId;
	}
	public void setScoreId(String scoreId) {
		this.scoreId = scoreId;
	}
	public String gettName() {
		return tName;
	}
	public void settName(String tName) {
		this.tName = tName;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public String getSubjectName() {
		return subjectName;
	}
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
	public double getScore() {
		return score;
	}
	public void setScore(double score) {
		this.score = score;
	}
	@Override
	public String toString() {
		return "NewScore [scoreId=" + scoreId + ", tName=" + tName + ", sName=" + sName + ", subjectName=" + subjectName
				+ ", score=" + score + ", majorName=" + majorName + ", className=" + className + "]";
	}

	
}
