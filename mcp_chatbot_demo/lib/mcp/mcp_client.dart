import 'package:mcp_chatbot_demo/mcp/mcp_server.dart';

class MCPClient {
  final MCPServer mcpServer;
  MCPClient(this.mcpServer);

  Future<dynamic> runTool(String toolName, [dynamic args]) async {
    print('Calling tool: $toolName');

    final result = await mcpServer.callTool(toolName, args);
    return result;
  }
}
