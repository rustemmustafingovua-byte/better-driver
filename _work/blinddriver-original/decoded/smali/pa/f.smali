.class public final Lpa/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbb/t;


# instance fields
.field public final l:Lbb/t;

.field public final m:J

.field public n:Z

.field public o:J

.field public p:Z

.field public final synthetic q:Lk4/h;


# direct methods
.method public constructor <init>(Lk4/h;Lbb/t;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpa/f;->q:Lk4/h;

    iput-object p2, p0, Lpa/f;->l:Lbb/t;

    iput-wide p3, p0, Lpa/f;->m:J

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    iget-object p0, p0, Lpa/f;->l:Lbb/t;

    invoke-interface {p0}, Lbb/t;->close()V

    return-void
.end method

.method public final c(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1

    iget-boolean v0, p0, Lpa/f;->n:Z

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpa/f;->n:Z

    iget-object p0, p0, Lpa/f;->q:Lk4/h;

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lk4/h;->a(Lk4/h;Ljava/io/IOException;I)Ljava/io/IOException;

    move-result-object p0

    return-object p0
.end method

.method public final close()V
    .locals 4

    iget-boolean v0, p0, Lpa/f;->p:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpa/f;->p:Z

    const-wide/16 v0, -0x1

    iget-wide v2, p0, Lpa/f;->m:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lpa/f;->o:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "unexpected end of stream"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lpa/f;->b()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpa/f;->c(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lpa/f;->c(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Lpa/f;->l:Lbb/t;

    invoke-interface {p0}, Lbb/t;->flush()V

    return-void
.end method

.method public final flush()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lpa/f;->d()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lpa/f;->c(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public final timeout()Lbb/w;
    .locals 0

    iget-object p0, p0, Lpa/f;->l:Lbb/t;

    invoke-interface {p0}, Lbb/t;->timeout()Lbb/w;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lpa/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lpa/f;->l:Lbb/t;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final write(Lbb/g;J)V
    .locals 4

    const-string v0, "source"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lpa/f;->p:Z

    if-nez v0, :cond_2

    const-wide/16 v0, -0x1

    iget-wide v2, p0, Lpa/f;->m:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lpa/f;->o:J

    add-long/2addr v0, p2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "expected "

    const-string v1, " bytes but received "

    invoke-static {v0, v2, v3, v1}, La6/q;->o(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lpa/f;->o:J

    add-long/2addr v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lpa/f;->l:Lbb/t;

    invoke-interface {v0, p1, p2, p3}, Lbb/t;->write(Lbb/g;J)V

    iget-wide v0, p0, Lpa/f;->o:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lpa/f;->o:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lpa/f;->c(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
