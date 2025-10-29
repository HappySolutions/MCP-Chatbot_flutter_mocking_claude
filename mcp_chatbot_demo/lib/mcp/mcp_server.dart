typedef ToolFn = Future<dynamic> Function(dynamic args);

class MCPServer {
  final Map<String, ToolFn> _tools = {};
  void registerTool(String name, ToolFn tool) {
    print('Registered tool $name');
  }

  Future<dynamic> callTool(String name, [dynamic args]) async {
    final tool = _tools[name];
    if (tool == null) throw Exception('tool $name not found');
    return await tool(args);
  }
}
