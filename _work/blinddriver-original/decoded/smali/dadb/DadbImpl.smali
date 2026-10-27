.class public final Ldadb/DadbImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldadb/Dadb;


# instance fields
.field private final connectTimeout:I

.field private connection:Lt8/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt8/j;"
        }
    .end annotation
.end field

.field private final host:Ljava/lang/String;

.field private final keepAlive:Z

.field private final keyPair:Ldadb/AdbKeyPair;

.field private final port:I

.field private final socketTimeout:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILdadb/AdbKeyPair;IIZ)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldadb/DadbImpl;->host:Ljava/lang/String;

    .line 3
    iput p2, p0, Ldadb/DadbImpl;->port:I

    .line 4
    iput-object p3, p0, Ldadb/DadbImpl;->keyPair:Ldadb/AdbKeyPair;

    .line 5
    iput p4, p0, Ldadb/DadbImpl;->connectTimeout:I

    .line 6
    iput p5, p0, Ldadb/DadbImpl;->socketTimeout:I

    .line 7
    iput-boolean p6, p0, Ldadb/DadbImpl;->keepAlive:Z

    if-ltz p2, :cond_2

    if-ltz p4, :cond_1

    if-ltz p5, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "socketTimeout must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "connectTimeout must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "port must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILdadb/AdbKeyPair;IIZILj9/g;)V
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p7, 0x8

    const/4 p8, 0x0

    if-eqz p3, :cond_1

    move v4, p8

    goto :goto_0

    :cond_1
    move v4, p4

    :goto_0
    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_2

    move v5, p8

    goto :goto_1

    :cond_2
    move v5, p5

    :goto_1
    and-int/lit8 p3, p7, 0x20

    if-eqz p3, :cond_3

    move v6, p8

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    goto :goto_3

    :cond_3
    move v6, p6

    goto :goto_2

    .line 11
    :goto_3
    invoke-direct/range {v0 .. v6}, Ldadb/DadbImpl;-><init>(Ljava/lang/String;ILdadb/AdbKeyPair;IIZ)V

    return-void
.end method

.method private final declared-synchronized connection()Ldadb/AdbConnection;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldadb/DadbImpl;->connection:Lt8/j;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lt8/j;->m:Ljava/lang/Object;

    check-cast v1, Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Ldadb/DadbImpl;->newConnection()Lt8/j;

    move-result-object v0

    iput-object v0, p0, Ldadb/DadbImpl;->connection:Lt8/j;

    :cond_1
    iget-object v0, v0, Lt8/j;->l:Ljava/lang/Object;

    check-cast v0, Ldadb/AdbConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final newConnection()Lt8/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt8/j;"
        }
    .end annotation

    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Ldadb/DadbImpl;->host:Ljava/lang/String;

    iget v2, p0, Ldadb/DadbImpl;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    iget v2, p0, Ldadb/DadbImpl;->socketTimeout:I

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    iget v2, p0, Ldadb/DadbImpl;->connectTimeout:I

    invoke-virtual {v1, v0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    iget-boolean v0, p0, Ldadb/DadbImpl;->keepAlive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setKeepAlive(Z)V

    :cond_0
    sget-object v0, Ldadb/AdbConnection;->Companion:Ldadb/AdbConnection$Companion;

    iget-object p0, p0, Ldadb/DadbImpl;->keyPair:Ldadb/AdbKeyPair;

    invoke-virtual {v0, v1, p0}, Ldadb/AdbConnection$Companion;->connect(Ljava/net/Socket;Ldadb/AdbKeyPair;)Ldadb/AdbConnection;

    move-result-object p0

    new-instance v0, Lt8/j;

    invoke-direct {v0, p0, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public varargs abbExec([Ljava/lang/String;)Ldadb/AdbStream;
    .locals 0

    invoke-static {p0, p1}, Ldadb/Dadb$DefaultImpls;->abbExec(Ldadb/Dadb;[Ljava/lang/String;)Ldadb/AdbStream;

    move-result-object p0

    return-object p0
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Ldadb/DadbImpl;->connection:Lt8/j;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lt8/j;->l:Ljava/lang/Object;

    check-cast p0, Ldadb/AdbConnection;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ldadb/AdbConnection;->close()V

    :cond_0
    return-void
.end method

.method public final closeConnection()V
    .locals 0

    iget-object p0, p0, Ldadb/DadbImpl;->connection:Lt8/j;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lt8/j;->m:Ljava/lang/Object;

    check-cast p0, Ljava/net/Socket;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/net/Socket;->close()V

    :cond_0
    return-void
.end method

.method public varargs execCmd([Ljava/lang/String;)Ldadb/AdbStream;
    .locals 0

    invoke-static {p0, p1}, Ldadb/Dadb$DefaultImpls;->execCmd(Ldadb/Dadb;[Ljava/lang/String;)Ldadb/AdbStream;

    move-result-object p0

    return-object p0
.end method

.method public varargs install(Lbb/u;J[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Ldadb/Dadb$DefaultImpls;->install(Ldadb/Dadb;Lbb/u;J[Ljava/lang/String;)V

    return-void
.end method

.method public varargs install(Ljava/io/File;[Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Ldadb/Dadb$DefaultImpls;->install(Ldadb/Dadb;Ljava/io/File;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs installMultiple(Ljava/util/List;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/io/File;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Ldadb/Dadb$DefaultImpls;->installMultiple(Ldadb/Dadb;Ljava/util/List;[Ljava/lang/String;)V

    return-void
.end method

.method public open(Ljava/lang/String;)Ldadb/AdbStream;
    .locals 1

    const-string v0, "destination"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ldadb/DadbImpl;->connection()Ldadb/AdbConnection;

    move-result-object p0

    invoke-virtual {p0, p1}, Ldadb/AdbConnection;->open(Ljava/lang/String;)Ldadb/AdbStream;

    move-result-object p0

    return-object p0
.end method

.method public openShell(Ljava/lang/String;)Ldadb/AdbShellStream;
    .locals 0

    invoke-static {p0, p1}, Ldadb/Dadb$DefaultImpls;->openShell(Ldadb/Dadb;Ljava/lang/String;)Ldadb/AdbShellStream;

    move-result-object p0

    return-object p0
.end method

.method public openSync()Ldadb/AdbSyncStream;
    .locals 0

    invoke-static {p0}, Ldadb/Dadb$DefaultImpls;->openSync(Ldadb/Dadb;)Ldadb/AdbSyncStream;

    move-result-object p0

    return-object p0
.end method

.method public pull(Lbb/t;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Ldadb/Dadb$DefaultImpls;->pull(Ldadb/Dadb;Lbb/t;Ljava/lang/String;)V

    return-void
.end method

.method public pull(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Ldadb/Dadb$DefaultImpls;->pull(Ldadb/Dadb;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public push(Lbb/u;Ljava/lang/String;IJ)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Ldadb/Dadb$DefaultImpls;->push(Ldadb/Dadb;Lbb/u;Ljava/lang/String;IJ)V

    return-void
.end method

.method public push(Ljava/io/File;Ljava/lang/String;IJ)V
    .locals 0

    .line 2
    invoke-static/range {p0 .. p5}, Ldadb/Dadb$DefaultImpls;->push(Ldadb/Dadb;Ljava/io/File;Ljava/lang/String;IJ)V

    return-void
.end method

.method public root()V
    .locals 0

    invoke-static {p0}, Ldadb/Dadb$DefaultImpls;->root(Ldadb/Dadb;)V

    return-void
.end method

.method public shell(Ljava/lang/String;)Ldadb/AdbShellResponse;
    .locals 0

    invoke-static {p0, p1}, Ldadb/Dadb$DefaultImpls;->shell(Ldadb/Dadb;Ljava/lang/String;)Ldadb/AdbShellResponse;

    move-result-object p0

    return-object p0
.end method

.method public supportsFeature(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "feature"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ldadb/DadbImpl;->connection()Ldadb/AdbConnection;

    move-result-object p0

    invoke-virtual {p0, p1}, Ldadb/AdbConnection;->supportsFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public tcpForward(II)Ljava/lang/AutoCloseable;
    .locals 0

    invoke-static {p0, p1, p2}, Ldadb/Dadb$DefaultImpls;->tcpForward(Ldadb/Dadb;II)Ljava/lang/AutoCloseable;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ldadb/DadbImpl;->host:Ljava/lang/String;

    iget p0, p0, Ldadb/DadbImpl;->port:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public uninstall(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Ldadb/Dadb$DefaultImpls;->uninstall(Ldadb/Dadb;Ljava/lang/String;)V

    return-void
.end method

.method public unroot()V
    .locals 0

    invoke-static {p0}, Ldadb/Dadb$DefaultImpls;->unroot(Ldadb/Dadb;)V

    return-void
.end method
