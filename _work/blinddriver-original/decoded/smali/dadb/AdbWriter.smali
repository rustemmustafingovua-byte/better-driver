.class public final Ldadb/AdbWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldadb/AdbWriter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Ldadb/AdbWriter$Companion;


# instance fields
.field private final bufferedSink:Lbb/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldadb/AdbWriter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldadb/AdbWriter$Companion;-><init>(Lj9/g;)V

    sput-object v0, Ldadb/AdbWriter;->Companion:Ldadb/AdbWriter$Companion;

    return-void
.end method

.method public constructor <init>(Lbb/t;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lpc/h;->e(Lbb/t;)Lbb/o;

    move-result-object p1

    iput-object p1, p0, Ldadb/AdbWriter;->bufferedSink:Lbb/h;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Ldadb/AdbWriter;->bufferedSink:Lbb/h;

    invoke-interface {p0}, Lbb/t;->close()V

    return-void
.end method

.method public final write(III[BII)V
    .locals 6

    new-instance v0, Ldadb/AdbWriter$write$1;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move v4, p6

    invoke-direct/range {v0 .. v5}, Ldadb/AdbWriter$write$1;-><init>(IIII[B)V

    invoke-static {v0}, Ldadb/LoggingKt;->log(Li9/a;)V

    iget-object p1, p0, Ldadb/AdbWriter;->bufferedSink:Lbb/h;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Ldadb/AdbWriter;->bufferedSink:Lbb/h;

    invoke-interface {p0, v1}, Lbb/h;->j(I)Lbb/h;

    invoke-interface {p0, v2}, Lbb/h;->j(I)Lbb/h;

    invoke-interface {p0, v3}, Lbb/h;->j(I)Lbb/h;

    if-nez v5, :cond_0

    const/4 p2, 0x0

    invoke-interface {p0, p2}, Lbb/h;->j(I)Lbb/h;

    invoke-interface {p0, p2}, Lbb/h;->j(I)Lbb/h;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    invoke-interface {p0, v4}, Lbb/h;->j(I)Lbb/h;

    sget-object p2, Ldadb/AdbWriter;->Companion:Ldadb/AdbWriter$Companion;

    invoke-static {p2, v5}, Ldadb/AdbWriter$Companion;->access$payloadChecksum(Ldadb/AdbWriter$Companion;[B)I

    move-result p2

    invoke-interface {p0, p2}, Lbb/h;->j(I)Lbb/h;

    :goto_0
    not-int p2, v1

    invoke-interface {p0, p2}, Lbb/h;->j(I)Lbb/h;

    if-eqz v5, :cond_1

    invoke-interface {p0, v5, p5, v4}, Lbb/h;->write([BII)Lbb/h;

    :cond_1
    invoke-interface {p0}, Lbb/h;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1

    throw p0
.end method

.method public final writeAuth(I[B)V
    .locals 8

    const-string v0, "authPayload"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    array-length v7, p2

    const v2, 0x48545541

    const/4 v4, 0x0

    move-object v1, p0

    move v3, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v7}, Ldadb/AdbWriter;->write(III[BII)V

    return-void
.end method

.method public final writeClose(II)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v1, 0x45534c43

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Ldadb/AdbWriter;->write(III[BII)V

    return-void
.end method

.method public final writeConnect()V
    .locals 8

    sget-object v0, Ldadb/Constants;->INSTANCE:Ldadb/Constants;

    invoke-virtual {v0}, Ldadb/Constants;->getCONNECT_PAYLOAD()[B

    move-result-object v5

    invoke-virtual {v0}, Ldadb/Constants;->getCONNECT_PAYLOAD()[B

    move-result-object v0

    array-length v7, v0

    const v2, 0x4e584e43    # 9.072519E8f

    const/high16 v3, 0x1000000

    const/high16 v4, 0x100000

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Ldadb/AdbWriter;->write(III[BII)V

    return-void
.end method

.method public final writeOkay(II)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v1, 0x59414b4f

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Ldadb/AdbWriter;->write(III[BII)V

    return-void
.end method

.method public final writeOpen(ILjava/lang/String;)V
    .locals 8

    const-string v0, "destination"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const-string v0, "getBytes(...)"

    invoke-static {p2, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/4 v6, 0x0

    array-length v7, v5

    const v2, 0x4e45504f    # 8.2759366E8f

    const/4 v4, 0x0

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v7}, Ldadb/AdbWriter;->write(III[BII)V

    return-void
.end method

.method public final writeWrite(II[BII)V
    .locals 8

    const-string v0, "payload"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x45545257

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Ldadb/AdbWriter;->write(III[BII)V

    return-void
.end method
