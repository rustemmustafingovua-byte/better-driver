.class public final Lbb/f;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final synthetic l:I

.field public final m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lbb/i;I)V
    .locals 0

    .line 1
    iput p2, p0, Lbb/f;->l:I

    iput-object p1, p0, Lbb/f;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lbb/f;->l:I

    .line 2
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lbb/f;->m:Ljava/lang/Object;

    return-void
.end method

.method private final b()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 4

    iget v0, p0, Lbb/f;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lbb/f;->m:Ljava/lang/Object;

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lbb/f;->m:Ljava/lang/Object;

    check-cast p0, Lbb/p;

    iget-boolean v0, p0, Lbb/p;->n:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lbb/p;->m:Lbb/g;

    iget-wide v0, p0, Lbb/g;->m:J

    const p0, 0x7fffffff

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    iget-object p0, p0, Lbb/f;->m:Ljava/lang/Object;

    check-cast p0, Lbb/g;

    iget-wide v0, p0, Lbb/g;->m:J

    const p0, 0x7fffffff

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public close()V
    .locals 1

    iget v0, p0, Lbb/f;->l:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/io/InputStream;->close()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lbb/f;->m:Ljava/lang/Object;

    check-cast p0, Lbb/p;

    invoke-virtual {p0}, Lbb/p;->close()V

    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final read()I
    .locals 5

    iget v0, p0, Lbb/f;->l:I

    packed-switch v0, :pswitch_data_0

    .line 1
    iget-object p0, p0, Lbb/f;->m:Ljava/lang/Object;

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0

    .line 2
    :pswitch_0
    iget-object p0, p0, Lbb/f;->m:Ljava/lang/Object;

    check-cast p0, Lbb/p;

    iget-object v0, p0, Lbb/p;->m:Lbb/g;

    iget-boolean v1, p0, Lbb/p;->n:Z

    if-nez v1, :cond_2

    .line 3
    iget-wide v1, v0, Lbb/g;->m:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 4
    iget-object p0, p0, Lbb/p;->l:Lbb/u;

    const-wide/16 v1, 0x2000

    invoke-interface {p0, v0, v1, v2}, Lbb/u;->read(Lbb/g;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p0, v1, v3

    if-nez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v0}, Lbb/g;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    :goto_1
    return p0

    .line 6
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :pswitch_1
    iget-object p0, p0, Lbb/f;->m:Ljava/lang/Object;

    check-cast p0, Lbb/g;

    .line 8
    iget-wide v0, p0, Lbb/g;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 9
    invoke-virtual {p0}, Lbb/g;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    goto :goto_2

    :cond_3
    const/4 p0, -0x1

    :goto_2
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final read([BII)I
    .locals 8

    iget v0, p0, Lbb/f;->l:I

    packed-switch v0, :pswitch_data_0

    .line 10
    iget-object p0, p0, Lbb/f;->m:Ljava/lang/Object;

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move p0, p3

    :goto_0
    return p0

    .line 13
    :pswitch_0
    const-string v0, "data"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object p0, p0, Lbb/f;->m:Ljava/lang/Object;

    check-cast p0, Lbb/p;

    iget-object v0, p0, Lbb/p;->m:Lbb/g;

    iget-boolean v1, p0, Lbb/p;->n:Z

    if-nez v1, :cond_2

    .line 15
    array-length v1, p1

    int-to-long v2, v1

    int-to-long v4, p2

    int-to-long v6, p3

    invoke-static/range {v2 .. v7}, Ll9/a;->c(JJJ)V

    .line 16
    iget-wide v1, v0, Lbb/g;->m:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 17
    iget-object p0, p0, Lbb/p;->l:Lbb/u;

    const-wide/16 v1, 0x2000

    invoke-interface {p0, v0, v1, v2}, Lbb/u;->read(Lbb/g;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p0, v1, v3

    if-nez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lbb/g;->read([BII)I

    move-result p0

    :goto_1
    return p0

    .line 19
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :pswitch_1
    const-string v0, "sink"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object p0, p0, Lbb/f;->m:Ljava/lang/Object;

    check-cast p0, Lbb/g;

    invoke-virtual {p0, p1, p2, p3}, Lbb/g;->read([BII)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lbb/f;->l:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lbb/f;->m:Ljava/lang/Object;

    check-cast p0, Lbb/p;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".inputStream()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lbb/f;->m:Ljava/lang/Object;

    check-cast p0, Lbb/g;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".inputStream()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public transferTo(Ljava/io/OutputStream;)J
    .locals 14

    iget v0, p0, Lbb/f;->l:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/io/InputStream;->transferTo(Ljava/io/OutputStream;)J

    move-result-wide p0

    return-wide p0

    :pswitch_0
    const-string v0, "out"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lbb/f;->m:Ljava/lang/Object;

    check-cast p0, Lbb/p;

    iget-object v0, p0, Lbb/p;->m:Lbb/g;

    iget-boolean v1, p0, Lbb/p;->n:Z

    if-nez v1, :cond_4

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :cond_0
    iget-wide v5, v0, Lbb/g;->m:J

    cmp-long v5, v5, v1

    if-nez v5, :cond_2

    iget-object v5, p0, Lbb/p;->l:Lbb/u;

    const-wide/16 v6, 0x2000

    invoke-interface {v5, v0, v6, v7}, Lbb/u;->read(Lbb/g;J)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    return-wide v3

    :cond_2
    :goto_0
    iget-wide v6, v0, Lbb/g;->m:J

    add-long/2addr v3, v6

    const-wide/16 v8, 0x0

    move-wide v10, v6

    invoke-static/range {v6 .. v11}, Ll9/a;->c(JJJ)V

    iget-object v5, v0, Lbb/g;->l:Lbb/q;

    :cond_3
    :goto_1
    cmp-long v8, v6, v1

    if-lez v8, :cond_0

    invoke-static {v5}, Lj9/n;->d(Ljava/lang/Object;)V

    iget v8, v5, Lbb/q;->c:I

    iget v9, v5, Lbb/q;->b:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    iget-object v9, v5, Lbb/q;->a:[B

    iget v10, v5, Lbb/q;->b:I

    invoke-virtual {p1, v9, v10, v8}, Ljava/io/OutputStream;->write([BII)V

    iget v9, v5, Lbb/q;->b:I

    add-int/2addr v9, v8

    iput v9, v5, Lbb/q;->b:I

    iget-wide v10, v0, Lbb/g;->m:J

    int-to-long v12, v8

    sub-long/2addr v10, v12

    iput-wide v10, v0, Lbb/g;->m:J

    sub-long/2addr v6, v12

    iget v8, v5, Lbb/q;->c:I

    if-ne v9, v8, :cond_3

    invoke-virtual {v5}, Lbb/q;->a()Lbb/q;

    move-result-object v8

    iput-object v8, v0, Lbb/g;->l:Lbb/q;

    invoke-static {v5}, Lbb/r;->a(Lbb/q;)V

    move-object v5, v8

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
