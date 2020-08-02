package com.spring.regDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;

import com.spring.bbsVO.BVO;
import com.spring.regVO.regVO;
import com.spring.template.StaticTemplate;

public class regDAO {
	
	JdbcTemplate template;
//	DataSource dataSource;
	
	public regDAO(){
//		try {
//			Context ctx = new InitialContext();
//			dataSource = (DataSource)ctx.lookup("java:comp/env/jdbc/Oracle11g");
//		} catch (NamingException e) {
//			e.printStackTrace();
//		}		
		this.template = StaticTemplate.template;
	}
	
	
	//-------------------------------------------------------08/02 추가
	public void loginOk(final String email, final String password) {
		String sql = "insert into mvc_reg(regNo, email, password) "
				+ "values(seq_reg.nextval,?,?)";
		
		this.template.update(sql, new PreparedStatementSetter(){			
			@Override
			public void setValues(PreparedStatement preparedStatement) throws SQLException{
				preparedStatement.setString(1,email);
				preparedStatement.setString(2,password);
			}
		});
	}
	
	public void regOk(final String name, final String email, final String password) {
		String sql = "insert into mvc_reg(regNo,name, email, password) "
				+ "values(seq_reg.nextval,?,?,?)";
		
		this.template.update(sql, new PreparedStatementSetter(){			
			@Override
			public void setValues(PreparedStatement preparedStatement) throws SQLException{
				preparedStatement.setString(1,name);
				preparedStatement.setString(2,email);
				preparedStatement.setString(3,password);
			}
		});
	}
	//----
		public ArrayList<regVO> list(){		
			
			ArrayList<regVO> regVOs = null;
			String sql = "select regNo, name, email, password, regDate from mvc_reg order by regDate desc, name asc";
//					+ " order by regDate desc, email asc";
			
			/*Jdbctemplate에서 사용할 수 있는 메소드
			- query() 메소드 :select 쿼리를 실행 할 때 사용하는 메소드
			  	:List query(String sql, Object[] args, RowMapper rowMapper)
			  	:List query(String sql, RowMapper rowMapper)
			  	
			   . BeanPropertyRowMapper<T> 클래스는 RowMapper<T> 인터페이스를 구현
			   . RowMapper<T> 인터페이스에서 정의하고 있는 메소드는
			     : mapRow() 메소드 - ResultSet에서 읽어온 값을 이용해서 원하는 타입의 객체를 생성한 뒤 리턴
			     
			       선언예>
			       T mapRow(ResultSet rs, int rowNum) throws SQLException; //rowNum 행번호 (0부터 시작)
			
			
		    - queryForObject 메소드 : 쿼리 실행 결과의 행의 개수가 한개인 경우에 사용하는 메소드
		           전달되는 각 파라미터가 query() 메소드와 동일하다. List를 반환하는 대신에 한 개의 객체를 리턴
		           리턴 되는 행(레코드)의 개수가 한개가 아닌 경우에는 IncorrectResultSizeDataAccessException 예외 발생
		            
		           
		      : public Object queryForObject(String sql, RowMapper rowMapper)
		      : public Object queryForObject(String sql, Object[] args, RowMapper rowMapper);
		      
		      	리턴 타입이 Object가 아닌 경우에는 Int, Long 타입의 결과를 구할 때 사용하는
		        queryForInt(), queryForLong()
		      
		    - update() 메소드 : update, insert, delete 쿼리를 실행할 때 사용하는 메소드
		      	쿼리 실행결과 변경된 행의 개수를 리턴
		       
		       :update(String sql)
		       :update(String sql, Object[] args)
		       
		    - execute() 메소드 : Connection을 직접 사용해야 하는 경우에 사용하는 메소드.
		       . 커넥션의 생성과 종료는 JdbcTemplate에서 처리하기 때문에 Connection을 종료할 필요가 없다.
		    
			*/
			RowMapper<regVO> rm = new BeanPropertyRowMapper<regVO>(regVO.class);
			regVOs = (ArrayList<regVO>)template.query(sql, rm);
			System.out.println(regVOs);
			return regVOs;

//			Connection connection = null;
//			PreparedStatement preparedStatement = null;
//			ResultSet resultSet = null;
//					
//			try {
//				connection  = dataSource.getConnection();
//				String sql = "select bNo, bName, bSubject, bContent, bDate, bHit, bGroup, bStep, bIndent from mvc_bbs"
//						+ " order by bGroup desc, bStep asc";
//				preparedStatement = connection.prepareStatement(sql);
//				resultSet = preparedStatement.executeQuery();
//				
//				while(resultSet.next()){
//					int bNo = resultSet.getInt("bNo");
//					String bName = resultSet.getString("bName");
//					String bSubject = resultSet.getString("bSubject");
//					String bContent = resultSet.getString("bContent");
//					Timestamp bDate = resultSet.getTimestamp("bDate");
//					
//					int bHit = resultSet.getInt("bHit");
//					int bGroup = resultSet.getInt("bGroup");
//					int bStep = resultSet.getInt("bStep");
//					int bIndent = resultSet.getInt("bIndent");
//					
//					BVO bVO = new BVO(bNo, bName, bSubject, bContent, bDate, bHit, bGroup, bStep, bIndent);
//					bVOs.add(bVO);				
//				}//while()
//			} catch (SQLException e) {
//				e.printStackTrace();
//			}finally{
//				try {
//					if(resultSet !=null) resultSet.close();
//					if(preparedStatement !=null) preparedStatement.close();
//					if(connection !=null) connection.close();
//				} catch (Exception e2) {
//					e2.printStackTrace();
//				}
//			}		
//			return bVOs;
		}//list()
}
