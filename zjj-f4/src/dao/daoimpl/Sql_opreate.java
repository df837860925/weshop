package dao.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import pojo.Goods;
import pojo.User;
import dao.Opreate;
import db.ConnectionPool;
import db.Load_sql;

public class Sql_opreate implements Opreate {

	@Override
	public List<Goods> goodsShow(int page, int pagesize) {
		// TODO Auto-generated method stub
		List<Goods> list=new ArrayList<>();
	   Connection  cc=ConnectionPool.getConnection();
	      String sql="select * from //? limit ?,? ";
	      try {
	    	  PreparedStatement pp;
			pp = cc.prepareStatement(sql);
			pp.setInt(1, page*pagesize);
			pp.setInt(2, pagesize);
		ResultSet rSet= 	pp.executeQuery();
		 while (rSet.next()) {
			Goods goods=new Goods();
			//goodsset
			list.add(goods);
		}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	     finally{
					 ConnectionPool.closeConnection(cc);;
	     }
	   return list;
	}

	@Override
	public List<Goods> cateShow(int cate_id, int page, int pagesize) {
		// TODO Auto-generated method stub
		List<Goods> list=new ArrayList<>();
		   Connection  cc=ConnectionPool.getConnection();
		      String sql="select * from //? where cate_id=? limit ?,? ";
		      try {
		    	  PreparedStatement pp;
				pp = cc.prepareStatement(sql);
				pp.setInt(1, cate_id);
				pp.setInt(2, page*pagesize);
				pp.setInt(3, pagesize);
			ResultSet rSet= 	pp.executeQuery();
			 while (rSet.next()) {
				Goods goods=new Goods();
				//goodsset
				list.add(goods);
			}
			
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		     finally{
		    	 ConnectionPool.closeConnection(cc);
		     }
		   return list;
	}

	@Override
	public boolean login(String name, String password) {
		// TODO Auto-generated method stub
		Connection  cc=ConnectionPool.getConnection();
	      String sql="select * from //? where name=? password=?";
	     
	    	  PreparedStatement pp;
			try {
				pp = cc.prepareStatement(sql);
				pp.setString(1, name);
				pp.setString(2, password);
				
				ResultSet rSet= 	pp.executeQuery();
				if (rSet.next()) {
					return true;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally{
				ConnectionPool.closeConnection(cc);
			}
			return false;
	}

	@Override
	public boolean register_compare(String name) {
		// TODO Auto-generated method stub
		Connection  cc=ConnectionPool.getConnection();
	      String sql="select * from //? where name=? ";
	     
	    	  PreparedStatement pp;
			try {
				pp = cc.prepareStatement(sql);
				pp.setString(1, name);
				
				
				ResultSet rSet= 	pp.executeQuery();
				if (rSet.next()) {
					return true;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally{
				ConnectionPool.closeConnection(cc);
			}
			return false;
	}

	@Override
	public boolean insertUser(User user) {
		// TODO Auto-generated method stub
		Connection  cc=ConnectionPool.getConnection();
	      String sql="insert into //?(name,pass....) value(?,?,?,?...)";
	     
	    	  PreparedStatement pp;
			try {
				pp = cc.prepareStatement(sql);
				pp.setObject(1, user);
				pp.setObject(1, user);
				pp.setObject(1, user);
				pp.setObject(1, user);
				pp.setObject(1, user);
				
				
				int i= 	pp.executeUpdate();
				if (i<=0) {
					return true;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally{
				ConnectionPool.closeConnection(cc);
			}
			return false;
	}

	@Override
	public boolean insert_shopid(int user_id, int shop_id) {
		// TODO Auto-generated method stub
		Connection  cc=ConnectionPool.getConnection();
	      String sql="insert into //?(shop_id) value(?) where id=?";
	     
	    	  PreparedStatement pp;
			try {
				pp = cc.prepareStatement(sql);
				pp.setObject(1, user_id);
				pp.setObject(2,shop_id );
				
				
				
				int i= 	pp.executeUpdate();
				if (i<=0) {
					return true;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally{
				ConnectionPool.closeConnection(cc);
			}
			return false;
	}

	@Override
	public int[] select_shopid(int user_id) {
		// TODO Auto-generated method stub
		int [] id = null;
		Connection  cc=ConnectionPool.getConnection();
	      String sql="select *shop_id* from //? where user_id=? ";
	     
	    	  PreparedStatement pp;
			try {
				pp = cc.prepareStatement(sql);
				pp.setInt(1, user_id);
				ResultSet rSet= 	pp.executeQuery();
				if (rSet.next()) {
				String oldString=	 rSet.getString("shop_id");
				   if (oldString.indexOf(",")!=-1) {
					String [] news=  oldString.split(",");
					for (int i = 0; i < news.length; i++) {
						id[i]=Integer.valueOf(news[i]) ;
					}
				   }
				   else {
					id[0]=Integer.valueOf(oldString);
				   }
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally{
				ConnectionPool.closeConnection(cc);
			}
			return id;
	}
	

	@Override
	public Goods selectGoods_shopid(int shop_id) {
		// TODO Auto-generated method stub
		Goods  goods=new Goods();
		Connection  cc=ConnectionPool.getConnection();
	      String sql="select * from //? where shop_id=? ";
	     
	    	  PreparedStatement pp;
			try {
				pp = cc.prepareStatement(sql);
				pp.setInt(1, shop_id);
				 
				
				ResultSet rSet= 	pp.executeQuery();
				if (rSet.next()) {
					//goods set Ù–‘£ª
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally{
				ConnectionPool.closeConnection(cc);
			}
			return goods;
		
	}

	@Override
	public List<Goods> search(String name) {
		// TODO Auto-generated method stub
		List<Goods> list =new ArrayList<>();
		Connection  cc=ConnectionPool.getConnection();
	      String sql="select * from //? where desc(√Ë ˆ) like %?% ";
	     
	    	  PreparedStatement pp;
			try {
				pp = cc.prepareStatement(sql);
				pp.setString(1, name);
				 
				
				ResultSet rSet= 	pp.executeQuery();
				while(rSet.next()) {
				Goods goods=new Goods();
				//good set Ù–‘
				list.add(goods);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally{
				ConnectionPool.closeConnection(cc);
			}
			return list;
	
	}

	@Override
	public boolean insert_User(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete_User(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update_User(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public User select_User(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> selectALL_User(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insert_Goods(Goods user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete_Goods(Goods user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update_Goods(Goods user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public User select_Goods(Goods user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> selectALL_Goods(Goods user) {
		// TODO Auto-generated method stub
		return null;
	}
}



