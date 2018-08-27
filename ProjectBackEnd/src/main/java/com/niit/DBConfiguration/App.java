package com.niit.DBConfiguration;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.configuration.DBconfig;
import com.niit.dao.ProductDao;
import com.niit.dao.ProductDaoImpl;
import com.niit.models.Product;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        System.out.println( "Hello World!" );
        @SuppressWarnings("resource")
		ApplicationContext context=new AnnotationConfigApplicationContext(DBconfig.class,ProductDaoImpl.class);
      
		ProductDao productDao=(ProductDao)context.getBean("productDaoImpl");
        Product product=new Product(); 
        product.setProductname("Pen"); 
        product.setProductdesc("About pen");
        product.setPrice(100); 
        product.setQuantity(10); 
        product.setProductname("Hair Starightner");
        product.setProductdesc("This product gives you smooth hair");
        product.setPrice(1000);
        product.setQuantity(1);
        product.setProductname("harry potter"); 
        product.setProductdesc("adventurous book");
        product.setPrice(500); 
        product.setQuantity(2);
        //productDao.deleteProduct(1);
        productDao.saveProduct(product);
        product.setPrice(100000);
       
    }
    }

