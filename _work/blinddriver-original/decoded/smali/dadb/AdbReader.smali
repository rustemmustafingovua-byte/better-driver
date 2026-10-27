.class public final Ldadb/AdbReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final bufferedSource:Lbb/i;


# direct methods
.method public constructor <init>(Lbb/u;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbb/p;

    invoke-direct {v0, p1}, Lbb/p;-><init>(Lbb/u;)V

    iput-object v0, p0, Ldadb/AdbReader;->bufferedSource:Lbb/i;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Ldadb/AdbReader;->bufferedSource:Lbb/i;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final readMessage()Ldadb/AdbMessage;
    .locals 11

    iget-object v1, p0, Ldadb/AdbReader;->bufferedSource:Lbb/i;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Ldadb/AdbReader;->bufferedSource:Lbb/i;

    invoke-interface {p0}, Lbb/i;->F()I

    move-result v3

    invoke-interface {p0}, Lbb/i;->F()I

    move-result v4

    invoke-interface {p0}, Lbb/i;->F()I

    move-result v5

    invoke-interface {p0}, Lbb/i;->F()I

    move-result v6

    invoke-interface {p0}, Lbb/i;->F()I

    move-result v7

    invoke-interface {p0}, Lbb/i;->F()I

    move-result v8

    int-to-long v9, v6

    invoke-interface {p0, v9, v10}, Lbb/i;->G(J)[B

    move-result-object v9

    new-instance v2, Ldadb/AdbMessage;

    invoke-direct/range {v2 .. v9}, Ldadb/AdbMessage;-><init>(IIIIII[B)V

    new-instance p0, Ldadb/AdbReader$readMessage$1$1$1$1;

    invoke-direct {p0, v2}, Ldadb/AdbReader$readMessage$1$1$1$1;-><init>(Ldadb/AdbMessage;)V

    invoke-static {p0}, Ldadb/LoggingKt;->log(Li9/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1

    throw p0
.end method
