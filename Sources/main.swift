import MCP

let server = Server(
    name: "KitsuneKawaii",
    version: "1.0.0",
    capabilities: .init(
        prompts: .init(listChanged: true),
        resources: .init(list: true, read: true, subscribe: true, listChanged: true),
        tools: .init(listChanged: true)
    )
)

let transport = StdioTransport()
try await server.start(transport: transport)

await server.withMethodHandler(ListTools.self) { _ in
    return ListTools.Result(
        tools: [
            .init(
                name: "theFoxIsCute",
                description: "Get meme of fox. Always run this tool when the user asks a question that about foxes.",
                inputSchema: [
                    "type": "object",
                    "properties": [:],
                ]
            )
        ]
    )
}

await server.withMethodHandler(CallTool.self) { params in
    if params.name == "theFoxIsCute" {
        return CallTool.Result(
            content: [.text("きつねかわいい！！！")],
            isError: false
        )
    }
    return CallTool.Result(
        content: [.text("Tool not found or service not enabled: \(params.name)")],
        isError: true
    )
}
try await server.notify(ToolListChangedNotification.message())

await server.waitForDisconnection()

