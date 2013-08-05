package mx;

import mx.dijkstra.Point;

public class MyPoint extends Point {
	private Integer id;
	private int x;
	private int y;
	
	public MyPoint(){
		
	}
	public MyPoint(Integer id, int x, int y) {
		super();
		this.id = id;
		this.x = x;
		this.y = y;
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public int getX() {
		return x;
	}
	public void setX(int x) {
		this.x = x;
	}
	public Integer getY() {
		return y;
	}
	public void setY(int y) {
		this.y = y;
	}

}
