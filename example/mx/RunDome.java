package mx;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Stack;

import mx.db.D;
import mx.dijkstra.Dijkstra;
import mx.dijkstra.Edge;
import mx.dijkstra.Point;

public class RunDome {

	public void demo1() {
		//声明点
		Point A = new MyPoint(1,0,0);
		Point B = new MyPoint(2,0,0);
		Point C = new MyPoint(3,0,0);
		Point D = new MyPoint(4,0,0);
		Point E = new MyPoint(5,0,0);
		//放入点集合
		ArrayList<Point> source = new ArrayList<Point>();
		source.add(A);
		source.add(B);
		source.add(C);
		source.add(D);
		source.add(E);
		//声明边
		ArrayList<Edge> edges = new ArrayList<Edge>();
		edges.add(new Edge(A, B, 10));
		edges.add(new Edge(A, C, 5));
		edges.add(new Edge(B, C, 2));
		edges.add(new Edge(B, D, 1));
		edges.add(new Edge(C, B, 3));
		edges.add(new Edge(C, D, 9));
		edges.add(new Edge(C, E, 2));
		edges.add(new Edge(D, E, 4));
		edges.add(new Edge(E, D, 6));
		edges.add(new Edge(E, A, 7));
		
		Dijkstra d = new Dijkstra();
		Stack<Point> points = d.dijkstra(source, edges, A, D);//提供 点的集合 边的集合 起点 终点 开始寻径
		while (points.size() > 0) {
			Point p = points.pop();
			System.out.print(((MyPoint)p).getId()+">");//打印
		}
	}

	/**
	 * 在数据库的例子
	 * 可以使用DemoDB.sql导入Mysql数据库,在config.txt配置好数据库信息,运行测试
	 */
	public void demo2() {
		try {
			List<Map<String, String>> queryPoints = D.getEntity().getMapBySql("select * from map_point");
			List<Map<String, String>> queryEdegs = D.getEntity().getMapBySql("select * from map_path");

			long startMillis = System.currentTimeMillis();
			ArrayList<Point> source = new ArrayList<Point>();
			Map<Integer, Point> mapPoint = new HashMap<Integer, Point>();
			for (Map<String, String> pointMap : queryPoints) {
				MyPoint p = new MyPoint();
				p.setId(new Integer(pointMap.get("point_id")));
				p.setX(new Integer(pointMap.get("point_x")));
				p.setY(new Integer(pointMap.get("point_y")));
				source.add(p);
				mapPoint.put(p.getId(), p);
			}

			ArrayList<Edge> edegs = new ArrayList<Edge>();

			for (Map<String, String> edegsMap : queryEdegs) {
				Point start = mapPoint.get(new Integer(edegsMap.get("start_pid")));
				Point end = mapPoint.get(new Integer(edegsMap.get("end_pid")));
				Edge edge = new Edge(start, end, new Integer(edegsMap.get("length")));
				edegs.add(edge);
				edge = new Edge(end, start, new Integer(edegsMap.get("length")));
				edegs.add(edge);
			}

			Dijkstra d = new Dijkstra();
			Stack<Point> point = d.dijkstra(source, edegs, mapPoint.get(1), mapPoint.get(40));
			while (point.size() > 0) {
				System.out.print(((MyPoint) point.pop()).getId() + "->");
			}
			System.out.println("");
			System.out.println("运行耗时:" + (System.currentTimeMillis() - startMillis));

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		new RunDome().demo1();
	}
}
