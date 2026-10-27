.class public Lp/a0;
.super Lp/g;
.source "SourceFile"


# instance fields
.field public X:Ly1/u;


# virtual methods
.method public final F()V
    .locals 1

    invoke-super {p0}, Lp/g;->F()V

    iget-object v0, p0, Lp/a0;->X:Ly1/u;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lp/a0;->X:Ly1/u;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lp/g;->T0(Z)V

    :cond_0
    return-void
.end method

.method public final Q0()Ly1/k0;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final Y0(Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final Z0(Landroid/view/KeyEvent;)V
    .locals 0

    iget-object p0, p0, Lp/g;->H:Li9/a;

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final w0(Ly1/l;Ly1/m;J)V
    .locals 11

    invoke-super {p0, p1, p2, p3, p4}, Lp/g;->w0(Ly1/l;Ly1/m;J)V

    sget-object v0, Ly1/m;->m:Ly1/m;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p2, v0, :cond_6

    iget-object p2, p0, Lp/a0;->X:Ly1/u;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    invoke-static {p1, p2, v2}, Lr/x2;->f(Ly1/l;ZZ)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p1, p1, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly1/u;

    invoke-virtual {p1}, Ly1/u;->a()V

    iput-object p1, p0, Lp/a0;->X:Ly1/u;

    iget-boolean p2, p0, Lp/g;->G:Z

    if-eqz p2, :cond_8

    iget-wide p1, p1, Ly1/u;->c:J

    invoke-virtual {p0, v2, p1, p2}, Lp/g;->V0(ZJ)V

    return-void

    :cond_0
    iget-object p1, p1, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly1/u;

    invoke-static {v4}, Ly1/t;->c(Ly1/u;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object p2, Lf2/l1;->s:Lr0/s2;

    invoke-static {p0, p2}, Le2/l;->h(Le2/i;Lr0/m1;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf2/p2;

    invoke-interface {p2}, Lf2/p2;->d()J

    move-result-wide v3

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p2

    iget-object p2, p2, Le2/g0;->K:Lb3/c;

    invoke-interface {p2, v3, v4}, Lb3/c;->l0(J)J

    move-result-wide v3

    const/16 p2, 0x20

    shr-long v5, v3, p2

    long-to-int v0, v5

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    shr-long v5, p3, p2

    long-to-int v5, v5

    int-to-float v5, v5

    sub-float/2addr v0, v5

    const/4 v5, 0x0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v0, v6

    const-wide v7, 0xffffffffL

    and-long/2addr v3, v7

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    and-long v9, p3, v7

    long-to-int v4, v9

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v3, v6

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v4, v0

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v9, v0

    shl-long v3, v4, p2

    and-long v5, v9, v7

    or-long/2addr v3, v5

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    move v0, v2

    :goto_1
    if-ge v0, p2, :cond_8

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly1/u;

    invoke-virtual {v5}, Ly1/u;->b()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5, p3, p4, v3, v4}, Ly1/t;->f(Ly1/u;JJ)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iput-object v1, p0, Lp/a0;->X:Ly1/u;

    invoke-virtual {p0, v2}, Lp/g;->T0(Z)V

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly1/u;

    invoke-virtual {p1}, Ly1/u;->a()V

    iget-boolean p1, p0, Lp/g;->G:Z

    if-eqz p1, :cond_5

    iget-wide p1, p2, Ly1/u;->c:J

    invoke-virtual {p0, v2, p1, p2}, Lp/g;->U0(ZJ)V

    iget-object p1, p0, Lp/g;->H:Li9/a;

    invoke-interface {p1}, Li9/a;->invoke()Ljava/lang/Object;

    :cond_5
    iput-object v1, p0, Lp/a0;->X:Ly1/u;

    return-void

    :cond_6
    sget-object p3, Ly1/m;->n:Ly1/m;

    if-ne p2, p3, :cond_8

    iget-object p2, p0, Lp/a0;->X:Ly1/u;

    if-eqz p2, :cond_8

    iget-object p1, p1, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    move p3, v2

    :goto_3
    if-ge p3, p2, :cond_8

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ly1/u;

    invoke-virtual {p4}, Ly1/u;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lp/a0;->X:Ly1/u;

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_7

    iput-object v1, p0, Lp/a0;->X:Ly1/u;

    invoke-virtual {p0, v2}, Lp/g;->T0(Z)V

    return-void

    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method
