package mx.util;

import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class ConfigUtil {
	private static final String configPath="config.txt";
	public Map<String,String> map = null;
	private static ConfigUtil util;
	
	private ConfigUtil(){
		
	}
	
	public static ConfigUtil getInstance() {
		
		if (util == null) {
			util = new ConfigUtil();
			util.init();
		}
		return util;
	}

	private void init() {
		map=new HashMap<String,String>();
		try {
			File file = new File("config.txt");
			if (!file.exists())
				file.createNewFile();
			List<String> list = FileUtil.readText(file.getAbsolutePath());
			System.out.println(file.getAbsolutePath());
			if (CheckUtil.isNotNull(list)) {
				for (String tmpStr : list) {
					String[] tmpValues=tmpStr.split("=");
					if (tmpValues!=null&&tmpValues.length==2) {
						map.put(tmpValues[0], tmpValues[1]);
					}
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void saveConfig(){
		String strs="";
		
		Iterator<String> it=this.map.keySet().iterator();
		while(it.hasNext()){
			String key=it.next().toString();
			strs+=key+"="+map.get(key)+"\r\n";
		}
		
		try {
			FileUtil.writeText(configPath, strs);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public String get(String key){
		return map.get(key);
	}
	
	public void put(String key,String val){
		map.put(key, val);
		this.saveConfig();
		this.init();
	}
		
}
