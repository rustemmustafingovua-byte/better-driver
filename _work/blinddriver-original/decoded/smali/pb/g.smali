.class public final Lpb/g;
.super Lpb/a;
.source "SourceFile"


# instance fields
.field public o:D


# virtual methods
.method public final f()Lpb/a;
    .locals 3

    new-instance v0, Lpb/g;

    invoke-direct {v0, p0}, Lpb/a;-><init>(Lpb/a;)V

    iget-wide v1, p0, Lpb/g;->o:D

    iput-wide v1, v0, Lpb/g;->o:D

    return-object v0
.end method

.method public final j()D
    .locals 2

    iget-wide v0, p0, Lpb/g;->o:D

    return-wide v0
.end method

.method public final l(I)D
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-wide p0, p0, Lpb/g;->o:D

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid ordinate index: "

    invoke-static {p1, v0}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-wide p0, p0, Lpb/a;->n:D

    return-wide p0

    :cond_2
    iget-wide p0, p0, Lpb/a;->m:D

    return-wide p0

    :cond_3
    iget-wide p0, p0, Lpb/a;->l:D

    return-wide p0
.end method

.method public final r(Lpb/a;)V
    .locals 2

    iget-wide v0, p1, Lpb/a;->l:D

    iput-wide v0, p0, Lpb/a;->l:D

    iget-wide v0, p1, Lpb/a;->m:D

    iput-wide v0, p0, Lpb/a;->m:D

    invoke-virtual {p1}, Lpb/a;->o()D

    move-result-wide v0

    iput-wide v0, p0, Lpb/a;->n:D

    invoke-virtual {p1}, Lpb/a;->j()D

    move-result-wide v0

    iput-wide v0, p0, Lpb/g;->o:D

    return-void
.end method

.method public final s(D)V
    .locals 0

    iput-wide p1, p0, Lpb/g;->o:D

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lpb/a;->l:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lpb/a;->m:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lpb/a;->n:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lpb/g;->o:D

    const-string p0, ")"

    invoke-static {v0, v1, v2, p0}, Lm/a;->m(Ljava/lang/StringBuilder;DLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(DI)V
    .locals 1

    if-eqz p3, :cond_3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    iput-wide p1, p0, Lpb/g;->o:D

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid ordinate index: "

    invoke-static {p3, p1}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iput-wide p1, p0, Lpb/a;->n:D

    return-void

    :cond_2
    iput-wide p1, p0, Lpb/a;->m:D

    return-void

    :cond_3
    iput-wide p1, p0, Lpb/a;->l:D

    return-void
.end method
