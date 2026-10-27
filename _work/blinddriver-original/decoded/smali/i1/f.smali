.class public final Li1/f;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/e2;
.implements Le2/w;


# instance fields
.field public A:Li1/f;

.field public B:J

.field public z:Li1/f;


# virtual methods
.method public final F0()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Li1/f;->A:Li1/f;

    iput-object v0, p0, Li1/f;->z:Li1/f;

    return-void
.end method

.method public final M0(Lb0/l1;)Z
    .locals 1

    iget-object v0, p0, Li1/f;->z:Li1/f;

    if-nez v0, :cond_1

    iget-object p0, p0, Li1/f;->A:Li1/f;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Li1/f;->M0(Lb0/l1;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {v0, p1}, Li1/f;->M0(Lb0/l1;)Z

    move-result p0

    return p0
.end method

.method public final N0(Lb0/l1;)V
    .locals 1

    iget-object v0, p0, Li1/f;->A:Li1/f;

    if-nez v0, :cond_1

    iget-object p0, p0, Li1/f;->z:Li1/f;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Li1/f;->N0(Lb0/l1;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0, p1}, Li1/f;->N0(Lb0/l1;)V

    return-void
.end method

.method public final O0(Lb0/l1;)V
    .locals 1

    iget-object v0, p0, Li1/f;->A:Li1/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Li1/f;->O0(Lb0/l1;)V

    :cond_0
    iget-object v0, p0, Li1/f;->z:Li1/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Li1/f;->O0(Lb0/l1;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Li1/f;->z:Li1/f;

    return-void
.end method

.method public final P0(Lb0/l1;)V
    .locals 4

    iget-object v0, p0, Li1/f;->z:Li1/f;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lg6/c1;->s(Lb0/l1;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lg5/f;->e(Li1/f;J)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lf1/q;->l:Lf1/q;

    iget-boolean v1, v1, Lf1/q;->y:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Lj9/y;

    invoke-direct {v1}, Lj9/y;-><init>()V

    new-instance v2, Le2/i0;

    const/4 v3, 0x2

    invoke-direct {v2, v1, p0, p1, v3}, Le2/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p0, v2}, Le2/l;->B(Le2/e2;Li9/c;)V

    iget-object v1, v1, Lj9/y;->m:Ljava/lang/Object;

    check-cast v1, Le2/e2;

    :goto_0
    check-cast v1, Li1/f;

    :goto_1
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    invoke-virtual {v1, p1}, Li1/f;->N0(Lb0/l1;)V

    invoke-virtual {v1, p1}, Li1/f;->P0(Lb0/l1;)V

    iget-object v0, p0, Li1/f;->A:Li1/f;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Li1/f;->O0(Lb0/l1;)V

    goto :goto_2

    :cond_2
    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v2, p0, Li1/f;->A:Li1/f;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Li1/f;->N0(Lb0/l1;)V

    invoke-virtual {v2, p1}, Li1/f;->P0(Lb0/l1;)V

    :cond_3
    invoke-virtual {v0, p1}, Li1/f;->O0(Lb0/l1;)V

    goto :goto_2

    :cond_4
    invoke-static {v1, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1}, Li1/f;->N0(Lb0/l1;)V

    invoke-virtual {v1, p1}, Li1/f;->P0(Lb0/l1;)V

    :cond_5
    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Li1/f;->O0(Lb0/l1;)V

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1, p1}, Li1/f;->P0(Lb0/l1;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Li1/f;->A:Li1/f;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Li1/f;->P0(Lb0/l1;)V

    :cond_8
    :goto_2
    iput-object v1, p0, Li1/f;->z:Li1/f;

    return-void
.end method

.method public final Q0(Lb0/l1;)V
    .locals 1

    iget-object v0, p0, Li1/f;->A:Li1/f;

    if-nez v0, :cond_1

    iget-object p0, p0, Li1/f;->z:Li1/f;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Li1/f;->Q0(Lb0/l1;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0, p1}, Li1/f;->Q0(Lb0/l1;)V

    return-void
.end method

.method public final i()Ljava/lang/Object;
    .locals 0

    sget-object p0, Li1/d;->a:Li1/d;

    return-object p0
.end method

.method public final l(J)V
    .locals 0

    iput-wide p1, p0, Li1/f;->B:J

    return-void
.end method
