package mx.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import mx.util.CheckUtil;
import mx.util.ConfigUtil;

public class D {
	private static D db;
	private Connection conn;
	private Statement st=null;
	private String host, dbName, userName, userPwd;

	public static D getEntity() {
		if (CheckUtil.isNull(db)) {
			db = new D();
			db.init();
		}
		return db;
	}

	public void init() {
		ConfigUtil c=ConfigUtil.getInstance();
		try {
			System.out.println(c.get("host"));
			host = c.get("host");
			dbName = c.get("dbName");
			userName = c.get("userName");
			userPwd = c.get("userPwd");
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://" + host + "/"
					+ dbName + "?useUnicode=true&characterEncoding=gbk",
					userName, userPwd);

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public Connection getConn() {
		try {
			if (CheckUtil.isNull(conn) || conn.isClosed()) {
				conn = null;
				this.init();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public Statement getStatement() throws SQLException{
		if (CheckUtil.isNull(this.st)||this.st.isClosed()) {
			Connection conn=this.getConn();
			this.st=conn.createStatement();
		}
		return this.st;
	}
	
	public boolean executeSql(String sql) throws Exception {
		boolean executeSuccess=false;
		Statement st=null;
		try {
			st=this.getStatement();
			executeSuccess=(st.executeUpdate(sql)>0);
		} catch (Exception e) {
			System.out.println(sql);
			e.printStackTrace();
		}finally{
			st.close();
			System.out.println(sql);
		}
		return executeSuccess;
	}

	public List<Map<String, String>> getMapBySql(String sql)
			throws SQLException {
		List<Map<String, String>> list = new ArrayList();
		Statement st = null;
		ResultSet rs = null;
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				Map<String, String> map = new HashMap();
				ResultSetMetaData md = (ResultSetMetaData) rs.getMetaData();
				for (int i = 0; i < md.getColumnCount(); i++) {
					map.put(md.getColumnName(i+1),
							rs.getString(md.getColumnName(i+1)));
				}
				list.add(map);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			st.close();
			rs.close();
		}
		return list;
	}
	
	public String getNextId(String tableName) {
		List<Map<String, String>> list = new ArrayList();
		Statement st = null;
		ResultSet rs = null;
		ConfigUtil c=ConfigUtil.getInstance();
		try {
			st = this.getStatement();
			
			rs = st.executeQuery("show   table   status  from "+c.get("dbName")+" where name='"+tableName+"';");
			if (rs.next()) {
				return new Long(rs.getLong("Auto_increment")).toString();
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("show   table   status  from "+c.get("dbName")+" where name='"+tableName+"';");
		} finally {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			rs=null;
		}
		return tableName;
	}
	
	public void beginTransaction() throws SQLException{
		this.getConn().setAutoCommit(false);
	}
	
	public void commit() throws SQLException{
		this.getConn().commit();
	}
	
	public void rollback() throws SQLException{
		this.getConn().rollback();
	}
	
	public void closeConnection() throws SQLException{
		if (CheckUtil.isNotNull(this.st)) {
			st.close();
			st=null;
		}
		if (CheckUtil.isNotNull(this.conn)) {
			conn.close();
			conn=null;
		}
	}
}
