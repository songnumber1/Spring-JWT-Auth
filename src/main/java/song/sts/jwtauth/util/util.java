package song.sts.jwtauth.util;

public class util {
	public static boolean IsNullEmpty(String checkData) {
		if(checkData == null || checkData.isEmpty()) return true;
		else return false;
	}
}
