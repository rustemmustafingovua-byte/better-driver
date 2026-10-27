.class final Ldadb/forwarding/TcpForwarder$handleForwarding$1$readerThread$1;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldadb/forwarding/TcpForwarder;->handleForwarding()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj9/o;",
        "Li9/a;"
    }
.end annotation


# instance fields
.field final synthetic $adbStream:Ldadb/AdbStream;

.field final synthetic $client:Ljava/net/Socket;

.field final synthetic this$0:Ldadb/forwarding/TcpForwarder;


# direct methods
.method public constructor <init>(Ldadb/forwarding/TcpForwarder;Ljava/net/Socket;Ldadb/AdbStream;)V
    .locals 0

    iput-object p1, p0, Ldadb/forwarding/TcpForwarder$handleForwarding$1$readerThread$1;->this$0:Ldadb/forwarding/TcpForwarder;

    iput-object p2, p0, Ldadb/forwarding/TcpForwarder$handleForwarding$1$readerThread$1;->$client:Ljava/net/Socket;

    iput-object p3, p0, Ldadb/forwarding/TcpForwarder$handleForwarding$1$readerThread$1;->$adbStream:Ldadb/AdbStream;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldadb/forwarding/TcpForwarder$handleForwarding$1$readerThread$1;->invoke()V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public final invoke()V
    .locals 5

    .line 2
    iget-object v0, p0, Ldadb/forwarding/TcpForwarder$handleForwarding$1$readerThread$1;->this$0:Ldadb/forwarding/TcpForwarder;

    .line 3
    iget-object v1, p0, Ldadb/forwarding/TcpForwarder$handleForwarding$1$readerThread$1;->$client:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "getInputStream(...)"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v2, Lbb/d;

    new-instance v3, Lbb/w;

    .line 5
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x1

    .line 6
    invoke-direct {v2, v4, v1, v3}, Lbb/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 7
    iget-object p0, p0, Ldadb/forwarding/TcpForwarder$handleForwarding$1$readerThread$1;->$adbStream:Ldadb/AdbStream;

    invoke-interface {p0}, Ldadb/AdbStream;->getSink()Lbb/h;

    move-result-object p0

    .line 8
    invoke-static {v0, v2, p0}, Ldadb/forwarding/TcpForwarder;->access$forward(Ldadb/forwarding/TcpForwarder;Lbb/u;Lbb/h;)V

    return-void
.end method
