package com.scb.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.scb.bean.MyBeans;

@Repository
public class MyDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	public int insert(MyBeans mb)
	{	
		int ins= jdbcTemplate.update("insert into paperless values(referenceId.nextval,"
				+ "'"+mb.getDes()+"',"+mb.getRefe()+",'"+mb.getOptn()+"',"
						+ "'"+mb.getComent()+"','"+mb.getLocation()+"',"+mb.getEmpid()+","
								+ "'"+mb.getTraveltype1()+"','"+mb.getEdate()+"',"
										+ "'"+mb.getCurrency()+"',"+mb.getEspent()+","
												+ "'"+mb.getEtype()+"')");
		return (int)jdbcTemplate.queryForObject("select MAX(rid) from paperless", Integer.class);
	}
	public int delete(MyBeans mb) {
		// TODO Auto-generated method stub
		return jdbcTemplate.update("delete from paperless where rid = "+mb.getRid()+" ");
	}
	public List<MyBeans> searchId(MyBeans m)
    {   return jdbcTemplate.query("select * from paperless where rid = "+m.getRid()+" ", new RowMapper<MyBeans>()
        {   public MyBeans mapRow(ResultSet rs, int rownumber) throws SQLException
            {   MyBeans mb = new MyBeans();
                mb.setRid(rs.getInt(1));
                mb.setDes(rs.getString(2));
                mb.setRefe(rs.getInt(3));
                mb.setOptn(rs.getString(4));
                mb.setComent(rs.getString(5));
                mb.setLocation(rs.getString(6));
                mb.setEmpid(rs.getInt(7));
                mb.setTraveltype1(rs.getString(8));
               
                mb.setEdate(rs.getString(9));
                
                mb.setCurrency(rs.getString(10));
                mb.setEspent(rs.getInt(11));
                mb.setEtype(rs.getString(12));
                
               
                return mb;
            }
        });
    }
	
}

//,"+mb.getTotal()+"