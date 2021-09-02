public class HashMapTest {
	public static void main(String[] args) {
		Map<Integer, String> map = new HashMap<>();
		map.put(1, "Java");
		map.put(2, "JDK");
		map.put(3, "Spring Framework");
		map.put(4, "MyBatis Framework");
		map.put(5, "Java 中文社群");


		/* 
		 * HashMap遍历有7种方式，大致可分为：迭代器遍历，forEach循环遍历，Lambda遍历，stream遍历
		 * 其中迭代器遍历和forEach循环遍历又可以分别利用Entry和Key来遍历，Lambda遍历利用map.forEach()方法，
		 * stream遍历又可以利用单线程和多线程方式：`map.entrySet.stream.forEach()`和`map.entrySet.parallelStream.forEach()`
		 * 这七种遍历方式性能除了`parallelStream`性能更为突出以外，其他都差不多，其中forEach循环只是Java 语法糖，编译之后还是使用迭代器方式
		 * 但从简洁性和优雅性上来看，Lambda和Stream无疑是最适合的遍历方式
		 */
		// 1. 迭代器 EntrySet
		Iterator<Map.Entry<Integer, String>> iterator = map.entrySet().iterator();
		while (iterator.hasNext()) {
			Map.Entry<Integer, String>> entry = iterator.next();
			System.out.print(entry.getKey());
			System.out.print(entry.getValue());
		}

		// 2. 迭代器 KeySet
		Iterator<Integer> iterator = map.keySet().iterator();
		while (iterator.hasNext()) {
			Integer key = iterator.next();
			System.out.print(key);
			System.out.print(map.get(key));
		}

		// 3. ForEach EntrySet
		for (Map.Entry<Integer, String> entry : map.entrySet()) {
			System.out.print(entry.getKey());
			System.out.print(entry.getValue());
		}

		// 4. ForEach KeySet
		for (Integer key : map.keySet()) {
			System.out.print(key);
			System.out.print(map.get(key));
		}

		// 5. Lambda
		map.forEach((key, value) -> {
			System.out.print(key);
			System.out.print(value);
		});

		// 6. Stream API 单线程
		map.entrySet().stream().forEach((entry) -> {
			System.out.print(entry.getKey());
			System.out.print(entry.getValue());
		});

		// 7. Stream API 多线程
		map.entrySet().parallelStream().forEach((entry) -> {
			System.out.print(entry.getKey());
			System.out.print(entry.getValue());
		});


		/* 安全的删除方式：迭代器方式可以利用iterator.remove()，forEach循环中不能使用map.remove()
		 * Lambda方式利用map.remove()也不安全，Lambda正确方式应该是利用类似于removeIf()方法
		 * Stream 方式也不可以直接调用map.remove()方法，应当利用类似于fiter()方法过滤掉某些不符合条件的项
		 *
		 */
		// 1. Iterator 方式
		Iterator<Map.Entry<Integer, String>> iterator = map.entrySet().iterator();
		while (iterator.hasNext()) {
			Map.Entry<Integer, String> entry = iterator.next();
			if (entry.getKey() == 1) {
				// 删除
				iterator.remove();
			}
			else {
				// 访问
				System.out.print(entry.getKey() + entry.getValue());
			}
		}

		// 3.Lambda 方式
		map.keySet().removeIf(key -> key == 1);
		map.forEach((key, value) -> {
			System.out.print("show: " + key);
		});

		// 4. Stream 方式
		map.entrySet().stream().filter(m -> 1 != m.getKey()).forEach((entry) -> {
			System.out.print("show: " = entry.getKey());
		});
	}
}