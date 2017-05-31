package guitar3.dao;


public class dataAccess {

	private static String db="sql";
    public static GuitarDao createGuitarDao() {
		GuitarDao result=null;
		switch (db) {
		case "sql":
			result=new guitar3.sqldao.GuitarDaoimpl();
			break;
		   case "mysql":
		result=new guitar3.mysqldao.GuitarDaoimpl();
			break;
		}
		return result;
	}
}
