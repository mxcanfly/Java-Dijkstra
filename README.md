Java-Dijkstra
=============
基于Java实现的Dijkstra最短路径寻径的实现.

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
			System.out.print(((MyPoint)p).getId()+">");//打印  打印结果: 1>3>2>4
      
		}
	}
  
  
  
