.class final Ldadb/forwarding/TcpForwarder$start$2;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldadb/forwarding/TcpForwarder;->start()V
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
.field final synthetic this$0:Ldadb/forwarding/TcpForwarder;


# direct methods
.method public constructor <init>(Ldadb/forwarding/TcpForwarder;)V
    .locals 0

    iput-object p1, p0, Ldadb/forwarding/TcpForwarder$start$2;->this$0:Ldadb/forwarding/TcpForwarder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldadb/forwarding/TcpForwarder$start$2;->invoke()V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Ldadb/forwarding/TcpForwarder$start$2;->this$0:Ldadb/forwarding/TcpForwarder;

    invoke-static {v0}, Ldadb/forwarding/TcpForwarder;->access$handleForwarding(Ldadb/forwarding/TcpForwarder;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object p0, p0, Ldadb/forwarding/TcpForwarder$start$2;->this$0:Ldadb/forwarding/TcpForwarder;

    sget-object v0, Ldadb/forwarding/TcpForwarder$State;->STOPPED:Ldadb/forwarding/TcpForwarder$State;

    invoke-static {p0, v0}, Ldadb/forwarding/TcpForwarder;->access$moveToState(Ldadb/forwarding/TcpForwarder;Ldadb/forwarding/TcpForwarder$State;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    :try_start_1
    new-instance v1, Ldadb/forwarding/TcpForwarder$start$2$1;

    invoke-direct {v1, v0}, Ldadb/forwarding/TcpForwarder$start$2$1;-><init>(Ljava/io/IOException;)V

    invoke-static {v1}, Ldadb/LoggingKt;->log(Li9/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :catch_1
    iget-object p0, p0, Ldadb/forwarding/TcpForwarder$start$2;->this$0:Ldadb/forwarding/TcpForwarder;

    sget-object v0, Ldadb/forwarding/TcpForwarder$State;->STOPPED:Ldadb/forwarding/TcpForwarder$State;

    invoke-static {p0, v0}, Ldadb/forwarding/TcpForwarder;->access$moveToState(Ldadb/forwarding/TcpForwarder;Ldadb/forwarding/TcpForwarder$State;)V

    goto :goto_1

    :goto_0
    iget-object p0, p0, Ldadb/forwarding/TcpForwarder$start$2;->this$0:Ldadb/forwarding/TcpForwarder;

    sget-object v1, Ldadb/forwarding/TcpForwarder$State;->STOPPED:Ldadb/forwarding/TcpForwarder$State;

    invoke-static {p0, v1}, Ldadb/forwarding/TcpForwarder;->access$moveToState(Ldadb/forwarding/TcpForwarder;Ldadb/forwarding/TcpForwarder$State;)V

    throw v0

    :goto_1
    return-void
.end method
