package mx.dijkstra;

/**
 * 路程
 * @author Dewey
 */
public class Dist{
	/**
	 * 路程的开销 
	 */
	private int weight;
	/**
	 * 路程点 
	 */
	private Point point;
	/**
	 * 前一个点
	 */
	private Dist preDist;
	
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public Point getPoint() {
		return point;
	}
	public void setPoint(Point point) {
		this.point = point;
	}
	public Dist getPreDist() {
		return preDist;
	}
	public void setPreDist(Dist preDist) {
		this.preDist = preDist;
	}
}
