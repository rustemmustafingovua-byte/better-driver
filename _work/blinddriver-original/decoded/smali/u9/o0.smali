.class public abstract Lu9/o0;
.super Lu9/p;
.source "SourceFile"


# static fields
.field public static final synthetic q:I


# instance fields
.field public n:J

.field public o:Z

.field public p:Lu8/k;


# virtual methods
.method public final V(Z)V
    .locals 4

    iget-wide v0, p0, Lu9/o0;->n:J

    if-eqz p1, :cond_0

    const-wide v2, 0x100000000L

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    :goto_0
    sub-long/2addr v0, v2

    iput-wide v0, p0, Lu9/o0;->n:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lu9/o0;->o:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lu9/o0;->shutdown()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final W(Lu9/c0;)V
    .locals 1

    iget-object v0, p0, Lu9/o0;->p:Lu8/k;

    if-nez v0, :cond_0

    new-instance v0, Lu8/k;

    invoke-direct {v0}, Lu8/k;-><init>()V

    iput-object v0, p0, Lu9/o0;->p:Lu8/k;

    :cond_0
    invoke-virtual {v0, p1}, Lu8/k;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract X()Ljava/lang/Thread;
.end method

.method public final Y(Z)V
    .locals 4

    iget-wide v0, p0, Lu9/o0;->n:J

    if-eqz p1, :cond_0

    const-wide v2, 0x100000000L

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    :goto_0
    add-long/2addr v2, v0

    iput-wide v2, p0, Lu9/o0;->n:J

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lu9/o0;->o:Z

    :cond_1
    return-void
.end method

.method public abstract Z()J
.end method

.method public final a0()Z
    .locals 1

    iget-object p0, p0, Lu9/o0;->p:Lu8/k;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lu8/k;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lu8/k;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Lu9/c0;

    if-nez p0, :cond_2

    :goto_1
    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {p0}, Lu9/c0;->run()V

    const/4 p0, 0x1

    return p0
.end method

.method public b0(JLu9/l0;)V
    .locals 0

    sget-object p0, Lu9/w;->u:Lu9/w;

    invoke-virtual {p0, p1, p2, p3}, Lu9/n0;->g0(JLu9/l0;)V

    return-void
.end method

.method public abstract shutdown()V
.end method
