.class public final Lp/y1;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/x;
.implements Le2/z1;


# instance fields
.field public A:Z

.field public z:Lp/a2;


# virtual methods
.method public final C(Lm2/x;)V
    .locals 5

    sget-object v0, Lm2/v;->a:[Lp9/d;

    sget-object v0, Lm2/t;->m:Lm2/w;

    sget-object v1, Lm2/v;->a:[Lp9/d;

    const/4 v2, 0x6

    aget-object v2, v1, v2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v2}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    new-instance v0, Lm2/i;

    new-instance v2, Lp/x1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lp/x1;-><init>(Lp/y1;I)V

    new-instance v3, Lp/x1;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lp/x1;-><init>(Lp/y1;I)V

    invoke-direct {v0, v2, v3}, Lm2/i;-><init>(Li9/a;Li9/a;)V

    iget-boolean p0, p0, Lp/y1;->A:Z

    if-eqz p0, :cond_0

    sget-object p0, Lm2/t;->v:Lm2/w;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-interface {p1, p0, v0}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object p0, Lm2/t;->u:Lm2/w;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-interface {p1, p0, v0}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    return-void
.end method

.method public final I(Le2/p0;Lc2/q0;I)I
    .locals 0

    iget-boolean p0, p0, Lp/y1;->A:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const p3, 0x7fffffff

    :goto_0
    invoke-interface {p2, p3}, Lc2/q0;->b0(I)I

    move-result p0

    return p0
.end method

.method public final b(Lc2/t0;Lc2/q0;J)Lc2/s0;
    .locals 9

    iget-boolean v0, p0, Lp/y1;->A:Z

    if-eqz v0, :cond_0

    sget-object v0, Lr/m1;->l:Lr/m1;

    goto :goto_0

    :cond_0
    sget-object v0, Lr/m1;->m:Lr/m1;

    :goto_0
    invoke-static {p3, p4, v0}, Lp/o;->i(JLr/m1;)V

    iget-boolean v0, p0, Lp/y1;->A:Z

    const v1, 0x7fffffff

    if-eqz v0, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    invoke-static {p3, p4}, Lb3/a;->g(J)I

    move-result v0

    move v7, v0

    :goto_1
    iget-boolean v0, p0, Lp/y1;->A:Z

    if-eqz v0, :cond_2

    invoke-static {p3, p4}, Lb3/a;->h(J)I

    move-result v1

    :cond_2
    move v5, v1

    const/4 v6, 0x0

    const/4 v8, 0x5

    const/4 v4, 0x0

    move-wide v2, p3

    invoke-static/range {v2 .. v8}, Lb3/a;->a(JIIIII)J

    move-result-wide p3

    invoke-interface {p2, p3, p4}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object p2

    iget p3, p2, Lc2/f1;->l:I

    invoke-static {v2, v3}, Lb3/a;->h(J)I

    move-result p4

    if-le p3, p4, :cond_3

    move p3, p4

    :cond_3
    iget p4, p2, Lc2/f1;->m:I

    invoke-static {v2, v3}, Lb3/a;->g(J)I

    move-result v0

    if-le p4, v0, :cond_4

    move p4, v0

    :cond_4
    iget v0, p2, Lc2/f1;->m:I

    sub-int/2addr v0, p4

    iget v1, p2, Lc2/f1;->l:I

    sub-int/2addr v1, p3

    iget-boolean v2, p0, Lp/y1;->A:Z

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    iget-object v1, p0, Lp/y1;->z:Lp/a2;

    iget-object v2, v1, Lp/a2;->e:Lr0/b1;

    iget-object v1, v1, Lp/a2;->a:Lr0/b1;

    invoke-virtual {v2, v0}, Lr0/b1;->h(I)V

    invoke-static {}, Ld1/w;->e()Ld1/g;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ld1/g;->e()Li9/c;

    move-result-object v3

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    invoke-static {v2}, Ld1/w;->h(Ld1/g;)Ld1/g;

    move-result-object v4

    :try_start_0
    invoke-virtual {v1}, Lr0/b1;->g()I

    move-result v5

    if-le v5, v0, :cond_7

    invoke-virtual {v1, v0}, Lr0/b1;->h(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_7

    :cond_7
    :goto_4
    invoke-static {v2, v4, v3}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    iget-object v1, p0, Lp/y1;->z:Lp/a2;

    iget-boolean v2, p0, Lp/y1;->A:Z

    if-eqz v2, :cond_8

    move v2, p4

    goto :goto_5

    :cond_8
    move v2, p3

    :goto_5
    iget-object v1, v1, Lp/a2;->b:Lr0/b1;

    invoke-virtual {v1, v2}, Lr0/b1;->h(I)V

    iget-object v1, p0, Lp/y1;->z:Lp/a2;

    iget-boolean v2, p0, Lp/y1;->A:Z

    if-eqz v2, :cond_9

    iget v2, p2, Lc2/f1;->m:I

    goto :goto_6

    :cond_9
    iget v2, p2, Lc2/f1;->l:I

    :goto_6
    iget-object v1, v1, Lp/a2;->c:Lr0/b1;

    invoke-virtual {v1, v2}, Lr0/b1;->h(I)V

    new-instance v1, Lb0/j3;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2, p0, p2}, Lb0/j3;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Lu8/s;->l:Lu8/s;

    invoke-interface {p1, p3, p4, p0, v1}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0

    :goto_7
    invoke-static {v2, v4, v3}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    throw p0
.end method

.method public final b0(Le2/p0;Lc2/q0;I)I
    .locals 0

    iget-boolean p0, p0, Lp/y1;->A:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const p3, 0x7fffffff

    :goto_0
    invoke-interface {p2, p3}, Lc2/q0;->c(I)I

    move-result p0

    return p0
.end method

.method public final o(Le2/p0;Lc2/q0;I)I
    .locals 0

    iget-boolean p0, p0, Lp/y1;->A:Z

    if-eqz p0, :cond_0

    const p3, 0x7fffffff

    :cond_0
    invoke-interface {p2, p3}, Lc2/q0;->z(I)I

    move-result p0

    return p0
.end method

.method public final x0(Le2/p0;Lc2/q0;I)I
    .locals 0

    iget-boolean p0, p0, Lp/y1;->A:Z

    if-eqz p0, :cond_0

    const p3, 0x7fffffff

    :cond_0
    invoke-interface {p2, p3}, Lc2/q0;->u(I)I

    move-result p0

    return p0
.end method
