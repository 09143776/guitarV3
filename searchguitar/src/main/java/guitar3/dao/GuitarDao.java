package guitar3.dao;

import java.util.List;

import guitar3.entity.Guitar;
import guitar3.entity.GuitarSpec;

public interface GuitarDao {

	List<Guitar> search(GuitarSpec spec);
	List<Guitar> show();
	public boolean add(Guitar guitar);
	public boolean delete(Guitar guitar);
}