package bo;

import java.util.ArrayList;

import bean.sachBean;
import dao.sachDao;

public class sachBo {
	sachDao  sach =new sachDao();
	public ArrayList<sachBean> getSach() {
		return sach.getSach() ;
	}
}
