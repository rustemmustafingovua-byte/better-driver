.class public final Ldadb/AdbSyncStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final buffer:Lbb/g;

.field private final stream:Ldadb/AdbStream;


# direct methods
.method public constructor <init>(Ldadb/AdbStream;)V
    .locals 1

    const-string v0, "stream"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldadb/AdbSyncStream;->stream:Ldadb/AdbStream;

    new-instance p1, Lbb/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldadb/AdbSyncStream;->buffer:Lbb/g;

    return-void
.end method

.method private final readPacket()Ldadb/Packet;
    .locals 4

    iget-object v0, p0, Ldadb/AdbSyncStream;->stream:Ldadb/AdbStream;

    invoke-interface {v0}, Ldadb/AdbStream;->getSource()Lbb/i;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v2, "UTF_8"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x4

    invoke-interface {v0, v2, v3, v1}, Lbb/i;->I(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Ldadb/AdbSyncStream;->stream:Ldadb/AdbStream;

    invoke-interface {p0}, Ldadb/AdbStream;->getSource()Lbb/i;

    move-result-object p0

    invoke-interface {p0}, Lbb/i;->F()I

    move-result p0

    new-instance v1, Ldadb/Packet;

    invoke-direct {v1, v0, p0}, Ldadb/Packet;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method private final writePacket(Ljava/lang/String;I)V
    .locals 2

    iget-object p0, p0, Ldadb/AdbSyncStream;->stream:Ldadb/AdbStream;

    invoke-interface {p0}, Ldadb/AdbStream;->getSink()Lbb/h;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "UTF_8"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lbb/h;->H(Ljava/lang/String;)Lbb/h;

    invoke-interface {p0, p2}, Lbb/h;->j(I)Lbb/h;

    invoke-interface {p0}, Lbb/h;->flush()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    const-string v0, "QUIT"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ldadb/AdbSyncStream;->writePacket(Ljava/lang/String;I)V

    iget-object p0, p0, Ldadb/AdbSyncStream;->stream:Ldadb/AdbStream;

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

.method public final recv(Lbb/t;Ljava/lang/String;)V
    .locals 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remotePath"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "getBytes(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, v0

    const-string v1, "RECV"

    invoke-direct {p0, v1, v0}, Ldadb/AdbSyncStream;->writePacket(Ljava/lang/String;I)V

    iget-object v0, p0, Ldadb/AdbSyncStream;->stream:Ldadb/AdbStream;

    invoke-interface {v0}, Ldadb/AdbStream;->getSink()Lbb/h;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v2, "UTF_8"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p2}, Lbb/h;->H(Ljava/lang/String;)Lbb/h;

    invoke-interface {v0}, Lbb/h;->flush()V

    iget-object p2, p0, Ldadb/AdbSyncStream;->buffer:Lbb/g;

    invoke-virtual {p2}, Lbb/g;->P()V

    :cond_0
    :goto_0
    invoke-direct {p0}, Ldadb/AdbSyncStream;->readPacket()Ldadb/Packet;

    move-result-object p2

    invoke-virtual {p2}, Ldadb/Packet;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DONE"

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ldadb/Packet;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FAIL"

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ldadb/Packet;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DATA"

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ldadb/Packet;->getArg()I

    move-result p2

    iget-object v0, p0, Ldadb/AdbSyncStream;->stream:Ldadb/AdbStream;

    invoke-interface {v0}, Ldadb/AdbStream;->getSource()Lbb/i;

    move-result-object v0

    iget-object v1, p0, Ldadb/AdbSyncStream;->buffer:Lbb/g;

    int-to-long v3, p2

    invoke-interface {v0, v1, v3, v4}, Lbb/i;->L(Lbb/g;J)V

    iget-object p2, p0, Ldadb/AdbSyncStream;->buffer:Lbb/g;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, p2, Lbb/g;->m:J

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    invoke-interface {p1, p2, v0, v1}, Lbb/t;->write(Lbb/g;J)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-virtual {p2}, Ldadb/Packet;->getId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unexpected sync packet id: "

    invoke-static {p2, p1}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, p0, Ldadb/AdbSyncStream;->stream:Ldadb/AdbStream;

    invoke-interface {p0}, Ldadb/AdbStream;->getSource()Lbb/i;

    move-result-object p0

    invoke-virtual {p2}, Ldadb/Packet;->getArg()I

    move-result p1

    int-to-long p1, p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2, v0}, Lbb/i;->I(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/IOException;

    const-string p2, "Sync failed: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-interface {p1}, Lbb/t;->flush()V

    return-void
.end method

.method public final send(Lbb/u;Ljava/lang/String;IJ)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remotePath"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    const-string v0, "getBytes(...)"

    invoke-static {p3, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p3, p3

    const-string v0, "SEND"

    invoke-direct {p0, v0, p3}, Ldadb/AdbSyncStream;->writePacket(Ljava/lang/String;I)V

    iget-object p3, p0, Ldadb/AdbSyncStream;->stream:Ldadb/AdbStream;

    invoke-interface {p3}, Ldadb/AdbStream;->getSink()Lbb/h;

    move-result-object p3

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "UTF_8"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p2}, Lbb/h;->H(Ljava/lang/String;)Lbb/h;

    invoke-interface {p3}, Lbb/h;->flush()V

    iget-object p2, p0, Ldadb/AdbSyncStream;->buffer:Lbb/g;

    invoke-virtual {p2}, Lbb/g;->P()V

    :goto_0
    iget-object p2, p0, Ldadb/AdbSyncStream;->buffer:Lbb/g;

    const-wide/32 v0, 0xfa00

    invoke-interface {p1, p2, v0, v1}, Lbb/u;->read(Lbb/g;J)J

    move-result-wide p2

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    const-string v0, "DATA"

    long-to-int v1, p2

    invoke-direct {p0, v0, v1}, Ldadb/AdbSyncStream;->writePacket(Ljava/lang/String;I)V

    iget-object v0, p0, Ldadb/AdbSyncStream;->stream:Ldadb/AdbStream;

    invoke-interface {v0}, Ldadb/AdbStream;->getSink()Lbb/h;

    move-result-object v0

    iget-object v1, p0, Ldadb/AdbSyncStream;->buffer:Lbb/g;

    invoke-interface {v0, v1}, Lbb/h;->g(Lbb/u;)J

    move-result-wide v0

    cmp-long p2, p2, v0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 p1, 0x3e8

    int-to-long p1, p1

    div-long/2addr p4, p1

    long-to-int p1, p4

    const-string p2, "DONE"

    invoke-direct {p0, p2, p1}, Ldadb/AdbSyncStream;->writePacket(Ljava/lang/String;I)V

    iget-object p1, p0, Ldadb/AdbSyncStream;->stream:Ldadb/AdbStream;

    invoke-interface {p1}, Ldadb/AdbStream;->getSink()Lbb/h;

    move-result-object p1

    invoke-interface {p1}, Lbb/h;->flush()V

    invoke-direct {p0}, Ldadb/AdbSyncStream;->readPacket()Ldadb/Packet;

    move-result-object p0

    invoke-virtual {p0}, Ldadb/Packet;->getId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OKAY"

    invoke-static {p1, p2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ldadb/Packet;->getId()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Unexpected sync packet id: "

    invoke-static {p2, p0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
