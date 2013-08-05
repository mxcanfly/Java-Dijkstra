package mx.dijkstra;


/**
 * 点与点组成的边
 * @author Dewey
 *
 */
public class Edge {
	/**
	 * 起点
	 */
	private Point start;
	/**
	 * 结束点
	 */
	private Point end;
	/**
	 * 权重
	 */
	private int weight;
	
	public Edge(Point start,Point end,int weight){
		this.start=start;
		this.end=end;
		this.weight=weight;
	}
	public Point getStart() {
		return start;
	}
	public void setStart(Point start) {
		this.start = start;
	}
	public Point getEnd() {
		return end;
	}
	public void setEnd(Point end) {
		this.end = end;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
}
