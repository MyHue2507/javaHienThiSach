package dao;

import java.util.ArrayList;

import bean.sachBean;

public class sachDao {
	public ArrayList<sachBean> getSach() {
		ArrayList<sachBean> ds = new ArrayList<sachBean>();
		ds.add(new sachBean("s1","b1","tacgia1","b1.jpg",(long)120));
		ds.add(new sachBean("s2","b1","tacgia2","b2.jpg",(long)300));
		ds.add(new sachBean("s3","b1","tacgia3","b3.jpg",(long)450));
		ds.add(new sachBean("s4","b1","tacgia4","b4.jpg",(long)500));
		ds.add(new sachBean("s5","b1","tacgia5","b5.jpg",(long)1200));
		return ds ;
	}

}
