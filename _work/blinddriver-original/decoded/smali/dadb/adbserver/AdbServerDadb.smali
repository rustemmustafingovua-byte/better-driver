.class final Ldadb/adbserver/AdbServerDadb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldadb/Dadb;


# instance fields
.field private final connectTimeout:I

.field private final deviceQuery:Ljava/lang/String;

.field private final host:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final port:I

.field private final socketTimeout:I

.field private final supportedFeatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceQuery"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p4, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldadb/adbserver/AdbServerDadb;->host:Ljava/lang/String;

    .line 3
    iput p2, p0, Ldadb/adbserver/AdbServerDadb;->port:I

    .line 4
    iput-object p3, p0, Ldadb/adbserver/AdbServerDadb;->deviceQuery:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Ldadb/adbserver/AdbServerDadb;->name:Ljava/lang/String;

    .line 6
    iput p5, p0, Ldadb/adbserver/AdbServerDadb;->connectTimeout:I

    .line 7
    iput p6, p0, Ldadb/adbserver/AdbServerDadb;->socketTimeout:I

    .line 8
    const-string p1, "host:features"

    invoke-virtual {p0, p1}, Ldadb/adbserver/AdbServerDadb;->open(Ljava/lang/String;)Ldadb/AdbStream;

    move-result-object p1

    .line 9
    :try_start_0
    sget-object p2, Ldadb/adbserver/AdbServer;->INSTANCE:Ldadb/adbserver/AdbServer;

    new-instance p3, Ljava/io/DataInputStream;

    invoke-interface {p1}, Ldadb/AdbStream;->getSource()Lbb/i;

    move-result-object p4

    invoke-interface {p4}, Lbb/i;->Q()Ljava/io/InputStream;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p2, p3}, Ldadb/adbserver/AdbServer;->readString$dadb(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object p2

    .line 10
    const-string p3, ","

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lr9/k;->p0(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lu8/m;->F0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p3, 0x0

    .line 11
    invoke-static {p1, p3}, Lwa/h;->l(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    iput-object p2, p0, Ldadb/adbserver/AdbServerDadb;->supportedFeatures:Ljava/util/Set;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p1, p0}, Lwa/h;->l(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIILj9/g;)V
    .locals 1

    and-int/lit8 p8, p7, 0x10

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move p5, v0

    :cond_0
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_1

    move p6, v0

    .line 12
    :cond_1
    invoke-direct/range {p0 .. p6}, Ldadb/adbserver/AdbServerDadb;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    return-void
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
    .locals 3

    const-string v0, "destination"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ldadb/adbserver/AdbBinary;->INSTANCE:Ldadb/adbserver/AdbBinary;

    iget-object v1, p0, Ldadb/adbserver/AdbServerDadb;->host:Ljava/lang/String;

    iget v2, p0, Ldadb/adbserver/AdbServerDadb;->port:I

    invoke-virtual {v0, v1, v2}, Ldadb/adbserver/AdbBinary;->ensureServerRunning(Ljava/lang/String;I)V

    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Ldadb/adbserver/AdbServerDadb;->host:Ljava/lang/String;

    iget v2, p0, Ldadb/adbserver/AdbServerDadb;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    iget v2, p0, Ldadb/adbserver/AdbServerDadb;->socketTimeout:I

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    iget v2, p0, Ldadb/adbserver/AdbServerDadb;->connectTimeout:I

    invoke-virtual {v1, v0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    sget-object v0, Ldadb/adbserver/AdbServer;->INSTANCE:Ldadb/adbserver/AdbServer;

    iget-object p0, p0, Ldadb/adbserver/AdbServerDadb;->deviceQuery:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ldadb/adbserver/AdbServer;->send$dadb(Ljava/net/Socket;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Ldadb/adbserver/AdbServer;->send$dadb(Ljava/net/Socket;Ljava/lang/String;)V

    new-instance p0, Ldadb/adbserver/AdbServerDadb$open$1;

    invoke-direct {p0, v1}, Ldadb/adbserver/AdbServerDadb$open$1;-><init>(Ljava/net/Socket;)V

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

    iget-object p0, p0, Ldadb/adbserver/AdbServerDadb;->supportedFeatures:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

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
    .locals 0

    iget-object p0, p0, Ldadb/adbserver/AdbServerDadb;->name:Ljava/lang/String;

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
