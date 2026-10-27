.class public final Le2/t0;
.super Lc2/f1;
.source "SourceFile"

# interfaces
.implements Lc2/q0;
.implements Le2/a;
.implements Le2/z0;


# instance fields
.field public A:Li9/c;

.field public B:Le2/r0;

.field public final C:Le2/h0;

.field public final D:Lt0/b;

.field public E:Z

.field public F:Z

.field public final G:Le2/s0;

.field public H:Z

.field public I:Ljava/lang/Object;

.field public J:J

.field public final K:Le2/s0;

.field public final L:Le2/s0;

.field public M:Z

.field public final q:Le2/l0;

.field public r:Z

.field public s:I

.field public t:I

.field public u:Le2/e0;

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Lb3/a;

.field public z:J


# direct methods
.method public constructor <init>(Le2/l0;)V
    .locals 3

    invoke-direct {p0}, Lc2/f1;-><init>()V

    iput-object p1, p0, Le2/t0;->q:Le2/l0;

    const v0, 0x7fffffff

    iput v0, p0, Le2/t0;->s:I

    iput v0, p0, Le2/t0;->t:I

    sget-object v0, Le2/e0;->n:Le2/e0;

    iput-object v0, p0, Le2/t0;->u:Le2/e0;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Le2/t0;->z:J

    sget-object v0, Le2/r0;->n:Le2/r0;

    iput-object v0, p0, Le2/t0;->B:Le2/r0;

    new-instance v0, Le2/h0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Le2/h0;-><init>(Le2/a;I)V

    iput-object v0, p0, Le2/t0;->C:Le2/h0;

    new-instance v0, Lt0/b;

    const/16 v1, 0x10

    new-array v1, v1, [Le2/t0;

    invoke-direct {v0, v1}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Le2/t0;->D:Lt0/b;

    const/4 v0, 0x1

    iput-boolean v0, p0, Le2/t0;->E:Z

    new-instance v1, Le2/s0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le2/s0;-><init>(Le2/t0;I)V

    iput-object v1, p0, Le2/t0;->G:Le2/s0;

    iput-boolean v0, p0, Le2/t0;->H:Z

    iget-object p1, p1, Le2/l0;->p:Le2/x0;

    iget-object p1, p1, Le2/x0;->C:Ljava/lang/Object;

    iput-object p1, p0, Le2/t0;->I:Ljava/lang/Object;

    const/4 p1, 0x0

    const/16 v0, 0xf

    invoke-static {p1, p1, v0}, Lb3/b;->b(III)J

    move-result-wide v0

    iput-wide v0, p0, Le2/t0;->J:J

    new-instance p1, Le2/s0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Le2/s0;-><init>(Le2/t0;I)V

    iput-object p1, p0, Le2/t0;->K:Le2/s0;

    new-instance p1, Le2/s0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Le2/s0;-><init>(Le2/t0;I)V

    iput-object p1, p0, Le2/t0;->L:Le2/s0;

    return-void
.end method


# virtual methods
.method public final A0(JLi9/c;)V
    .locals 9

    iget-object v0, p0, Le2/t0;->q:Le2/l0;

    iget-object v1, v0, Le2/l0;->a:Le2/g0;

    iget-object v2, v0, Le2/l0;->a:Le2/g0;

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1}, Le2/g0;->v()Le2/g0;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, v4, Le2/g0;->S:Le2/l0;

    iget-object v4, v4, Le2/l0;->d:Le2/c0;

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    sget-object v5, Le2/c0;->o:Le2/c0;

    const/4 v6, 0x0

    if-ne v4, v5, :cond_1

    iput-boolean v6, v0, Le2/l0;->c:Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_1
    iget-boolean v4, v2, Le2/g0;->c0:Z

    if-eqz v4, :cond_2

    const-string v4, "place is called on a deactivated node"

    invoke-static {v4}, Lb2/a;->a(Ljava/lang/String;)V

    :cond_2
    iput-object v5, v0, Le2/l0;->d:Le2/c0;

    const/4 v4, 0x1

    iput-boolean v4, p0, Le2/t0;->w:Z

    iput-boolean v6, p0, Le2/t0;->M:Z

    iget-wide v7, p0, Le2/t0;->z:J

    invoke-static {p1, p2, v7, v8}, Lb3/j;->a(JJ)Z

    move-result v5

    if-nez v5, :cond_5

    iget-boolean v5, v0, Le2/l0;->n:Z

    if-nez v5, :cond_3

    iget-boolean v5, v0, Le2/l0;->m:Z

    if-eqz v5, :cond_4

    :cond_3
    iput-boolean v4, v0, Le2/l0;->f:Z

    :cond_4
    invoke-virtual {p0}, Le2/t0;->w0()V

    :cond_5
    invoke-static {v2}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object v5

    iput-wide p1, p0, Le2/t0;->z:J

    iget-boolean v7, v0, Le2/l0;->f:Z

    if-nez v7, :cond_7

    iget-object v7, p0, Le2/t0;->B:Le2/r0;

    sget-object v8, Le2/r0;->n:Le2/r0;

    if-eq v7, v8, :cond_6

    goto :goto_2

    :cond_6
    move v4, v6

    :goto_2
    if-eqz v4, :cond_7

    invoke-virtual {v0}, Le2/l0;->a()Le2/h1;

    move-result-object v2

    invoke-virtual {v2}, Le2/h1;->S0()Le2/q0;

    move-result-object v2

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-wide v4, v2, Lc2/f1;->p:J

    invoke-static {p1, p2, v4, v5}, Lb3/j;->c(JJ)J

    move-result-wide p1

    invoke-virtual {v2, p1, p2}, Le2/q0;->L0(J)V

    invoke-virtual {p0}, Le2/t0;->z0()V

    goto :goto_3

    :cond_7
    invoke-virtual {v0, v6}, Le2/l0;->h(Z)V

    iget-object p1, p0, Le2/t0;->C:Le2/h0;

    iput-boolean v6, p1, Le2/h0;->g:Z

    check-cast v5, Lf2/y;

    invoke-virtual {v5}, Lf2/y;->getSnapshotObserver()Le2/s1;

    move-result-object p1

    iget-object p2, p0, Le2/t0;->L:Le2/s0;

    iget-object v4, p1, Le2/s1;->g:Le2/d;

    iget-object p1, p1, Le2/s1;->a:Ld1/b0;

    invoke-virtual {p1, v2, v4, p2}, Ld1/b0;->c(Ljava/lang/Object;Li9/c;Li9/a;)V

    :goto_3
    iput-object p3, p0, Le2/t0;->A:Li9/c;

    sget-object p0, Le2/c0;->p:Le2/c0;

    iput-object p0, v0, Le2/l0;->d:Le2/c0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_4
    invoke-virtual {v1, p0}, Le2/g0;->a0(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final B0(J)Z
    .locals 12

    iget-object v0, p0, Le2/t0;->q:Le2/l0;

    iget-object v1, v0, Le2/l0;->a:Le2/g0;

    iget-object v2, v0, Le2/l0;->a:Le2/g0;

    :try_start_0
    iget-boolean v3, v1, Le2/g0;->c0:Z

    if-eqz v3, :cond_0

    const-string v3, "measure is called on a deactivated node"

    invoke-static {v3}, Lb2/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :cond_0
    :goto_0
    invoke-virtual {v2}, Le2/g0;->v()Le2/g0;

    move-result-object v3

    iget-boolean v4, v2, Le2/g0;->Q:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_2

    if-eqz v3, :cond_1

    iget-boolean v3, v3, Le2/g0;->Q:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v6

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v5

    :goto_2
    iput-boolean v3, v2, Le2/g0;->Q:Z

    iget-object v3, v2, Le2/g0;->S:Le2/l0;

    iget-boolean v3, v3, Le2/l0;->e:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Le2/t0;->y:Lb3/a;

    if-nez v3, :cond_3

    move v3, v6

    goto :goto_3

    :cond_3
    iget-wide v3, v3, Lb3/a;->a:J

    invoke-static {v3, v4, p1, p2}, Lb3/a;->b(JJ)Z

    move-result v3

    :goto_3
    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    iget-object p0, v2, Le2/g0;->z:Le2/q1;

    if-eqz p0, :cond_5

    check-cast p0, Lf2/y;

    invoke-virtual {p0, v2, v5}, Lf2/y;->l(Le2/g0;Z)V

    :cond_5
    invoke-virtual {v2}, Le2/g0;->Z()V

    return v6

    :cond_6
    :goto_4
    new-instance v3, Lb3/a;

    invoke-direct {v3, p1, p2}, Lb3/a;-><init>(J)V

    iput-object v3, p0, Le2/t0;->y:Lb3/a;

    invoke-virtual {p0, p1, p2}, Lc2/f1;->r0(J)V

    iget-object v3, p0, Le2/t0;->C:Le2/h0;

    iput-boolean v6, v3, Le2/h0;->f:Z

    invoke-virtual {v2}, Le2/g0;->z()Lt0/b;

    move-result-object v2

    iget-object v3, v2, Lt0/b;->l:[Ljava/lang/Object;

    iget v2, v2, Lt0/b;->n:I

    move v4, v6

    :goto_5
    if-ge v4, v2, :cond_7

    aget-object v7, v3, v4

    check-cast v7, Le2/g0;

    iget-object v7, v7, Le2/g0;->S:Le2/l0;

    iget-object v7, v7, Le2/l0;->q:Le2/t0;

    invoke-static {v7}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v7, v7, Le2/t0;->C:Le2/h0;

    iput-boolean v6, v7, Le2/h0;->c:Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_7
    iget-boolean v2, p0, Le2/t0;->x:Z

    const-wide v3, 0xffffffffL

    const/16 v7, 0x20

    if-eqz v2, :cond_8

    iget-wide v8, p0, Lc2/f1;->n:J

    goto :goto_6

    :cond_8
    const/high16 v2, -0x80000000

    int-to-long v8, v2

    shl-long v10, v8, v7

    and-long/2addr v8, v3

    or-long/2addr v8, v10

    :goto_6
    iput-boolean v5, p0, Le2/t0;->x:Z

    invoke-virtual {v0}, Le2/l0;->a()Le2/h1;

    move-result-object v2

    invoke-virtual {v2}, Le2/h1;->S0()Le2/q0;

    move-result-object v2

    if-eqz v2, :cond_9

    move v10, v5

    goto :goto_7

    :cond_9
    move v10, v6

    :goto_7
    if-nez v10, :cond_a

    const-string v10, "Lookahead result from lookaheadRemeasure cannot be null"

    invoke-static {v10}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v0, p1, p2}, Le2/l0;->c(J)V

    iget p1, v2, Lc2/f1;->l:I

    iget p2, v2, Lc2/f1;->m:I

    int-to-long v10, p1

    shl-long/2addr v10, v7

    int-to-long p1, p2

    and-long/2addr p1, v3

    or-long/2addr p1, v10

    invoke-virtual {p0, p1, p2}, Lc2/f1;->q0(J)V

    shr-long p0, v8, v7

    long-to-int p0, p0

    iget p1, v2, Lc2/f1;->l:I

    if-ne p0, p1, :cond_c

    and-long p0, v8, v3

    long-to-int p0, p0

    iget p1, v2, Lc2/f1;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p0, p1, :cond_b

    goto :goto_8

    :cond_b
    return v6

    :cond_c
    :goto_8
    return v5

    :goto_9
    invoke-virtual {v1, p0}, Le2/g0;->a0(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final C(J)Lc2/f1;
    .locals 5

    iget-object v0, p0, Le2/t0;->q:Le2/l0;

    iget-object v1, v0, Le2/l0;->a:Le2/g0;

    invoke-virtual {v1}, Le2/g0;->v()Le2/g0;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Le2/g0;->S:Le2/l0;

    iget-object v1, v1, Le2/l0;->d:Le2/c0;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    sget-object v3, Le2/c0;->m:Le2/c0;

    if-eq v1, v3, :cond_2

    iget-object v1, v0, Le2/l0;->a:Le2/g0;

    invoke-virtual {v1}, Le2/g0;->v()Le2/g0;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Le2/g0;->S:Le2/l0;

    iget-object v2, v1, Le2/l0;->d:Le2/c0;

    :cond_1
    sget-object v1, Le2/c0;->o:Le2/c0;

    if-ne v2, v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, v0, Le2/l0;->b:Z

    :cond_3
    iget-object v1, v0, Le2/l0;->a:Le2/g0;

    invoke-virtual {v1}, Le2/g0;->v()Le2/g0;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, v2, Le2/g0;->S:Le2/l0;

    iget-object v3, p0, Le2/t0;->u:Le2/e0;

    sget-object v4, Le2/e0;->n:Le2/e0;

    if-eq v3, v4, :cond_5

    iget-boolean v1, v1, Le2/g0;->Q:Z

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const-string v1, "measure() may not be called multiple times on the same Measurable. If you want to get the content size of the Measurable before calculating the final constraints, please use methods like minIntrinsicWidth()/maxIntrinsicWidth() and minIntrinsicHeight()/maxIntrinsicHeight()"

    invoke-static {v1}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_5
    :goto_1
    iget-object v1, v2, Le2/l0;->d:Le2/c0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v3, 0x1

    if-eq v1, v3, :cond_8

    const/4 v3, 0x2

    if-eq v1, v3, :cond_7

    const/4 v3, 0x3

    if-ne v1, v3, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Measurable could be only measured from the parent\'s measure or layout block. Parents state is "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v2, Le2/l0;->d:Le2/c0;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    sget-object v1, Le2/e0;->m:Le2/e0;

    goto :goto_3

    :cond_8
    sget-object v1, Le2/e0;->l:Le2/e0;

    :goto_3
    iput-object v1, p0, Le2/t0;->u:Le2/e0;

    goto :goto_4

    :cond_9
    sget-object v1, Le2/e0;->n:Le2/e0;

    iput-object v1, p0, Le2/t0;->u:Le2/e0;

    :goto_4
    iget-object v0, v0, Le2/l0;->a:Le2/g0;

    iget-object v1, v0, Le2/g0;->O:Le2/e0;

    sget-object v2, Le2/e0;->n:Le2/e0;

    if-ne v1, v2, :cond_a

    invoke-virtual {v0}, Le2/g0;->e()V

    :cond_a
    invoke-virtual {p0, p1, p2}, Le2/t0;->B0(J)Z

    return-object p0
.end method

.method public final F(Landroidx/fragment/app/t;)V
    .locals 3

    iget-object p0, p0, Le2/t0;->q:Le2/l0;

    iget-object p0, p0, Le2/l0;->a:Le2/g0;

    invoke-virtual {p0}, Le2/g0;->z()Lt0/b;

    move-result-object p0

    iget-object v0, p0, Lt0/b;->l:[Ljava/lang/Object;

    iget p0, p0, Lt0/b;->n:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, v0, v1

    check-cast v2, Le2/g0;

    iget-object v2, v2, Le2/g0;->S:Le2/l0;

    iget-object v2, v2, Le2/l0;->q:Le2/t0;

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroidx/fragment/app/t;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final G()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Le2/t0;->I:Ljava/lang/Object;

    return-object p0
.end method

.method public final J(Z)V
    .locals 2

    iget-object p0, p0, Le2/t0;->q:Le2/l0;

    invoke-virtual {p0}, Le2/l0;->a()Le2/h1;

    move-result-object v0

    invoke-virtual {v0}, Le2/h1;->S0()Le2/q0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Le2/p0;->t:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Le2/l0;->a()Le2/h1;

    move-result-object p0

    invoke-virtual {p0}, Le2/h1;->S0()Le2/q0;

    move-result-object p0

    if-eqz p0, :cond_1

    iput-boolean p1, p0, Le2/p0;->t:Z

    :cond_1
    return-void
.end method

.method public final N()V
    .locals 11

    const/4 v0, 0x1

    iput-boolean v0, p0, Le2/t0;->F:Z

    iget-object v1, p0, Le2/t0;->C:Le2/h0;

    invoke-virtual {v1}, Le2/h0;->h()V

    iget-object v2, p0, Le2/t0;->q:Le2/l0;

    iget-boolean v3, v2, Le2/l0;->f:Z

    iget-object v4, v2, Le2/l0;->a:Le2/g0;

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v4}, Le2/g0;->z()Lt0/b;

    move-result-object v3

    iget-object v6, v3, Lt0/b;->l:[Ljava/lang/Object;

    iget v3, v3, Lt0/b;->n:I

    move v7, v5

    :goto_0
    if-ge v7, v3, :cond_2

    aget-object v8, v6, v7

    check-cast v8, Le2/g0;

    iget-object v9, v8, Le2/g0;->S:Le2/l0;

    iget-boolean v10, v9, Le2/l0;->e:Z

    if-eqz v10, :cond_1

    invoke-virtual {v8}, Le2/g0;->t()Le2/e0;

    move-result-object v8

    sget-object v10, Le2/e0;->l:Le2/e0;

    if-ne v8, v10, :cond_1

    iget-object v8, v9, Le2/l0;->q:Le2/t0;

    invoke-static {v8}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v9, v9, Le2/l0;->q:Le2/t0;

    if-eqz v9, :cond_0

    iget-object v9, v9, Le2/t0;->y:Lb3/a;

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    invoke-static {v9}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-wide v9, v9, Lb3/a;->a:J

    invoke-virtual {v8, v9, v10}, Le2/t0;->B0(J)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x7

    invoke-static {v4, v5, v8}, Le2/g0;->V(Le2/g0;ZI)V

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Le2/t0;->f()Le2/s;

    move-result-object v3

    iget-object v3, v3, Le2/s;->d0:Le2/r;

    invoke-static {v3}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-boolean v6, v2, Le2/l0;->g:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Le2/t0;->v:Z

    if-nez v6, :cond_5

    iget-boolean v6, v3, Le2/p0;->v:Z

    if-nez v6, :cond_5

    iget-boolean v6, v2, Le2/l0;->f:Z

    if-eqz v6, :cond_5

    :cond_3
    iput-boolean v5, v2, Le2/l0;->f:Z

    iget-object v6, v2, Le2/l0;->d:Le2/c0;

    sget-object v7, Le2/c0;->o:Le2/c0;

    iput-object v7, v2, Le2/l0;->d:Le2/c0;

    invoke-virtual {v2, v5}, Le2/l0;->i(Z)V

    invoke-static {v4}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object v7

    check-cast v7, Lf2/y;

    invoke-virtual {v7}, Lf2/y;->getSnapshotObserver()Le2/s1;

    move-result-object v7

    iget-object v8, v7, Le2/s1;->h:Le2/d;

    iget-object v7, v7, Le2/s1;->a:Ld1/b0;

    iget-object v9, p0, Le2/t0;->G:Le2/s0;

    invoke-virtual {v7, v4, v8, v9}, Ld1/b0;->c(Ljava/lang/Object;Li9/c;Li9/a;)V

    iput-object v6, v2, Le2/l0;->d:Le2/c0;

    iget-boolean v4, v2, Le2/l0;->m:Z

    if-eqz v4, :cond_4

    iget-boolean v3, v3, Le2/p0;->v:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Le2/t0;->requestLayout()V

    :cond_4
    iput-boolean v5, v2, Le2/l0;->g:Z

    :cond_5
    iget-boolean v2, v1, Le2/h0;->d:Z

    if-eqz v2, :cond_6

    iput-boolean v0, v1, Le2/h0;->e:Z

    :cond_6
    iget-boolean v0, v1, Le2/h0;->b:Z

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Le2/h0;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Le2/h0;->g()V

    :cond_7
    iput-boolean v5, p0, Le2/t0;->F:Z

    return-void
.end method

.method public final W()V
    .locals 2

    iget-object p0, p0, Le2/t0;->q:Le2/l0;

    iget-object p0, p0, Le2/l0;->a:Le2/g0;

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-static {p0, v0, v1}, Le2/g0;->V(Le2/g0;ZI)V

    return-void
.end method

.method public final b()Le2/h0;
    .locals 0

    iget-object p0, p0, Le2/t0;->C:Le2/h0;

    return-object p0
.end method

.method public final b0(I)I
    .locals 0

    invoke-virtual {p0}, Le2/t0;->x0()V

    iget-object p0, p0, Le2/t0;->q:Le2/l0;

    invoke-virtual {p0}, Le2/l0;->a()Le2/h1;

    move-result-object p0

    invoke-virtual {p0}, Le2/h1;->S0()Le2/q0;

    move-result-object p0

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lc2/q0;->b0(I)I

    move-result p0

    return p0
.end method

.method public final c(I)I
    .locals 0

    invoke-virtual {p0}, Le2/t0;->x0()V

    iget-object p0, p0, Le2/t0;->q:Le2/l0;

    invoke-virtual {p0}, Le2/l0;->a()Le2/h1;

    move-result-object p0

    invoke-virtual {p0}, Le2/h1;->S0()Le2/q0;

    move-result-object p0

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lc2/q0;->c(I)I

    move-result p0

    return p0
.end method

.method public final d0(Lc2/a;)I
    .locals 6

    iget-object v0, p0, Le2/t0;->q:Le2/l0;

    iget-object v1, v0, Le2/l0;->a:Le2/g0;

    invoke-virtual {v1}, Le2/g0;->v()Le2/g0;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Le2/g0;->S:Le2/l0;

    iget-object v1, v1, Le2/l0;->d:Le2/c0;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    sget-object v3, Le2/c0;->m:Le2/c0;

    iget-object v4, p0, Le2/t0;->C:Le2/h0;

    const/4 v5, 0x1

    if-ne v1, v3, :cond_1

    iput-boolean v5, v4, Le2/h0;->c:Z

    goto :goto_1

    :cond_1
    iget-object v1, v0, Le2/l0;->a:Le2/g0;

    invoke-virtual {v1}, Le2/g0;->v()Le2/g0;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v1, Le2/g0;->S:Le2/l0;

    iget-object v2, v1, Le2/l0;->d:Le2/c0;

    :cond_2
    sget-object v1, Le2/c0;->o:Le2/c0;

    if-ne v2, v1, :cond_3

    iput-boolean v5, v4, Le2/h0;->d:Z

    :cond_3
    :goto_1
    iput-boolean v5, p0, Le2/t0;->v:Z

    invoke-virtual {v0}, Le2/l0;->a()Le2/h1;

    move-result-object v0

    invoke-virtual {v0}, Le2/h1;->S0()Le2/q0;

    move-result-object v0

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Le2/p0;->d0(Lc2/a;)I

    move-result p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Le2/t0;->v:Z

    return p1
.end method

.method public final f()Le2/s;
    .locals 0

    iget-object p0, p0, Le2/t0;->q:Le2/l0;

    iget-object p0, p0, Le2/l0;->a:Le2/g0;

    iget-object p0, p0, Le2/g0;->R:Le2/c1;

    iget-object p0, p0, Le2/c1;->c:Le2/s;

    return-object p0
.end method

.method public final i()Le2/a;
    .locals 0

    iget-object p0, p0, Le2/t0;->q:Le2/l0;

    iget-object p0, p0, Le2/l0;->a:Le2/g0;

    invoke-virtual {p0}, Le2/g0;->v()Le2/g0;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Le2/g0;->S:Le2/l0;

    if-eqz p0, :cond_0

    iget-object p0, p0, Le2/l0;->q:Le2/t0;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final o0(JFLi9/c;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p4}, Le2/t0;->A0(JLi9/c;)V

    return-void
.end method

.method public final requestLayout()V
    .locals 1

    iget-object p0, p0, Le2/t0;->q:Le2/l0;

    iget-object p0, p0, Le2/l0;->a:Le2/g0;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Le2/g0;->U(Z)V

    return-void
.end method

.method public final s0()Z
    .locals 1

    iget-object p0, p0, Le2/t0;->q:Le2/l0;

    iget-object v0, p0, Le2/l0;->a:Le2/g0;

    invoke-static {v0}, Le2/l;->q(Le2/g0;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Le2/l0;->c:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final t0(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Le2/t0;->s0()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Le2/t0;->s0()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p1, Le2/r0;->n:Le2/r0;

    iput-object p1, p0, Le2/t0;->B:Le2/r0;

    iget-object p0, p0, Le2/t0;->q:Le2/l0;

    iget-object p0, p0, Le2/l0;->a:Le2/g0;

    invoke-virtual {p0}, Le2/g0;->z()Lt0/b;

    move-result-object p0

    iget-object p1, p0, Lt0/b;->l:[Ljava/lang/Object;

    iget p0, p0, Lt0/b;->n:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    aget-object v1, p1, v0

    check-cast v1, Le2/g0;

    iget-object v1, v1, Le2/g0;->S:Le2/l0;

    iget-object v1, v1, Le2/l0;->q:Le2/t0;

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Le2/t0;->t0(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final u(I)I
    .locals 0

    invoke-virtual {p0}, Le2/t0;->x0()V

    iget-object p0, p0, Le2/t0;->q:Le2/l0;

    invoke-virtual {p0}, Le2/l0;->a()Le2/h1;

    move-result-object p0

    invoke-virtual {p0}, Le2/h1;->S0()Le2/q0;

    move-result-object p0

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lc2/q0;->u(I)I

    move-result p0

    return p0
.end method

.method public final v0()V
    .locals 6

    iget-object v0, p0, Le2/t0;->B:Le2/r0;

    iget-object v1, p0, Le2/t0;->q:Le2/l0;

    iget-boolean v2, v1, Le2/l0;->c:Z

    iget-object v3, v1, Le2/l0;->a:Le2/g0;

    if-eqz v2, :cond_0

    sget-object v2, Le2/r0;->m:Le2/r0;

    iput-object v2, p0, Le2/t0;->B:Le2/r0;

    goto :goto_0

    :cond_0
    sget-object v2, Le2/r0;->l:Le2/r0;

    iput-object v2, p0, Le2/t0;->B:Le2/r0;

    :goto_0
    sget-object p0, Le2/r0;->l:Le2/r0;

    if-eq v0, p0, :cond_1

    iget-boolean p0, v1, Le2/l0;->e:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x6

    const/4 v0, 0x1

    invoke-static {v3, v0, p0}, Le2/g0;->V(Le2/g0;ZI)V

    :cond_1
    invoke-virtual {v3}, Le2/g0;->z()Lt0/b;

    move-result-object p0

    iget-object v0, p0, Lt0/b;->l:[Ljava/lang/Object;

    iget p0, p0, Lt0/b;->n:I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p0, :cond_4

    aget-object v2, v0, v1

    check-cast v2, Le2/g0;

    iget-object v3, v2, Le2/g0;->S:Le2/l0;

    iget-object v3, v3, Le2/l0;->q:Le2/t0;

    if-eqz v3, :cond_3

    iget v4, v3, Le2/t0;->t:I

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_2

    invoke-virtual {v3}, Le2/t0;->v0()V

    invoke-static {v2}, Le2/g0;->Y(Le2/g0;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Error: Child node\'s lookahead pass delegate cannot be null when in a lookahead scope."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method

.method public final w0()V
    .locals 6

    iget-object p0, p0, Le2/t0;->q:Le2/l0;

    iget v0, p0, Le2/l0;->o:I

    if-lez v0, :cond_3

    iget-object p0, p0, Le2/l0;->a:Le2/g0;

    invoke-virtual {p0}, Le2/g0;->z()Lt0/b;

    move-result-object p0

    iget-object v0, p0, Lt0/b;->l:[Ljava/lang/Object;

    iget p0, p0, Lt0/b;->n:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_3

    aget-object v3, v0, v2

    check-cast v3, Le2/g0;

    iget-object v4, v3, Le2/g0;->S:Le2/l0;

    iget-boolean v5, v4, Le2/l0;->m:Z

    if-nez v5, :cond_0

    iget-boolean v5, v4, Le2/l0;->n:Z

    if-eqz v5, :cond_1

    :cond_0
    iget-boolean v5, v4, Le2/l0;->f:Z

    if-nez v5, :cond_1

    invoke-virtual {v3, v1}, Le2/g0;->U(Z)V

    :cond_1
    iget-object v3, v4, Le2/l0;->q:Le2/t0;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Le2/t0;->w0()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final x0()V
    .locals 3

    iget-object p0, p0, Le2/t0;->q:Le2/l0;

    iget-object v0, p0, Le2/l0;->a:Le2/g0;

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Le2/g0;->V(Le2/g0;ZI)V

    iget-object p0, p0, Le2/l0;->a:Le2/g0;

    invoke-virtual {p0}, Le2/g0;->v()Le2/g0;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Le2/g0;->O:Le2/e0;

    sget-object v2, Le2/e0;->n:Le2/e0;

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Le2/g0;->S:Le2/l0;

    iget-object v1, v1, Le2/l0;->d:Le2/c0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v0, v0, Le2/g0;->O:Le2/e0;

    goto :goto_0

    :cond_0
    sget-object v0, Le2/e0;->m:Le2/e0;

    goto :goto_0

    :cond_1
    sget-object v0, Le2/e0;->l:Le2/e0;

    :goto_0
    iput-object v0, p0, Le2/g0;->O:Le2/e0;

    :cond_2
    return-void
.end method

.method public final y()I
    .locals 0

    iget p0, p0, Le2/t0;->t:I

    return p0
.end method

.method public final z(I)I
    .locals 0

    invoke-virtual {p0}, Le2/t0;->x0()V

    iget-object p0, p0, Le2/t0;->q:Le2/l0;

    invoke-virtual {p0}, Le2/l0;->a()Le2/h1;

    move-result-object p0

    invoke-virtual {p0}, Le2/h1;->S0()Le2/q0;

    move-result-object p0

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lc2/q0;->z(I)I

    move-result p0

    return p0
.end method

.method public final z0()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Le2/t0;->M:Z

    iget-object v1, p0, Le2/t0;->q:Le2/l0;

    iget-object v2, v1, Le2/l0;->a:Le2/g0;

    invoke-virtual {v2}, Le2/g0;->v()Le2/g0;

    move-result-object v2

    iget-object v3, p0, Le2/t0;->B:Le2/r0;

    sget-object v4, Le2/r0;->l:Le2/r0;

    const/4 v5, 0x0

    if-eq v3, v4, :cond_0

    iget-boolean v4, v1, Le2/l0;->c:Z

    if-eqz v4, :cond_1

    :cond_0
    sget-object v4, Le2/r0;->m:Le2/r0;

    if-eq v3, v4, :cond_2

    iget-boolean v1, v1, Le2/l0;->c:Z

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Le2/t0;->v0()V

    iget-boolean v1, p0, Le2/t0;->r:Z

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v5}, Le2/g0;->U(Z)V

    :cond_2
    if-eqz v2, :cond_5

    iget-object v1, v2, Le2/g0;->S:Le2/l0;

    iget-boolean v2, p0, Le2/t0;->r:Z

    if-nez v2, :cond_6

    iget-object v2, v1, Le2/l0;->d:Le2/c0;

    sget-object v3, Le2/c0;->n:Le2/c0;

    if-eq v2, v3, :cond_3

    sget-object v3, Le2/c0;->o:Le2/c0;

    if-ne v2, v3, :cond_6

    :cond_3
    iget v2, p0, Le2/t0;->t:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_4

    goto :goto_0

    :cond_4
    const-string v2, "Place was called on a node which was placed already"

    invoke-static {v2}, Lb2/a;->b(Ljava/lang/String;)V

    :goto_0
    iget v2, v1, Le2/l0;->h:I

    iput v2, p0, Le2/t0;->t:I

    add-int/2addr v2, v0

    iput v2, v1, Le2/l0;->h:I

    goto :goto_1

    :cond_5
    iput v5, p0, Le2/t0;->t:I

    :cond_6
    :goto_1
    invoke-virtual {p0}, Le2/t0;->N()V

    return-void
.end method
