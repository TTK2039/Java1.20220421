package util;

/**
 * メソッドをまとめたParamUtilクラス
 */
public class ParamUtil {

    /**
     * ポイント計算
     */
	public static int getPoint(int money) {
//		if (!isNullOrEmpty((String)money)) {
			int point = (int)(money * 0.01);
			
			return point;
//		} else {
//			return (0);
//		}
	}

    /**
     * 
     * ポイント計算(ランクあり)
     */
	public static int getPoint(int money, int rank) {
		if (rank == 1) {
			int point = (int)(money * 0.03);
			return point;
		} else if (rank == 2) {
			int point = (int)(money * 0.02);
			return point;
		} else {
		return (0);
		}
	}
    /**
     * 引数に指定した文字列がnull、または空文字かを判定
     */
    public static boolean isNullOrEmpty(String str) {
        if (str == null || str == "") {
        	return true;
        } else {
    	return false;
        }
    }
}