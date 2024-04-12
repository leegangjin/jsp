package orm;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class DatabaseBuilder {
 
	//싱글턴
	private static SqlSessionFactory factory;
	private static final String CONFIG ="orm/mybatisConfig.xml";
	
	//초기화 블럭 사용하여 객체 생성 후 초기화
	static {
		//db생성시 try~catch 필수
		try {
			factory=new SqlSessionFactoryBuilder().build(
					 Resources.getResourceAsReader(CONFIG));
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
	public static SqlSessionFactory getFactory() {
		return factory;
	}
}
