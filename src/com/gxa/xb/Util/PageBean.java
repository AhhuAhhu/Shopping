package com.gxa.xb.Util;

import java.util.List;

/**
 * 分页
 * @author root
 *
 */
public class PageBean {
	
	private int total;//总记录数10
	
	private int pageNo;//当前页码
	
	private int pageNum;//总页数
	
	private int pageSize;//每页显示的记录数3
	
	private List datalist;//每页要显示的数据

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getPageNo() {
		if(pageNo >= getPageNum()){
			return pageNo = getPageNum();
		}else if(pageNo<=1){
			return pageNo = 1;
		}
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getPageNum() {
		if(total % pageSize == 0){
			return total/pageSize;
		}else{
			return (total/pageSize)+1;
		}
		
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public List getDatalist() {
		return datalist;
	}

	public void setDatalist(List datalist) {
		this.datalist = datalist;
	}
	
	
	
	
	
}
