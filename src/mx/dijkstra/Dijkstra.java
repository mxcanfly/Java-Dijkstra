package mx.dijkstra;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Stack;

/**
 * 基于 Dijkstra 贪心算法的最短路径寻找 先初始化 init 初始化一次 只可以调用一次 dijkatra方法.再次调用请重新初始化
 * @author Dewey
 */
public class Dijkstra {

	/**
	 * 点的键值集合,标识从起点到每个点的权重总和
	 */
	private Map<Point, Integer> pointKeys = new HashMap<Point, Integer>();
	/**
	 * 边集合,两个点成一条边.用来表示那些点可以连通和所需的权重.
	 */
	private ArrayList<Edge> edges = new ArrayList<Edge>();
	/**
	 * 从起点到每个点的最短路径集合,当算法执行完毕时,里面保存着从起点到各个点的最短路径
	 */
	private Map<Point, Dist> paths = new HashMap<Point, Dist>();
	/**
	 * 表示无穷大的常量
	 */
	private static final int INFINITY = 99999;

	/**
	 * 清空所有集合
	 */
	private void reset() {
		pointKeys.clear();
		edges.clear();
		paths.clear();
	}

	/**
	 * 初始化
	 * 
	 * @param source 点的集合
	 * @param edegs 边的集合
	 * @param start 寻径的起点
	 */
	private void init(ArrayList<Point> source, ArrayList<Edge> edegs, Point start) {
		reset();
		this.edges = edegs;
		for (int i = 0; i < source.size(); i++) {// 取出每个点
			Point v = source.get(i);
			// 把每个点放入键值集合
			if (v.equals(start)) {// 当前点为起点
				// 起点到起点的键值为0
				pointKeys.put(v, 0);
			} else {
				// 到其他点为无穷大
				pointKeys.put(v, INFINITY);
			}
			// 初始化从起点到起点的路径
			Dist dist = new Dist();
			dist.setPoint(start);// 路程点为起点
			dist.setPreDist(null);// 前一个点为null
			dist.setWeight(0);// 路程开销为0
			paths.put(start, dist);// 放入路径集合
		}
	}

	/**
	 * dijkstra 算法实现
	 * @param source 点
	 * @param edegs 边
	 * @param start 寻径的起点
	 * @param end 需要寻的终点
	 * @return
	 */
	public Stack<Point> dijkstra(ArrayList<Point> source, ArrayList<Edge> edegs, Point start, Point end) {
		init(source, edegs, start);
		Integer endPointKey = null;// 从当前点走向下一个点 下一个点原来所需要的开销
		while (pointKeys.size() > 0) {// 键值集合所存在的点大于0
			Point minkeyPoint = getMinKey(pointKeys);// 获得当前键值几个拥有最小键值(开销)的点 称为当前点
			int keyValue = pointKeys.get(minkeyPoint);// 获得拥有最小键值点的键值
			ArrayList<Edge> adjacentEdegs = getEdegs(edges, minkeyPoint);// 寻找与这个点相邻的边
			for (Edge edge : adjacentEdegs) {// 遍历相邻的边
				int currentKey = keyValue + edge.getWeight();// 从起点到当前点的开销 + 通过这条边到下一个点的开销 称为当前开销
				endPointKey = pointKeys.get(edge.getEnd());// 获取从起点到当前边对面点的开销
				if (endPointKey == null) {// 若获取不到 则说明对面的点已经不存在于键值集合 通常是个环路
					continue;// 可能是个环路 或 不可达
				}
				updatePath(endPointKey, edge, currentKey);// 更新路径
			}
			pointKeys.remove(minkeyPoint);
		}
		return getPaths(end);
	}

	/**
	 * 更新路径
	 * @param endPointKey
	 * @param edge
	 * @param currentKey
	 */
	private void updatePath(Integer endPointKey, Edge edge, int currentKey) {
		Dist advance = null;// 每次寻径所走的路线 单步
		if (currentKey < endPointKey) {// 若当前开销 小于 原来从起点到边对面点的开销 则更新对点的键值
			pointKeys.put(edge.getEnd(), currentKey);// 覆盖原来的键值
			advance = new Dist();// 创建新的路程
			advance.setPoint(edge.getEnd());// 起点为 对面边的点
			advance.setPreDist(paths.get(edge.getStart()));// 前一个点为当前点
			advance.setWeight(edge.getWeight());// 路程长度为边的权重
			paths.put(edge.getEnd(), advance);// 放入路径集合
		}
	}

	/**
	 * 算法执行完毕后 寻找重点为参数点的路径 返回路径点的栈 因为终点会被最后找到,所以返回一个栈
	 * 而不是数组,这样遍历比较方便.直接执行初战操作就可以得到正确的从起点到终点所需要的点
	 * @param end
	 * @return
	 */
	private Stack<Point> getPaths(Point end) {
		Stack<Point> stack = null;
		Iterator<Point> iterator = paths.keySet().iterator();
		while (iterator.hasNext()) {
			stack = new Stack<Point>();
			Point c = iterator.next();
			if (!c.equals(end)) {
				continue;
			}
			Dist td = paths.get(c);
			while (td != null) {
				stack.push(td.getPoint());
				td = td.getPreDist();
			}
			break;
		}
		return stack;
	}

	/**
	 * 在集合中寻找值最小的元素
	 * @param pointKeys
	 * @return
	 */
	private Point getMinKey(Map<Point, Integer> pointKeys) {
		Iterator<Point> iterator = pointKeys.keySet().iterator();
		int minValue = INFINITY;
		Point minKeyPoint = null;
		while (iterator.hasNext()) {
			Point point = iterator.next();
			Integer value = pointKeys.get(point);
			if (value < minValue) {
				minValue = value;
				minKeyPoint = point;
			}
		}
		return minKeyPoint;
	}

	/**
	 * 寻找与参数点相邻的边
	 * @param edges
	 * @param point
	 * @return
	 */
	private ArrayList<Edge> getEdegs(ArrayList<Edge> edges, Point point) {
		ArrayList<Edge> tempEdges = new ArrayList<Edge>();
		for (Edge edge : edges) {
			if (edge.getStart().equals(point)) {
				tempEdges.add(edge);
			}
		}
		return tempEdges;
	}

}
