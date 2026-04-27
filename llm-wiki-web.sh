#!/bin/bash
# llm-wiki-web.sh — 管理 oh-my-ai wiki 本地预览服务
#
# 用法:
#   ./llm-wiki-web.sh start     启动服务
#   ./llm-wiki-web.sh stop      停止服务
#   ./llm-wiki-web.sh restart  重启服务
#   ./llm-wiki-web.sh status    查看运行状态
#   ./llm-wiki-web.sh logs      查看实时日志
#
# 依赖:
#   - Node.js >= 18
#   - 已完成一次性构建: cd web && npm install && npm run build

WIKI_ROOT="/Users/fufangjie/MyProjects/oh-my-ai"
WEB_DIR="/Users/fufangjie/MyProjects/llm-wiki-skill/web"
PORT=4175
PID_FILE="/tmp/llm-wiki-web.pid"
LOG_FILE="/tmp/llm-wiki-web.log"

cd "$WEB_DIR" || exit 1

start() {
    if [ -f "$PID_FILE" ] && kill -0 "$(cat "$PID_FILE")" 2>/dev/null; then
        echo "服务已在运行 (PID: $(cat "$PID_FILE"))"
        return 1
    fi

    echo "启动 wiki 预览服务..."
    echo "  Wiki:   $WIKI_ROOT"
    echo "  Port:   $PORT"
    echo "  URL:    http://127.0.0.1:$PORT"

    npm start -- --wiki "$WIKI_ROOT" --port $PORT > "$LOG_FILE" 2>&1 &
    echo $! > "$PID_FILE"

    sleep 2
    if kill -0 "$(cat "$PID_FILE")" 2>/dev/null; then
        echo "✅ 服务已启动 (PID: $(cat "$PID_FILE"))"
        echo "   日志: $LOG_FILE"
    else
        echo "❌ 启动失败，查看日志: tail -f $LOG_FILE"
        rm -f "$PID_FILE"
        return 1
    fi
}

stop() {
    if [ ! -f "$PID_FILE" ]; then
        echo "服务未运行（无 PID 文件）"
        return 1
    fi

    PID=$(cat "$PID_FILE")
    if kill -0 "$PID" 2>/dev/null; then
        echo "停止服务 (PID: $PID)..."
        kill "$PID" 2>/dev/null
        sleep 1
        if kill -0 "$PID" 2>/dev/null; then
            echo "强制终止..."
            kill -9 "$PID" 2>/dev/null
        fi
        echo "✅ 服务已停止"
    else
        echo "服务未运行（PID 文件过期）"
    fi
    rm -f "$PID_FILE"
}

restart() {
    echo "重启服务..."
    stop
    sleep 1
    start
}

status() {
    if [ -f "$PID_FILE" ] && kill -0 "$(cat "$PID_FILE")" 2>/dev/null; then
        PID=$(cat "$PID_FILE")
        echo "✅ 服务运行中 (PID: $PID)"
        echo "   URL:  http://127.0.0.1:$PORT"
        echo "   Wiki: $WIKI_ROOT"
        echo "   Log:  $LOG_FILE"
    else
        echo "❌ 服务未运行"
    fi
}

logs() {
    if [ ! -f "$LOG_FILE" ]; then
        echo "日志文件不存在，服务可能未启动过"
        return 1
    fi
    tail -n 50 -f "$LOG_FILE"
}

case "$1" in
    start)
        start
        ;;
    stop)
        stop
        ;;
    restart)
        restart
        ;;
    status)
        status
        ;;
    logs)
        logs
        ;;
    *)
        echo "用法: $0 {start|stop|restart|status|logs}"
        exit 1
        ;;
esac
