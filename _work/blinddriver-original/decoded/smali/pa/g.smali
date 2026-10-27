.class public final Lpa/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbb/u;


# instance fields
.field public final l:Lbb/u;

.field public final m:J

.field public n:J

.field public o:Z

.field public p:Z

.field public q:Z

.field public final synthetic r:Lk4/h;


# direct methods
.method public constructor <init>(Lk4/h;Lbb/u;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpa/g;->r:Lk4/h;

    iput-object p2, p0, Lpa/g;->l:Lbb/u;

    iput-wide p3, p0, Lpa/g;->m:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lpa/g;->o:Z

    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lpa/g;->c(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_0
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    iget-object p0, p0, Lpa/g;->l:Lbb/u;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final c(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1

    iget-boolean v0, p0, Lpa/g;->p:Z

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpa/g;->p:Z

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lpa/g;->o:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpa/g;->o:Z

    :cond_1
    iget-object p0, p0, Lpa/g;->r:Lk4/h;

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lk4/h;->a(Lk4/h;Ljava/io/IOException;I)Ljava/io/IOException;

    move-result-object p0

    return-object p0
.end method

.method public final close()V
    .locals 1

    iget-boolean v0, p0, Lpa/g;->q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpa/g;->q:Z

    :try_start_0
    invoke-virtual {p0}, Lpa/g;->b()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpa/g;->c(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lpa/g;->c(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public final read(Lbb/g;J)J
    .locals 9

    iget-object v0, p0, Lpa/g;->r:Lk4/h;

    const-string v1, "expected "

    const-string v2, "sink"

    invoke-static {p1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, p0, Lpa/g;->q:Z

    if-nez v2, :cond_5

    :try_start_0
    iget-object v2, p0, Lpa/g;->l:Lbb/u;

    invoke-interface {v2, p1, p2, p3}, Lbb/u;->read(Lbb/g;J)J

    move-result-wide p1

    iget-boolean p3, p0, Lpa/g;->o:Z

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    iput-boolean p3, p0, Lpa/g;->o:Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const-wide/16 v2, -0x1

    cmp-long p3, p1, v2

    const/4 v4, 0x0

    if-nez p3, :cond_1

    invoke-virtual {p0, v4}, Lpa/g;->c(Ljava/io/IOException;)Ljava/io/IOException;

    return-wide v2

    :cond_1
    iget-wide v5, p0, Lpa/g;->n:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v5, p1

    iget-wide v7, p0, Lpa/g;->m:J

    cmp-long p3, v7, v2

    if-eqz p3, :cond_3

    cmp-long p3, v5, v7

    if-gtz p3, :cond_2

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " bytes but received "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iput-wide v5, p0, Lpa/g;->n:J

    iget-object p3, v0, Lk4/h;->d:Ljava/lang/Object;

    check-cast p3, Lqa/d;

    invoke-interface {p3}, Lqa/d;->b()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p0, v4}, Lpa/g;->c(Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    return-wide p1

    :goto_2
    invoke-virtual {p0, p1}, Lpa/g;->c(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final timeout()Lbb/w;
    .locals 0

    iget-object p0, p0, Lpa/g;->l:Lbb/u;

    invoke-interface {p0}, Lbb/u;->timeout()Lbb/w;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lpa/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lpa/g;->l:Lbb/u;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
