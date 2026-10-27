.class public final Lc2/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/s1;
.implements Lc2/t0;


# instance fields
.field public final synthetic l:Lc2/g0;

.field public final synthetic m:Lc2/n0;


# direct methods
.method public constructor <init>(Lc2/n0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc2/d0;->m:Lc2/n0;

    iget-object p1, p1, Lc2/n0;->s:Lc2/g0;

    iput-object p1, p0, Lc2/d0;->l:Lc2/g0;

    return-void
.end method


# virtual methods
.method public final H(F)J
    .locals 0

    iget-object p0, p0, Lc2/d0;->l:Lc2/g0;

    invoke-interface {p0, p1}, Lb3/c;->H(F)J

    move-result-wide p0

    return-wide p0
.end method

.method public final M(I)F
    .locals 0

    iget-object p0, p0, Lc2/d0;->l:Lc2/g0;

    invoke-interface {p0, p1}, Lb3/c;->M(I)F

    move-result p0

    return p0
.end method

.method public final P(F)F
    .locals 0

    iget-object p0, p0, Lc2/d0;->l:Lc2/g0;

    invoke-virtual {p0}, Lc2/g0;->a()F

    move-result p0

    div-float/2addr p1, p0

    return p1
.end method

.method public final S()F
    .locals 0

    iget-object p0, p0, Lc2/d0;->l:Lc2/g0;

    iget p0, p0, Lc2/g0;->n:F

    return p0
.end method

.method public final T()Z
    .locals 0

    iget-object p0, p0, Lc2/d0;->l:Lc2/g0;

    invoke-virtual {p0}, Lc2/g0;->T()Z

    move-result p0

    return p0
.end method

.method public final V(F)F
    .locals 0

    iget-object p0, p0, Lc2/d0;->l:Lc2/g0;

    invoke-virtual {p0}, Lc2/g0;->a()F

    move-result p0

    mul-float/2addr p0, p1

    return p0
.end method

.method public final a()F
    .locals 0

    iget-object p0, p0, Lc2/d0;->l:Lc2/g0;

    iget p0, p0, Lc2/g0;->m:F

    return p0
.end method

.method public final getLayoutDirection()Lb3/m;
    .locals 0

    iget-object p0, p0, Lc2/d0;->l:Lc2/g0;

    iget-object p0, p0, Lc2/g0;->l:Lb3/m;

    return-object p0
.end method

.method public final h0(F)I
    .locals 0

    iget-object p0, p0, Lc2/d0;->l:Lc2/g0;

    invoke-interface {p0, p1}, Lb3/c;->h0(F)I

    move-result p0

    return p0
.end method

.method public final i0(Li9/e;Ljava/lang/Object;)Ljava/util/List;
    .locals 9

    iget-object p0, p0, Lc2/d0;->m:Lc2/n0;

    iget-object v0, p0, Lc2/n0;->l:Le2/g0;

    iget-object v1, p0, Lc2/n0;->r:Lk/m0;

    invoke-virtual {v1, p2}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le2/g0;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Le2/g0;->o()Ljava/util/List;

    move-result-object v3

    check-cast v3, Lk/f0;

    iget-object v3, v3, Lk/f0;->m:Ljava/lang/Object;

    check-cast v3, Lt0/b;

    invoke-virtual {v3, v2}, Lt0/b;->i(Ljava/lang/Object;)I

    move-result v3

    iget v4, p0, Lc2/n0;->o:I

    if-ge v3, v4, :cond_0

    invoke-virtual {v2}, Le2/g0;->m()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v2, p0, Lc2/n0;->w:Lk/m0;

    iget-object v3, p0, Lc2/n0;->u:Lk/m0;

    iget-object v4, p0, Lc2/n0;->x:Lt0/b;

    iget v5, v4, Lt0/b;->n:I

    iget v6, p0, Lc2/n0;->p:I

    if-lt v5, v6, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "Error: currentApproachIndex cannot be greater than the size of theapproachComposedSlotIds list."

    invoke-static {v5}, Lb2/a;->a(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1, p2}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le2/g0;

    iget v6, v4, Lt0/b;->n:I

    iget v7, p0, Lc2/n0;->p:I

    if-ne v6, v7, :cond_2

    invoke-virtual {v4, p2}, Lt0/b;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v4, v4, Lt0/b;->l:[Ljava/lang/Object;

    aget-object v6, v4, v7

    aput-object p2, v4, v7

    :goto_1
    iget v4, p0, Lc2/n0;->p:I

    const/4 v6, 0x1

    add-int/2addr v4, v6

    iput v4, p0, Lc2/n0;->p:I

    invoke-virtual {v3, p2}, Lk/m0;->b(Ljava/lang/Object;)Z

    move-result v4

    const/4 v7, 0x0

    if-nez v4, :cond_3

    if-nez v5, :cond_3

    invoke-virtual {p0, p2, p1, v7}, Lc2/n0;->k(Ljava/lang/Object;Li9/e;Z)V

    invoke-virtual {p0, p2}, Lc2/n0;->f(Ljava/lang/Object;)Lc2/p1;

    move-result-object p0

    invoke-virtual {v2, p2, p0}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    if-nez v4, :cond_4

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Le2/g0;->o()Ljava/util/List;

    move-result-object v4

    check-cast v4, Lk/f0;

    iget-object v4, v4, Lk/f0;->m:Ljava/lang/Object;

    check-cast v4, Lt0/b;

    invoke-virtual {v4, v5}, Lt0/b;->i(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v0}, Le2/g0;->o()Ljava/util/List;

    move-result-object v8

    check-cast v8, Lk/f0;

    iget-object v8, v8, Lk/f0;->m:Ljava/lang/Object;

    check-cast v8, Lt0/b;

    iget v8, v8, Lt0/b;->n:I

    invoke-virtual {p0, v4, v8}, Lc2/n0;->j(II)V

    iget v4, p0, Lc2/n0;->z:I

    add-int/2addr v4, v6

    iput v4, p0, Lc2/n0;->z:I

    invoke-virtual {v1, p2}, Lk/m0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, p2, v5}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lc2/n0;->f(Ljava/lang/Object;)Lc2/p1;

    move-result-object v1

    invoke-virtual {v2, p2, v1}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Le2/g0;->H()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lc2/n0;->h()V

    :cond_4
    invoke-virtual {v3, p2}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le2/g0;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lc2/n0;->q:Lk/m0;

    invoke-virtual {v2, v0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc2/e0;

    goto :goto_2

    :cond_5
    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_6

    iget-boolean v4, v2, Lc2/e0;->d:Z

    if-ne v4, v6, :cond_6

    invoke-virtual {p0, v0, p2, v7, p1}, Lc2/n0;->m(Le2/g0;Ljava/lang/Object;ZLi9/e;)V

    :cond_6
    if-eqz v2, :cond_7

    iget-object v1, v2, Lc2/e0;->f:Lr0/g1;

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {p0, v2, v6}, Lc2/n0;->d(Lc2/e0;Z)V

    :cond_8
    :goto_3
    invoke-virtual {v3, p2}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le2/g0;

    if-eqz p0, :cond_a

    iget-object p0, p0, Le2/g0;->S:Le2/l0;

    iget-object p0, p0, Le2/l0;->p:Le2/x0;

    invoke-virtual {p0}, Le2/x0;->s0()Ljava/util/List;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lk/f0;

    iget-object p2, p1, Lk/f0;->m:Ljava/lang/Object;

    check-cast p2, Lt0/b;

    iget p2, p2, Lt0/b;->n:I

    :goto_4
    if-ge v7, p2, :cond_9

    invoke-virtual {p1, v7}, Lk/f0;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le2/x0;

    iget-object v0, v0, Le2/x0;->q:Le2/l0;

    iput-boolean v6, v0, Le2/l0;->b:Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_9
    return-object p0

    :cond_a
    sget-object p0, Lu8/r;->l:Lu8/r;

    return-object p0
.end method

.method public final l0(J)J
    .locals 0

    iget-object p0, p0, Lc2/d0;->l:Lc2/g0;

    invoke-interface {p0, p1, p2}, Lb3/c;->l0(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final m(F)J
    .locals 0

    iget-object p0, p0, Lc2/d0;->l:Lc2/g0;

    invoke-interface {p0, p1}, Lb3/c;->m(F)J

    move-result-wide p0

    return-wide p0
.end method

.method public final n(J)J
    .locals 0

    iget-object p0, p0, Lc2/d0;->l:Lc2/g0;

    invoke-interface {p0, p1, p2}, Lb3/c;->n(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final p0(J)F
    .locals 0

    iget-object p0, p0, Lc2/d0;->l:Lc2/g0;

    invoke-interface {p0, p1, p2}, Lb3/c;->p0(J)F

    move-result p0

    return p0
.end method

.method public final v(J)F
    .locals 0

    iget-object p0, p0, Lc2/d0;->l:Lc2/g0;

    invoke-interface {p0, p1, p2}, Lb3/c;->v(J)F

    move-result p0

    return p0
.end method

.method public final x(IILjava/util/Map;Li9/c;)Lc2/s0;
    .locals 6

    iget-object v0, p0, Lc2/d0;->l:Lc2/g0;

    const/4 v4, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lc2/g0;->y0(IILjava/util/Map;Li9/c;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0
.end method

.method public final y0(IILjava/util/Map;Li9/c;Li9/c;)Lc2/s0;
    .locals 0

    iget-object p0, p0, Lc2/d0;->l:Lc2/g0;

    invoke-virtual/range {p0 .. p5}, Lc2/g0;->y0(IILjava/util/Map;Li9/c;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0
.end method
