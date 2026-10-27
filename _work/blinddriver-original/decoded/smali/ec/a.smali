.class public final Lec/a;
.super Lsb/a;
.source "SourceFile"


# instance fields
.field public b:Lpb/h;

.field public c:Z


# virtual methods
.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lec/a;->c:Z

    return p0
.end method

.method public final c(Lpb/i;)V
    .locals 7

    invoke-virtual {p1}, Lpb/i;->z()Lpb/h;

    move-result-object p1

    iget-object v0, p0, Lec/a;->b:Lpb/h;

    invoke-virtual {v0, p1}, Lpb/h;->h(Lpb/h;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lpb/h;->a(Lpb/h;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lec/a;->c:Z

    return-void

    :cond_1
    iget-wide v3, p1, Lpb/h;->l:D

    iget-wide v5, v0, Lpb/h;->l:D

    cmpl-double v1, v3, v5

    if-ltz v1, :cond_2

    iget-wide v3, p1, Lpb/h;->m:D

    iget-wide v5, v0, Lpb/h;->m:D

    cmpg-double v1, v3, v5

    if-gtz v1, :cond_2

    iput-boolean v2, p0, Lec/a;->c:Z

    return-void

    :cond_2
    iget-wide v3, p1, Lpb/h;->n:D

    iget-wide v5, v0, Lpb/h;->n:D

    cmpl-double v1, v3, v5

    if-ltz v1, :cond_3

    iget-wide v3, p1, Lpb/h;->o:D

    iget-wide v0, v0, Lpb/h;->o:D

    cmpg-double p1, v3, v0

    if-gtz p1, :cond_3

    iput-boolean v2, p0, Lec/a;->c:Z

    :cond_3
    :goto_0
    return-void
.end method
