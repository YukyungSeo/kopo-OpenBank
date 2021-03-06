package kr.ac.kopo.controller;

import java.io.FileInputStream;
import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

public class HandlerMapping {

	private Map<String, Controller> mappings;

	public HandlerMapping(String propLocation) {
		mappings = new HashMap<>();
		Properties prop = new Properties();

		try {
			InputStream is = new FileInputStream(propLocation);
			prop.load(is);

			Set<Object> keys = prop.keySet();
			for (Object key : keys) {
				String className = prop.getProperty(key.toString());
				
				// reflection
				Class<?> clz = Class.forName(className);
				Constructor<?> constructor = clz.getConstructor();
				
				mappings.put(key.toString(), (Controller) constructor.newInstance());
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

//		mappings.put("/board/list.do", new BoardListController());
//		mappings.put("/board/writeForm.do", new BoardWriteFormController());
//		mappings.put("/board/write.do", new BoardWriteController());
//		mappings.put("/board/detail.do", new BoardDetailController());
	}

	public Controller getController(String uri) {
		return mappings.get(uri);
	}

}
