package Functions;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Models.Alimentation;

public class AlimentationFunctions {
	
	//méthode pour récupérer tous les aliments
	public static ArrayList<Alimentation> allTypes() throws SQLException{
		ArrayList<Alimentation> alimentation = new ArrayList<Alimentation>();
		Connection cnx = DBConnect.ConnectDB();
		PreparedStatement stat = cnx.prepareStatement("SELECT * FROM Alimentation");
		ResultSet result = stat.executeQuery();
		while(result.next()){
			int ID = result.getInt("idAlimentation");
			String TYPE = result.getString("TypeAlimentation");
			Alimentation alim = new Alimentation(ID, TYPE);
			alimentation.add(alim);
		}
		return alimentation;
	}
}
