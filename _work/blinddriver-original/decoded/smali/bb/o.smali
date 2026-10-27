.class public final Lbb/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbb/h;


# instance fields
.field public final l:Lbb/t;

.field public final m:Lbb/g;

.field public n:Z


# direct methods
.method public constructor <init>(Lbb/t;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbb/o;->l:Lbb/t;

    new-instance p1, Lbb/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbb/o;->m:Lbb/g;

    return-void
.end method


# virtual methods
.method public final H(Ljava/lang/String;)Lbb/h;
    .locals 5

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "string"

    invoke-static {p1, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "charset"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, p0, Lbb/o;->n:Z

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_1

    sget-object v2, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lbb/o;->m:Lbb/g;

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v3, v4, v1, p1}, Lbb/g;->c0(IILjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v1, "substring(...)"

    invoke-static {p1, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "getBytes(...)"

    invoke-static {p1, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    invoke-virtual {v3, p1, v4, v0}, Lbb/g;->write([BII)V

    :goto_0
    invoke-virtual {p0}, Lbb/o;->b()Lbb/h;

    return-object p0

    :cond_1
    const-string p0, "endIndex > string.length: "

    const-string v0, " > "

    invoke-static {v1, p0, v0}, La6/q;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p0, "endIndex < beginIndex: "

    const-string p1, " < 0"

    invoke-static {v1, p0, p1}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final N(Lbb/j;)Lbb/h;
    .locals 1

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lbb/o;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbb/o;->m:Lbb/g;

    invoke-virtual {v0, p1}, Lbb/g;->W(Lbb/j;)V

    invoke-virtual {p0}, Lbb/o;->b()Lbb/h;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a()Lbb/g;
    .locals 0

    iget-object p0, p0, Lbb/o;->m:Lbb/g;

    return-object p0
.end method

.method public final b()Lbb/h;
    .locals 8

    iget-boolean v0, p0, Lbb/o;->n:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lbb/o;->m:Lbb/g;

    iget-wide v1, v0, Lbb/g;->m:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    move-wide v1, v3

    goto :goto_0

    :cond_0
    iget-object v5, v0, Lbb/g;->l:Lbb/q;

    invoke-static {v5}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v5, v5, Lbb/q;->g:Lbb/q;

    invoke-static {v5}, Lj9/n;->d(Ljava/lang/Object;)V

    iget v6, v5, Lbb/q;->c:I

    const/16 v7, 0x2000

    if-ge v6, v7, :cond_1

    iget-boolean v7, v5, Lbb/q;->e:Z

    if-eqz v7, :cond_1

    iget v5, v5, Lbb/q;->b:I

    sub-int/2addr v6, v5

    int-to-long v5, v6

    sub-long/2addr v1, v5

    :cond_1
    :goto_0
    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lbb/o;->l:Lbb/t;

    invoke-interface {v3, v0, v1, v2}, Lbb/t;->write(Lbb/g;J)V

    :cond_2
    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final close()V
    .locals 6

    iget-object v0, p0, Lbb/o;->l:Lbb/t;

    iget-boolean v1, p0, Lbb/o;->n:Z

    if-nez v1, :cond_3

    :try_start_0
    iget-object v1, p0, Lbb/o;->m:Lbb/g;

    iget-wide v2, v1, Lbb/g;->m:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    invoke-interface {v0, v1, v2, v3}, Lbb/t;->write(Lbb/g;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    :try_start_1
    invoke-interface {v0}, Lbb/t;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    if-nez v1, :cond_1

    move-object v1, v0

    :cond_1
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbb/o;->n:Z

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    throw v1

    :cond_3
    :goto_3
    return-void
.end method

.method public final flush()V
    .locals 5

    iget-boolean v0, p0, Lbb/o;->n:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lbb/o;->m:Lbb/g;

    iget-wide v1, v0, Lbb/g;->m:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    iget-object p0, p0, Lbb/o;->l:Lbb/t;

    if-lez v3, :cond_0

    invoke-interface {p0, v0, v1, v2}, Lbb/t;->write(Lbb/g;J)V

    :cond_0
    invoke-interface {p0}, Lbb/t;->flush()V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g(Lbb/u;)J
    .locals 6

    const-string v0, "source"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, Lbb/o;->m:Lbb/g;

    const-wide/16 v3, 0x2000

    invoke-interface {p1, v2, v3, v4}, Lbb/u;->read(Lbb/g;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lbb/o;->b()Lbb/h;

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public final isOpen()Z
    .locals 0

    iget-boolean p0, p0, Lbb/o;->n:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final j(I)Lbb/h;
    .locals 1

    iget-boolean v0, p0, Lbb/o;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbb/o;->m:Lbb/g;

    invoke-static {p1}, Ll9/a;->x(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lbb/g;->a0(I)V

    invoke-virtual {p0}, Lbb/o;->b()Lbb/h;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final timeout()Lbb/w;
    .locals 0

    iget-object p0, p0, Lbb/o;->l:Lbb/t;

    invoke-interface {p0}, Lbb/t;->timeout()Lbb/w;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lbb/o;->l:Lbb/t;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Ljava/lang/String;)Lbb/h;
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lbb/o;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbb/o;->m:Lbb/g;

    invoke-virtual {v0, p1}, Lbb/g;->d0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lbb/o;->b()Lbb/h;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lbb/o;->n:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lbb/o;->m:Lbb/g;

    .line 3
    invoke-virtual {v0, p1}, Lbb/g;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 4
    invoke-virtual {p0}, Lbb/o;->b()Lbb/h;

    return p1

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final write([B)Lbb/h;
    .locals 3

    .line 11
    iget-boolean v0, p0, Lbb/o;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 12
    array-length v1, p1

    iget-object v2, p0, Lbb/o;->m:Lbb/g;

    invoke-virtual {v2, p1, v0, v1}, Lbb/g;->write([BII)V

    .line 13
    invoke-virtual {p0}, Lbb/o;->b()Lbb/h;

    return-object p0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final write([BII)Lbb/h;
    .locals 1

    .line 15
    iget-boolean v0, p0, Lbb/o;->n:Z

    if-nez v0, :cond_0

    .line 16
    iget-object v0, p0, Lbb/o;->m:Lbb/g;

    .line 17
    invoke-virtual {v0, p1, p2, p3}, Lbb/g;->write([BII)V

    .line 18
    invoke-virtual {p0}, Lbb/o;->b()Lbb/h;

    return-object p0

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final write(Lbb/g;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-boolean v0, p0, Lbb/o;->n:Z

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lbb/o;->m:Lbb/g;

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lbb/g;->write(Lbb/g;J)V

    .line 9
    invoke-virtual {p0}, Lbb/o;->b()Lbb/h;

    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final writeByte(I)Lbb/h;
    .locals 1

    iget-boolean v0, p0, Lbb/o;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbb/o;->m:Lbb/g;

    invoke-virtual {v0, p1}, Lbb/g;->X(I)V

    invoke-virtual {p0}, Lbb/o;->b()Lbb/h;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final writeInt(I)Lbb/h;
    .locals 1

    iget-boolean v0, p0, Lbb/o;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbb/o;->m:Lbb/g;

    invoke-virtual {v0, p1}, Lbb/g;->a0(I)V

    invoke-virtual {p0}, Lbb/o;->b()Lbb/h;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final writeShort(I)Lbb/h;
    .locals 1

    iget-boolean v0, p0, Lbb/o;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbb/o;->m:Lbb/g;

    invoke-virtual {v0, p1}, Lbb/g;->b0(I)V

    invoke-virtual {p0}, Lbb/o;->b()Lbb/h;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final z(J)Lbb/h;
    .locals 1

    iget-boolean v0, p0, Lbb/o;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbb/o;->m:Lbb/g;

    invoke-virtual {v0, p1, p2}, Lbb/g;->Z(J)V

    invoke-virtual {p0}, Lbb/o;->b()Lbb/h;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
