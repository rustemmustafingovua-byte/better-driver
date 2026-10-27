.class public final Ldadb/forwarding/TcpForwarder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldadb/forwarding/TcpForwarder$State;
    }
.end annotation


# instance fields
.field private clientExecutor:Ljava/util/concurrent/ExecutorService;

.field private final dadb:Ldadb/Dadb;

.field private final hostPort:I

.field private server:Ljava/net/ServerSocket;

.field private serverThread:Ljava/lang/Thread;

.field private state:Ldadb/forwarding/TcpForwarder$State;

.field private final targetPort:I


# direct methods
.method public constructor <init>(Ldadb/Dadb;II)V
    .locals 1

    const-string v0, "dadb"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldadb/forwarding/TcpForwarder;->dadb:Ldadb/Dadb;

    iput p2, p0, Ldadb/forwarding/TcpForwarder;->hostPort:I

    iput p3, p0, Ldadb/forwarding/TcpForwarder;->targetPort:I

    sget-object p1, Ldadb/forwarding/TcpForwarder$State;->STOPPED:Ldadb/forwarding/TcpForwarder$State;

    iput-object p1, p0, Ldadb/forwarding/TcpForwarder;->state:Ldadb/forwarding/TcpForwarder$State;

    return-void
.end method

.method public static final synthetic access$forward(Ldadb/forwarding/TcpForwarder;Lbb/u;Lbb/h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldadb/forwarding/TcpForwarder;->forward(Lbb/u;Lbb/h;)V

    return-void
.end method

.method public static final synthetic access$getState$p(Ldadb/forwarding/TcpForwarder;)Ldadb/forwarding/TcpForwarder$State;
    .locals 0

    iget-object p0, p0, Ldadb/forwarding/TcpForwarder;->state:Ldadb/forwarding/TcpForwarder$State;

    return-object p0
.end method

.method public static final synthetic access$handleForwarding(Ldadb/forwarding/TcpForwarder;)V
    .locals 0

    invoke-direct {p0}, Ldadb/forwarding/TcpForwarder;->handleForwarding()V

    return-void
.end method

.method public static final synthetic access$moveToState(Ldadb/forwarding/TcpForwarder;Ldadb/forwarding/TcpForwarder$State;)V
    .locals 0

    invoke-direct {p0, p1}, Ldadb/forwarding/TcpForwarder;->moveToState(Ldadb/forwarding/TcpForwarder$State;)V

    return-void
.end method

.method public static synthetic b(Ldadb/forwarding/TcpForwarder;Ljava/net/Socket;)V
    .locals 0

    invoke-static {p0, p1}, Ldadb/forwarding/TcpForwarder;->handleForwarding$lambda$1(Ldadb/forwarding/TcpForwarder;Ljava/net/Socket;)V

    return-void
.end method

.method private final forward(Lbb/u;Lbb/h;)V
    .locals 4

    :catch_0
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p0, :cond_0

    :try_start_1
    invoke-interface {p2}, Lbb/h;->a()Lbb/g;

    move-result-object p0

    const-wide/16 v0, 0x100

    invoke-interface {p1, p0, v0, v1}, Lbb/u;->read(Lbb/g;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    invoke-interface {p2}, Lbb/h;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    :cond_0
    return-void
.end method

.method private final handleForwarding()V
    .locals 5

    new-instance v0, Ljava/net/ServerSocket;

    iget v1, p0, Ldadb/forwarding/TcpForwarder;->hostPort:I

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Ldadb/forwarding/TcpForwarder;->server:Ljava/net/ServerSocket;

    sget-object v1, Ldadb/forwarding/TcpForwarder$State;->STARTED:Ldadb/forwarding/TcpForwarder$State;

    invoke-direct {p0, v1}, Ldadb/forwarding/TcpForwarder;->moveToState(Ldadb/forwarding/TcpForwarder$State;)V

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    iget-object v2, p0, Ldadb/forwarding/TcpForwarder;->clientExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_0

    new-instance v3, Lb/d;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p0, v1}, Lb/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static final handleForwarding$lambda$1(Ldadb/forwarding/TcpForwarder;Ljava/net/Socket;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ldadb/forwarding/TcpForwarder;->dadb:Ldadb/Dadb;

    iget v1, p0, Ldadb/forwarding/TcpForwarder;->targetPort:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tcp:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldadb/Dadb;->open(Ljava/lang/String;)Ldadb/AdbStream;

    move-result-object v0

    new-instance v1, Ldadb/forwarding/TcpForwarder$handleForwarding$1$readerThread$1;

    invoke-direct {v1, p0, p1, v0}, Ldadb/forwarding/TcpForwarder$handleForwarding$1$readerThread$1;-><init>(Ldadb/forwarding/TcpForwarder;Ljava/net/Socket;Ldadb/AdbStream;)V

    new-instance v2, Lx8/a;

    invoke-direct {v2, v1}, Lx8/a;-><init>(Li9/a;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const/4 v1, 0x1

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v0}, Ldadb/AdbStream;->getSource()Lbb/i;

    move-result-object v6

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-static {p1}, Lpc/h;->w(Ljava/net/Socket;)Lbb/c;

    move-result-object v7

    invoke-static {v7}, Lpc/h;->e(Lbb/t;)Lbb/o;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Ldadb/forwarding/TcpForwarder;->forward(Lbb/u;Lbb/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of p0, v0, Ljava/lang/AutoCloseable;

    if-eqz p0, :cond_0

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_1

    :cond_0
    instance-of p0, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz p0, :cond_4

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object p0

    if-ne v0, p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_2
    :goto_0
    if-nez p0, :cond_3

    :try_start_1
    sget-object v6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v6}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    if-nez v5, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move v5, v1

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_4
    instance-of p0, v0, Landroid/content/res/TypedArray;

    if-eqz p0, :cond_6

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    instance-of v6, v0, Ljava/lang/AutoCloseable;

    if-nez v6, :cond_b

    instance-of v6, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v6, :cond_9

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v6

    if-eq v0, v6, :cond_c

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v6

    if-nez v6, :cond_c

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_7
    :goto_2
    if-nez v6, :cond_8

    :try_start_2
    sget-object v7, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v7}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    if-nez v5, :cond_7

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move v5, v1

    goto :goto_2

    :cond_8
    if-eqz v5, :cond_c

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3

    :cond_9
    instance-of v1, v0, Landroid/content/res/TypedArray;

    if-eqz v1, :cond_a

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_b
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    :cond_c
    :goto_3
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    throw p0
.end method

.method private final moveToState(Ldadb/forwarding/TcpForwarder$State;)V
    .locals 0

    iput-object p1, p0, Ldadb/forwarding/TcpForwarder;->state:Ldadb/forwarding/TcpForwarder$State;

    return-void
.end method

.method private final waitFor(IILi9/a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Li9/a;",
            ")V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v2, v0

    :goto_0
    invoke-interface {p3}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v0

    sub-long/2addr v4, v2

    int-to-long v2, p2

    const-wide/16 v8, 0x0

    cmp-long p0, v8, v2

    if-gtz p0, :cond_1

    cmp-long p0, v2, v6

    if-lez p0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p0

    :cond_1
    :goto_1
    int-to-long v2, p1

    sub-long/2addr v2, v4

    cmp-long p0, v2, v8

    if-lez p0, :cond_2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 7

    iget-object v0, p0, Ldadb/forwarding/TcpForwarder;->state:Ldadb/forwarding/TcpForwarder$State;

    sget-object v1, Ldadb/forwarding/TcpForwarder$State;->STOPPED:Ldadb/forwarding/TcpForwarder$State;

    if-eq v0, v1, :cond_5

    sget-object v1, Ldadb/forwarding/TcpForwarder$State;->STOPPING:Ldadb/forwarding/TcpForwarder$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ldadb/forwarding/TcpForwarder$close$1;

    invoke-direct {v0, p0}, Ldadb/forwarding/TcpForwarder$close$1;-><init>(Ldadb/forwarding/TcpForwarder;)V

    const/16 v2, 0xa

    const/16 v3, 0x1388

    invoke-direct {p0, v2, v3, v0}, Ldadb/forwarding/TcpForwarder;->waitFor(IILi9/a;)V

    invoke-direct {p0, v1}, Ldadb/forwarding/TcpForwarder;->moveToState(Ldadb/forwarding/TcpForwarder$State;)V

    iget-object v0, p0, Ldadb/forwarding/TcpForwarder;->server:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ldadb/forwarding/TcpForwarder;->server:Ljava/net/ServerSocket;

    iget-object v1, p0, Ldadb/forwarding/TcpForwarder;->serverThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    iput-object v0, p0, Ldadb/forwarding/TcpForwarder;->serverThread:Ljava/lang/Thread;

    iget-object v1, p0, Ldadb/forwarding/TcpForwarder;->clientExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_3
    iget-object v1, p0, Ldadb/forwarding/TcpForwarder;->clientExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_4

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v6}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    :cond_4
    iput-object v0, p0, Ldadb/forwarding/TcpForwarder;->clientExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ldadb/forwarding/TcpForwarder$close$2;

    invoke-direct {v0, p0}, Ldadb/forwarding/TcpForwarder$close$2;-><init>(Ldadb/forwarding/TcpForwarder;)V

    invoke-direct {p0, v2, v3, v0}, Ldadb/forwarding/TcpForwarder;->waitFor(IILi9/a;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final start()V
    .locals 3

    iget-object v0, p0, Ldadb/forwarding/TcpForwarder;->state:Ldadb/forwarding/TcpForwarder$State;

    sget-object v1, Ldadb/forwarding/TcpForwarder$State;->STOPPED:Ldadb/forwarding/TcpForwarder$State;

    if-ne v0, v1, :cond_0

    sget-object v0, Ldadb/forwarding/TcpForwarder$State;->STARTING:Ldadb/forwarding/TcpForwarder$State;

    invoke-direct {p0, v0}, Ldadb/forwarding/TcpForwarder;->moveToState(Ldadb/forwarding/TcpForwarder$State;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ldadb/forwarding/TcpForwarder;->clientExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ldadb/forwarding/TcpForwarder$start$2;

    invoke-direct {v0, p0}, Ldadb/forwarding/TcpForwarder$start$2;-><init>(Ldadb/forwarding/TcpForwarder;)V

    new-instance v1, Lx8/a;

    invoke-direct {v1, v0}, Lx8/a;-><init>(Li9/a;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iput-object v1, p0, Ldadb/forwarding/TcpForwarder;->serverThread:Ljava/lang/Thread;

    new-instance v0, Ldadb/forwarding/TcpForwarder$start$3;

    invoke-direct {v0, p0}, Ldadb/forwarding/TcpForwarder$start$3;-><init>(Ldadb/forwarding/TcpForwarder;)V

    const/16 v1, 0xa

    const/16 v2, 0x1388

    invoke-direct {p0, v1, v2, v0}, Ldadb/forwarding/TcpForwarder;->waitFor(IILi9/a;)V

    return-void

    :cond_0
    iget p0, p0, Ldadb/forwarding/TcpForwarder;->hostPort:I

    const-string v0, "Forwarder is already started at port "

    invoke-static {p0, v0}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
