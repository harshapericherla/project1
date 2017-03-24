package projectone;
import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;

import com.niit.dao.Categorydao;
import com.niit.dao.Catgeorydaoimpl;

/*
@ContextConfiguration(locations={"src/main/webapp/WEB-INF/applicationcontext.xml"})
public class CategoryTestCase extends AbstractTransactionalJUnit4SpringContextTests{

	@Autowired
	private static Catgeorydaoimpl categoryDao;
	
	@Test
	public void getAllCategoriesTestCase(){
		int records = categoryDao.getcategories().size();
		assertEquals("getAllCategoriesTestCase",3,records);
	}
}
*/