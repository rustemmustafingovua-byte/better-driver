.class public final Ldadb/AdbShellStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final stream:Ldadb/AdbStream;


# direct methods
.method public constructor <init>(Ldadb/AdbStream;)V
    .locals 1

    const-string v0, "stream"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldadb/AdbShellStream;->stream:Ldadb/AdbStream;

    return-void
.end method

.method private final checkId(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Invalid shell packet id: "

    invoke-static {p1, p0}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return p1
.end method

.method private final checkLength(II)I
    .locals 0

    if-ltz p2, :cond_2

    const/4 p0, 0x3

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Shell exit packet does not have payload length == 1: "

    invoke-static {p2, p0}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return p2

    :cond_2
    const-string p0, "Shell packet length must be >= 0: "

    invoke-static {p2, p0}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic write$default(Ldadb/AdbShellStream;I[BILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ldadb/AdbShellStream;->write(I[B)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    iget-object p0, p0, Ldadb/AdbShellStream;->stream:Ldadb/AdbStream;

    instance-of v0, p0, Ljava/lang/AutoCloseable;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    return-void

    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_5

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v0

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-interface {p0, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-nez v1, :cond_2

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    :goto_1
    return-void

    :cond_5
    instance-of v0, p0, Landroid/content/res/TypedArray;

    if-eqz v0, :cond_6

    check-cast p0, Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final read()Ldadb/AdbShellPacket;
    .locals 4

    iget-object v0, p0, Ldadb/AdbShellStream;->stream:Ldadb/AdbStream;

    invoke-interface {v0}, Ldadb/AdbStream;->getSource()Lbb/i;

    move-result-object v0

    invoke-interface {v0}, Lbb/i;->readByte()B

    move-result v1

    invoke-direct {p0, v1}, Ldadb/AdbShellStream;->checkId(I)I

    move-result v1

    invoke-interface {v0}, Lbb/i;->F()I

    move-result v2

    invoke-direct {p0, v1, v2}, Ldadb/AdbShellStream;->checkLength(II)I

    move-result p0

    int-to-long v2, p0

    invoke-interface {v0, v2, v3}, Lbb/i;->G(J)[B

    move-result-object p0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    new-instance v0, Ldadb/AdbShellPacket$Exit;

    invoke-direct {v0, p0}, Ldadb/AdbShellPacket$Exit;-><init>([B)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid shell packet id: "

    invoke-static {v1, v0}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Ldadb/AdbShellPacket$StdError;

    invoke-direct {v0, p0}, Ldadb/AdbShellPacket$StdError;-><init>([B)V

    return-object v0

    :cond_2
    new-instance v0, Ldadb/AdbShellPacket$StdOut;

    invoke-direct {v0, p0}, Ldadb/AdbShellPacket$StdOut;-><init>([B)V

    return-object v0
.end method

.method public final readAll()Ldadb/AdbShellResponse;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ldadb/AdbShellStream;->read()Ldadb/AdbShellPacket;

    move-result-object v2

    instance-of v3, v2, Ldadb/AdbShellPacket$Exit;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ldadb/AdbShellPacket;->getPayload()[B

    move-result-object p0

    const/4 v2, 0x0

    aget-byte p0, p0, v2

    new-instance v2, Ldadb/AdbShellResponse;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "toString(...)"

    invoke-static {v0, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v0, v1, p0}, Ldadb/AdbShellResponse;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v2

    :cond_1
    instance-of v3, v2, Ldadb/AdbShellPacket$StdOut;

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ldadb/AdbShellPacket;->getPayload()[B

    move-result-object v2

    sget-object v4, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    instance-of v3, v2, Ldadb/AdbShellPacket$StdError;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ldadb/AdbShellPacket;->getPayload()[B

    move-result-object v2

    sget-object v4, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final write(I[B)V
    .locals 0

    .line 2
    iget-object p0, p0, Ldadb/AdbShellStream;->stream:Ldadb/AdbStream;

    invoke-interface {p0}, Ldadb/AdbStream;->getSink()Lbb/h;

    move-result-object p0

    .line 3
    invoke-interface {p0, p1}, Lbb/h;->writeByte(I)Lbb/h;

    if-eqz p2, :cond_0

    .line 4
    array-length p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Lbb/h;->j(I)Lbb/h;

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p0, p2}, Lbb/h;->write([B)Lbb/h;

    .line 6
    :cond_1
    invoke-interface {p0}, Lbb/h;->flush()V

    return-void
.end method

.method public final write(Ljava/lang/String;)V
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "getBytes(...)"

    invoke-static {p1, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ldadb/AdbShellStream;->write(I[B)V

    return-void
.end method
