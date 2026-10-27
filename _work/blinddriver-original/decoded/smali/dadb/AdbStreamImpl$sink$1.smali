.class public final Ldadb/AdbStreamImpl$sink$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbb/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldadb/AdbStreamImpl;-><init>(Ldadb/AdbMessageQueue;Ldadb/AdbWriter;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field final synthetic this$0:Ldadb/AdbStreamImpl;


# direct methods
.method public constructor <init>(Ldadb/AdbStreamImpl;)V
    .locals 0

    iput-object p1, p0, Ldadb/AdbStreamImpl$sink$1;->this$0:Ldadb/AdbStreamImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ldadb/AdbStreamImpl;->access$getMaxPayloadSize$p(Ldadb/AdbStreamImpl;)I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Ldadb/AdbStreamImpl$sink$1;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final writeToBuffer(Lbb/i;J)I
    .locals 1

    iget-object v0, p0, Ldadb/AdbStreamImpl$sink$1;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    long-to-int p2, p2

    invoke-static {v0, p2}, Ljava/lang/Integer;->min(II)I

    move-result p2

    iget-object p3, p0, Ldadb/AdbStreamImpl$sink$1;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p3

    const-string v0, "array(...)"

    invoke-static {p3, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ldadb/AdbStreamImpl$sink$1;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-interface {p1, p3, v0, p2}, Lbb/i;->read([BII)I

    move-result p1

    iget-object p2, p0, Ldadb/AdbStreamImpl$sink$1;->buffer:Ljava/nio/ByteBuffer;

    const-string p3, "null cannot be cast to non-null type java.nio.Buffer"

    invoke-static {p2, p3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Ldadb/AdbStreamImpl$sink$1;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/Buffer;->position()I

    move-result p3

    add-int/2addr p3, p1

    invoke-virtual {p2, p3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object p2, p0, Ldadb/AdbStreamImpl$sink$1;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Ldadb/AdbStreamImpl$sink$1;->flush()V

    :cond_0
    return p1
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 7

    iget-object v0, p0, Ldadb/AdbStreamImpl$sink$1;->this$0:Ldadb/AdbStreamImpl;

    invoke-static {v0}, Ldadb/AdbStreamImpl;->access$getAdbWriter$p(Ldadb/AdbStreamImpl;)Ldadb/AdbWriter;

    move-result-object v1

    iget-object v0, p0, Ldadb/AdbStreamImpl$sink$1;->this$0:Ldadb/AdbStreamImpl;

    invoke-static {v0}, Ldadb/AdbStreamImpl;->access$getLocalId$p(Ldadb/AdbStreamImpl;)I

    move-result v2

    iget-object v0, p0, Ldadb/AdbStreamImpl$sink$1;->this$0:Ldadb/AdbStreamImpl;

    invoke-static {v0}, Ldadb/AdbStreamImpl;->access$getRemoteId$p(Ldadb/AdbStreamImpl;)I

    move-result v3

    iget-object v0, p0, Ldadb/AdbStreamImpl$sink$1;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const-string v0, "array(...)"

    invoke-static {v4, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ldadb/AdbStreamImpl$sink$1;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v6

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Ldadb/AdbWriter;->writeWrite(II[BII)V

    iget-object p0, p0, Ldadb/AdbStreamImpl$sink$1;->buffer:Ljava/nio/ByteBuffer;

    const-string v0, "null cannot be cast to non-null type java.nio.Buffer"

    invoke-static {p0, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method public timeout()Lbb/w;
    .locals 0

    sget-object p0, Lbb/w;->d:Lbb/v;

    return-object p0
.end method

.method public write(Lbb/g;J)V
    .locals 4

    const-string v0, "source"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-wide v0, p2

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Ldadb/AdbStreamImpl$sink$1;->writeToBuffer(Lbb/i;J)I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
