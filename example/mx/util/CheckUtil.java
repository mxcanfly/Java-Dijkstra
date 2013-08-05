package mx.util;

import java.util.Collection;
import java.util.Map;


public class CheckUtil {
	public static boolean isNull(Object o){
		if (o==null) {
			return true;
		}
		if (o instanceof String) {
			return ((String)o).isEmpty();
		}else if (o instanceof Collection) {
			return ((Collection<?>)o).isEmpty();
		}else if (o instanceof Map) {
			return ((Map<?, ?>)o).isEmpty();
		}else if (o instanceof Number) {
			return ((Number)o).intValue()<=0;
		}
		return false;
	}
	
	public static boolean isNotNull(Object o){
		return !isNull(o);
	}
}
