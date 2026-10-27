.class public final Le2/x0;
.super Lc2/f1;
.source "SourceFile"

# interfaces
.implements Lc2/q0;
.implements Le2/a;
.implements Le2/z0;


# instance fields
.field public A:F

.field public B:Z

.field public C:Ljava/lang/Object;

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public final I:Le2/h0;

.field public final J:Lt0/b;

.field public K:Z

.field public L:Z

.field public M:J

.field public final N:Le2/w0;

.field public final O:Le2/w0;

.field public P:F

.field public Q:Z

.field public R:Li9/c;

.field public S:J

.field public T:F

.field public final U:Le2/w0;

.field public V:Z

.field public final q:Le2/l0;

.field public r:Z

.field public s:I

.field public t:I

.field public u:Z

.field public v:Z

.field public w:Le2/e0;

.field public x:Z

.field public y:J

.field public z:Li9/c;


# direct methods
.method public constructor <init>(Le2/l0;)V
    .locals 4

    invoke-direct {p0}, Lc2/f1;-><init>()V

    iput-object p1, p0, Le2/x0;->q:Le2/l0;

    const p1, 0x7fffffff

    iput p1, p0, Le2/x0;->s:I

    iput p1, p0, Le2/x0;->t:I

    sget-object p1, Le2/e0;->n:Le2/e0;

    iput-object p1, p0, Le2/x0;->w:Le2/e0;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Le2/x0;->y:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Le2/x0;->B:Z

    new-instance v2, Le2/h0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Le2/h0;-><init>(Le2/a;I)V

    iput-object v2, p0, Le2/x0;->I:Le2/h0;

    new-instance v2, Lt0/b;

    const/16 v3, 0x10

    new-array v3, v3, [Le2/x0;

    invoke-direct {v2, v3}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iput-object v2, p0, Le2/x0;->J:Lt0/b;

    iput-boolean p1, p0, Le2/x0;->K:Z

    const/4 p1, 0x0

    const/16 v2, 0xf

    invoke-static {p1, p1, v2}, Lb3/b;->b(III)J

    move-result-wide v2

    iput-wide v2, p0, Le2/x0;->M:J

    new-instance p1, Le2/w0;

    const/4 v2, 0x1

    invoke-direct {p1, p0, v2}, Le2/w0;-><init>(Le2/x0;I)V

    iput-object p1, p0, Le2/x0;->N:Le2/w0;

    new-instance p1, Le2/w0;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Le2/w0;-><init>(Le2/x0;I)V

    iput-object p1, p0, Le2/x0;->O:Le2/w0;

    iput-wide v0, p0, Le2/x0;->S:J

    new-instance p1, Le2/w0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Le2/w0;-><init>(Le2/x0;I)V

    iput-object p1, p0, Le2/x0;->U:Le2/w0;

    return-void
.end method


# virtual methods
.method public final A0(JFLi9/c;)V
    .locals 5

    iget-object v0, p0, Le2/x0;->q:Le2/l0;

    iget-object v1, v0, Le2/l0;->a:Le2/g0;

    iget-object v2, v0, Le2/l0;->a:Le2/g0;

    iget-boolean v1, v1, Le2/g0;->c0:Z

    if-eqz v1, :cond_0

    const-string v1, "place is called on a deactivated node"

    invoke-static {v1}, Lb2/a;->a(Ljava/lang/String;)V

    :cond_0
    sget-object v1, Le2/c0;->n:Le2/c0;

    iput-object v1, v0, Le2/l0;->d:Le2/c0;

    iput-wide p1, p0, Le2/x0;->y:J

    iput p3, p0, Le2/x0;->A:F

    iput-object p4, p0, Le2/x0;->z:Li9/c;

    const/4 v1, 0x0

    iput-boolean v1, p0, Le2/x0;->Q:Z

    invoke-static {v2}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object v3

    iget-boolean v4, p0, Le2/x0;->G:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Le2/x0;->D:Z

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Le2/l0;->a()Le2/h1;

    move-result-object v1

    iget-wide v2, v1, Lc2/f1;->p:J

    invoke-static {p1, p2, v2, v3}, Lb3/j;->c(JJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2, p3, p4}, Le2/h1;->k1(JFLi9/c;)V

    invoke-virtual {p0}, Le2/x0;->z0()V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Le2/x0;->I:Le2/h0;

    iput-boolean v1, v4, Le2/h0;->g:Z

    invoke-virtual {v0, v1}, Le2/l0;->f(Z)V

    iput-object p4, p0, Le2/x0;->R:Li9/c;

    iput-wide p1, p0, Le2/x0;->S:J

    iput p3, p0, Le2/x0;->T:F

    check-cast v3, Lf2/y;

    invoke-virtual {v3}, Lf2/y;->getSnapshotObserver()Le2/s1;

    move-result-object p1

    iget-object p2, p1, Le2/s1;->f:Le2/d;

    iget-object p1, p1, Le2/s1;->a:Ld1/b0;

    iget-object p3, p0, Le2/x0;->U:Le2/w0;

    invoke-virtual {p1, v2, p2, p3}, Ld1/b0;->c(Ljava/lang/Object;Li9/c;Li9/a;)V

    :goto_0
    sget-object p1, Le2/c0;->p:Le2/c0;

    iput-object p1, v0, Le2/l0;->d:Le2/c0;

    invoke-virtual {v0}, Le2/l0;->a()Le2/h1;

    move-result-object p1

    iget-boolean p1, p1, Le2/p0;->v:Z

    if-eqz p1, :cond_3

    iget-boolean p1, v0, Le2/l0;->k:Z

    if-nez p1, :cond_2

    iget-boolean p1, v0, Le2/l0;->j:Z

    if-eqz p1, :cond_3

    :cond_2
    invoke-virtual {p0}, Le2/x0;->requestLayout()V

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Le2/x0;->v:Z

    return-void
.end method

.method public final B0(J)Z
    .locals 10

    iget-object v0, p0, Le2/x0;->q:Le2/l0;

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

    goto/16 :goto_7

    :cond_0
    :goto_0
    invoke-static {v2}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object v3

    invoke-virtual {v2}, Le2/g0;->v()Le2/g0;

    move-result-object v4

    iget-boolean v5, v2, Le2/g0;->Q:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_2

    if-eqz v4, :cond_1

    iget-boolean v4, v4, Le2/g0;->Q:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v7

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v6

    :goto_2
    iput-boolean v4, v2, Le2/g0;->Q:Z

    invoke-virtual {v2}, Le2/g0;->r()Z

    move-result v4

    if-nez v4, :cond_4

    iget-wide v4, p0, Lc2/f1;->o:J

    invoke-static {v4, v5, p1, p2}, Lb3/a;->b(JJ)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    check-cast v3, Lf2/y;

    invoke-virtual {v3, v2, v7}, Lf2/y;->l(Le2/g0;Z)V

    invoke-virtual {v2}, Le2/g0;->Z()V

    return v7

    :cond_4
    :goto_3
    iget-object v3, p0, Le2/x0;->I:Le2/h0;

    iput-boolean v7, v3, Le2/h0;->f:Z

    invoke-virtual {v2}, Le2/g0;->z()Lt0/b;

    move-result-object v3

    iget-object v4, v3, Lt0/b;->l:[Ljava/lang/Object;

    iget v3, v3, Lt0/b;->n:I

    move v5, v7

    :goto_4
    if-ge v5, v3, :cond_5

    aget-object v8, v4, v5

    check-cast v8, Le2/g0;

    iget-object v8, v8, Le2/g0;->S:Le2/l0;

    iget-object v8, v8, Le2/l0;->p:Le2/x0;

    iget-object v8, v8, Le2/x0;->I:Le2/h0;

    iput-boolean v7, v8, Le2/h0;->c:Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    iput-boolean v6, p0, Le2/x0;->u:Z

    invoke-virtual {v0}, Le2/l0;->a()Le2/h1;

    move-result-object v3

    iget-wide v3, v3, Lc2/f1;->n:J

    invoke-virtual {p0, p1, p2}, Lc2/f1;->r0(J)V

    iget-object v5, v0, Le2/l0;->d:Le2/c0;

    sget-object v8, Le2/c0;->p:Le2/c0;

    if-ne v5, v8, :cond_6

    goto :goto_5

    :cond_6
    const-string v5, "layout state is not idle before measure starts"

    invoke-static {v5}, Lb2/a;->b(Ljava/lang/String;)V

    :goto_5
    iput-wide p1, p0, Le2/x0;->M:J

    sget-object p1, Le2/c0;->l:Le2/c0;

    iput-object p1, v0, Le2/l0;->d:Le2/c0;

    iput-boolean v7, p0, Le2/x0;->F:Z

    invoke-static {v2}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object p2

    check-cast p2, Lf2/y;

    invoke-virtual {p2}, Lf2/y;->getSnapshotObserver()Le2/s1;

    move-result-object p2

    iget-object v5, p0, Le2/x0;->N:Le2/w0;

    iget-object v9, p2, Le2/s1;->c:Le2/d;

    iget-object p2, p2, Le2/s1;->a:Ld1/b0;

    invoke-virtual {p2, v2, v9, v5}, Ld1/b0;->c(Ljava/lang/Object;Li9/c;Li9/a;)V

    iget-object p2, v0, Le2/l0;->d:Le2/c0;

    if-ne p2, p1, :cond_7

    iput-boolean v6, p0, Le2/x0;->G:Z

    iput-boolean v6, p0, Le2/x0;->H:Z

    iput-object v8, v0, Le2/l0;->d:Le2/c0;

    :cond_7
    invoke-virtual {v0}, Le2/l0;->a()Le2/h1;

    move-result-object p1

    iget-wide p1, p1, Lc2/f1;->n:J

    invoke-static {p1, p2, v3, v4}, Lb3/l;->a(JJ)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v0}, Le2/l0;->a()Le2/h1;

    move-result-object p1

    iget p1, p1, Lc2/f1;->l:I

    iget p2, p0, Lc2/f1;->l:I

    if-ne p1, p2, :cond_9

    invoke-virtual {v0}, Le2/l0;->a()Le2/h1;

    move-result-object p1

    iget p1, p1, Lc2/f1;->m:I

    iget p2, p0, Lc2/f1;->m:I

    if-eq p1, p2, :cond_8

    goto :goto_6

    :cond_8
    move v6, v7

    :cond_9
    :goto_6
    invoke-virtual {v0}, Le2/l0;->a()Le2/h1;

    move-result-object p1

    iget p1, p1, Lc2/f1;->l:I

    invoke-virtual {v0}, Le2/l0;->a()Le2/h1;

    move-result-object p2

    iget p2, p2, Lc2/f1;->m:I

    int-to-long v2, p1

    const/16 p1, 0x20

    shl-long/2addr v2, p1

    int-to-long p1, p2

    const-wide v4, 0xffffffffL

    and-long/2addr p1, v4

    or-long/2addr p1, v2

    invoke-virtual {p0, p1, p2}, Lc2/f1;->q0(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v6

    :goto_7
    invoke-virtual {v1, p0}, Le2/g0;->a0(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final C(J)Lc2/f1;
    .locals 4

    iget-object v0, p0, Le2/x0;->q:Le2/l0;

    iget-object v1, v0, Le2/l0;->a:Le2/g0;

    iget-object v2, v1, Le2/g0;->O:Le2/e0;

    sget-object v3, Le2/e0;->n:Le2/e0;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Le2/g0;->e()V

    :cond_0
    iget-object v1, v0, Le2/l0;->a:Le2/g0;

    invoke-static {v1}, Le2/l;->q(Le2/g0;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Le2/l0;->q:Le2/t0;

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    iput-object v3, v1, Le2/t0;->u:Le2/e0;

    invoke-virtual {v1, p1, p2}, Le2/t0;->C(J)Lc2/f1;

    :cond_1
    iget-object v0, v0, Le2/l0;->a:Le2/g0;

    invoke-virtual {v0}, Le2/g0;->v()Le2/g0;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, v1, Le2/g0;->S:Le2/l0;

    iget-object v2, p0, Le2/x0;->w:Le2/e0;

    if-eq v2, v3, :cond_3

    iget-boolean v0, v0, Le2/g0;->Q:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "measure() may not be called multiple times on the same Measurable. If you want to get the content size of the Measurable before calculating the final constraints, please use methods like minIntrinsicWidth()/maxIntrinsicWidth() and minIntrinsicHeight()/maxIntrinsicHeight()"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object v0, v1, Le2/l0;->d:Le2/c0;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    sget-object v0, Le2/e0;->m:Le2/e0;

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Measurable could be only measured from the parent\'s measure or layout block. Parents state is "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v1, Le2/l0;->d:Le2/c0;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    sget-object v0, Le2/e0;->l:Le2/e0;

    :goto_1
    iput-object v0, p0, Le2/x0;->w:Le2/e0;

    goto :goto_2

    :cond_6
    iput-object v3, p0, Le2/x0;->w:Le2/e0;

    :goto_2
    invoke-virtual {p0, p1, p2}, Le2/x0;->B0(J)Z

    return-object p0
.end method

.method public final F(Landroidx/fragment/app/t;)V
    .locals 3

    iget-object p0, p0, Le2/x0;->q:Le2/l0;

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

    iget-object v2, v2, Le2/l0;->p:Le2/x0;

    invoke-virtual {p1, v2}, Landroidx/fragment/app/t;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final G()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Le2/x0;->C:Ljava/lang/Object;

    return-object p0
.end method

.method public final J(Z)V
    .locals 2

    iget-object v0, p0, Le2/x0;->q:Le2/l0;

    invoke-virtual {v0}, Le2/l0;->a()Le2/h1;

    move-result-object v1

    iget-boolean v1, v1, Le2/p0;->t:Z

    if-eq p1, v1, :cond_0

    invoke-virtual {v0}, Le2/l0;->a()Le2/h1;

    move-result-object v0

    iput-boolean p1, v0, Le2/p0;->t:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Le2/x0;->V:Z

    :cond_0
    return-void
.end method

.method public final N()V
    .locals 10

    const/4 v0, 0x1

    iput-boolean v0, p0, Le2/x0;->L:Z

    iget-object v1, p0, Le2/x0;->I:Le2/h0;

    invoke-virtual {v1}, Le2/h0;->h()V

    iget-boolean v2, p0, Le2/x0;->G:Z

    iget-object v3, p0, Le2/x0;->q:Le2/l0;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v3, Le2/l0;->a:Le2/g0;

    invoke-virtual {v2}, Le2/g0;->z()Lt0/b;

    move-result-object v2

    iget-object v5, v2, Lt0/b;->l:[Ljava/lang/Object;

    iget v2, v2, Lt0/b;->n:I

    move v6, v4

    :goto_0
    if-ge v6, v2, :cond_1

    aget-object v7, v5, v6

    check-cast v7, Le2/g0;

    invoke-virtual {v7}, Le2/g0;->r()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Le2/g0;->s()Le2/e0;

    move-result-object v8

    sget-object v9, Le2/e0;->l:Le2/e0;

    if-ne v8, v9, :cond_0

    invoke-static {v7}, Le2/g0;->Q(Le2/g0;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v3, Le2/l0;->a:Le2/g0;

    const/4 v8, 0x7

    invoke-static {v7, v4, v8}, Le2/g0;->X(Le2/g0;ZI)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Le2/x0;->H:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Le2/x0;->x:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Le2/x0;->f()Le2/s;

    move-result-object v2

    iget-boolean v2, v2, Le2/p0;->v:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Le2/x0;->G:Z

    if-eqz v2, :cond_3

    :cond_2
    iput-boolean v4, p0, Le2/x0;->G:Z

    iget-object v2, v3, Le2/l0;->d:Le2/c0;

    sget-object v5, Le2/c0;->n:Le2/c0;

    iput-object v5, v3, Le2/l0;->d:Le2/c0;

    invoke-virtual {v3, v4}, Le2/l0;->g(Z)V

    iget-object v5, v3, Le2/l0;->a:Le2/g0;

    invoke-static {v5}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object v6

    check-cast v6, Lf2/y;

    invoke-virtual {v6}, Lf2/y;->getSnapshotObserver()Le2/s1;

    move-result-object v6

    iget-object v7, v6, Le2/s1;->e:Le2/d;

    iget-object v6, v6, Le2/s1;->a:Ld1/b0;

    iget-object v8, p0, Le2/x0;->O:Le2/w0;

    invoke-virtual {v6, v5, v7, v8}, Ld1/b0;->c(Ljava/lang/Object;Li9/c;Li9/a;)V

    iput-object v2, v3, Le2/l0;->d:Le2/c0;

    iput-boolean v4, p0, Le2/x0;->H:Z

    :cond_3
    iget-boolean v2, v1, Le2/h0;->d:Z

    if-eqz v2, :cond_4

    iput-boolean v0, v1, Le2/h0;->e:Z

    :cond_4
    iget-boolean v0, v1, Le2/h0;->b:Z

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Le2/h0;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Le2/h0;->g()V

    :cond_5
    iput-boolean v4, p0, Le2/x0;->L:Z

    return-void
.end method

.method public final W()V
    .locals 2

    iget-object p0, p0, Le2/x0;->q:Le2/l0;

    iget-object p0, p0, Le2/l0;->a:Le2/g0;

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-static {p0, v0, v1}, Le2/g0;->X(Le2/g0;ZI)V

    return-void
.end method

.method public final b()Le2/h0;
    .locals 0

    iget-object p0, p0, Le2/x0;->I:Le2/h0;

    return-object p0
.end method

.method public final b0(I)I
    .locals 2

    iget-object v0, p0, Le2/x0;->q:Le2/l0;

    iget-object v1, v0, Le2/l0;->a:Le2/g0;

    invoke-static {v1}, Le2/l;->q(Le2/g0;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, v0, Le2/l0;->q:Le2/t0;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Le2/t0;->b0(I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Le2/x0;->x0()V

    invoke-virtual {v0}, Le2/l0;->a()Le2/h1;

    move-result-object p0

    invoke-interface {p0, p1}, Lc2/q0;->b0(I)I

    move-result p0

    return p0
.end method

.method public final c(I)I
    .locals 2

    iget-object v0, p0, Le2/x0;->q:Le2/l0;

    iget-object v1, v0, Le2/l0;->a:Le2/g0;

    invoke-static {v1}, Le2/l;->q(Le2/g0;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, v0, Le2/l0;->q:Le2/t0;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Le2/t0;->c(I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Le2/x0;->x0()V

    invoke-virtual {v0}, Le2/l0;->a()Le2/h1;

    move-result-object p0

    invoke-interface {p0, p1}, Lc2/q0;->c(I)I

    move-result p0

    return p0
.end method

.method public final d0(Lc2/a;)I
    .locals 6

    iget-object v0, p0, Le2/x0;->q:Le2/l0;

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
    sget-object v3, Le2/c0;->l:Le2/c0;

    iget-object v4, p0, Le2/x0;->I:Le2/h0;

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
    sget-object v1, Le2/c0;->n:Le2/c0;

    if-ne v2, v1, :cond_3

    iput-boolean v5, v4, Le2/h0;->d:Z

    :cond_3
    :goto_1
    iput-boolean v5, p0, Le2/x0;->x:Z

    invoke-virtual {v0}, Le2/l0;->a()Le2/h1;

    move-result-object v0

    invoke-virtual {v0, p1}, Le2/p0;->d0(Lc2/a;)I

    move-result p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Le2/x0;->x:Z

    return p1
.end method

.method public final f()Le2/s;
    .locals 0

    iget-object p0, p0, Le2/x0;->q:Le2/l0;

    iget-object p0, p0, Le2/l0;->a:Le2/g0;

    iget-object p0, p0, Le2/g0;->R:Le2/c1;

    iget-object p0, p0, Le2/c1;->c:Le2/s;

    return-object p0
.end method

.method public final f0()I
    .locals 0

    iget-object p0, p0, Le2/x0;->q:Le2/l0;

    invoke-virtual {p0}, Le2/l0;->a()Le2/h1;

    move-result-object p0

    invoke-virtual {p0}, Lc2/f1;->f0()I

    move-result p0

    return p0
.end method

.method public final i()Le2/a;
    .locals 0

    iget-object p0, p0, Le2/x0;->q:Le2/l0;

    iget-object p0, p0, Le2/l0;->a:Le2/g0;

    invoke-virtual {p0}, Le2/g0;->v()Le2/g0;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Le2/g0;->S:Le2/l0;

    if-eqz p0, :cond_0

    iget-object p0, p0, Le2/l0;->p:Le2/x0;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final k0()I
    .locals 0

    iget-object p0, p0, Le2/x0;->q:Le2/l0;

    invoke-virtual {p0}, Le2/l0;->a()Le2/h1;

    move-result-object p0

    invoke-virtual {p0}, Lc2/f1;->k0()I

    move-result p0

    return p0
.end method

.method public final o0(JFLi9/c;)V
    .locals 8

    iget-object v0, p0, Le2/x0;->q:Le2/l0;

    iget-object v1, v0, Le2/l0;->a:Le2/g0;

    iget-object v2, v0, Le2/l0;->a:Le2/g0;

    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Le2/x0;->E:Z

    iget-wide v4, p0, Le2/x0;->y:J

    invoke-static {p1, p2, v4, v5}, Lb3/j;->a(JJ)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Le2/x0;->V:Z

    if-eqz v4, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    :goto_0
    iget-boolean v4, v0, Le2/l0;->k:Z

    if-nez v4, :cond_1

    iget-boolean v4, v0, Le2/l0;->j:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Le2/x0;->V:Z

    if-eqz v4, :cond_2

    :cond_1
    iput-boolean v3, p0, Le2/x0;->G:Z

    iput-boolean v5, p0, Le2/x0;->V:Z

    :cond_2
    invoke-virtual {p0}, Le2/x0;->w0()V

    :cond_3
    iget-object v4, v0, Le2/l0;->q:Le2/t0;

    if-eqz v4, :cond_5

    iget-object v6, v4, Le2/t0;->q:Le2/l0;

    iget-object v4, v4, Le2/t0;->B:Le2/r0;

    sget-object v7, Le2/r0;->n:Le2/r0;

    if-ne v4, v7, :cond_5

    iget-object v4, v6, Le2/l0;->a:Le2/g0;

    invoke-static {v4}, Le2/l;->q(Le2/g0;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    iput-boolean v3, v6, Le2/l0;->c:Z

    :cond_5
    :goto_1
    iget-object v4, v0, Le2/l0;->q:Le2/t0;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Le2/t0;->s0()Z

    move-result v4

    if-ne v4, v3, :cond_9

    invoke-virtual {v0}, Le2/l0;->a()Le2/h1;

    move-result-object v3

    iget-object v3, v3, Le2/h1;->B:Le2/h1;

    if-eqz v3, :cond_6

    iget-object v3, v3, Le2/p0;->w:Lc2/o0;

    if-nez v3, :cond_7

    :cond_6
    invoke-static {v2}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object v3

    check-cast v3, Lf2/y;

    invoke-virtual {v3}, Lf2/y;->getPlacementScope()Lc2/e1;

    move-result-object v3

    :cond_7
    iget-object v4, v0, Le2/l0;->q:Le2/t0;

    invoke-static {v4}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v2}, Le2/g0;->v()Le2/g0;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, v2, Le2/g0;->S:Le2/l0;

    iput v5, v2, Le2/l0;->h:I

    :cond_8
    const v2, 0x7fffffff

    iput v2, v4, Le2/t0;->t:I

    const/16 v2, 0x20

    shr-long v5, p1, v2

    long-to-int v2, v5

    const-wide v5, 0xffffffffL

    and-long/2addr v5, p1

    long-to-int v5, v5

    invoke-static {v3, v4, v2, v5}, Lc2/e1;->j(Lc2/e1;Lc2/f1;II)V

    :cond_9
    iget-object v0, v0, Le2/l0;->q:Le2/t0;

    if-eqz v0, :cond_a

    iget-boolean v0, v0, Le2/t0;->w:Z

    if-nez v0, :cond_a

    const-string v0, "Error: Placement happened before lookahead."

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p0, p1, p2, p3, p4}, Le2/x0;->A0(JFLi9/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_2
    invoke-virtual {v1, p0}, Le2/g0;->a0(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final requestLayout()V
    .locals 1

    iget-object p0, p0, Le2/x0;->q:Le2/l0;

    iget-object p0, p0, Le2/l0;->a:Le2/g0;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Le2/g0;->W(Z)V

    return-void
.end method

.method public final s0()Ljava/util/List;
    .locals 9

    iget-object v0, p0, Le2/x0;->q:Le2/l0;

    iget-object v1, v0, Le2/l0;->a:Le2/g0;

    invoke-virtual {v1}, Le2/g0;->h0()V

    iget-boolean v1, p0, Le2/x0;->K:Z

    iget-object v2, p0, Le2/x0;->J:Lt0/b;

    if-nez v1, :cond_0

    invoke-virtual {v2}, Lt0/b;->f()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, v0, Le2/l0;->a:Le2/g0;

    invoke-virtual {v0}, Le2/g0;->z()Lt0/b;

    move-result-object v1

    iget-object v3, v1, Lt0/b;->l:[Ljava/lang/Object;

    iget v1, v1, Lt0/b;->n:I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_2

    aget-object v6, v3, v5

    check-cast v6, Le2/g0;

    iget v7, v2, Lt0/b;->n:I

    if-gt v7, v5, :cond_1

    iget-object v6, v6, Le2/g0;->S:Le2/l0;

    iget-object v6, v6, Le2/l0;->p:Le2/x0;

    invoke-virtual {v2, v6}, Lt0/b;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v6, v6, Le2/g0;->S:Le2/l0;

    iget-object v6, v6, Le2/l0;->p:Le2/x0;

    iget-object v7, v2, Lt0/b;->l:[Ljava/lang/Object;

    aget-object v8, v7, v5

    aput-object v6, v7, v5

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Le2/g0;->n()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lk/f0;

    iget-object v0, v0, Lk/f0;->m:Ljava/lang/Object;

    check-cast v0, Lt0/b;

    iget v0, v0, Lt0/b;->n:I

    iget v1, v2, Lt0/b;->n:I

    invoke-virtual {v2, v0, v1}, Lt0/b;->l(II)V

    iput-boolean v4, p0, Le2/x0;->K:Z

    invoke-virtual {v2}, Lt0/b;->f()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final t0()V
    .locals 5

    iget-boolean v0, p0, Le2/x0;->D:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Le2/x0;->D:Z

    iget-object p0, p0, Le2/x0;->q:Le2/l0;

    iget-object v2, p0, Le2/l0;->a:Le2/g0;

    iget-object v3, v2, Le2/g0;->R:Le2/c1;

    if-nez v0, :cond_1

    iget-object v0, v3, Le2/c1;->c:Le2/s;

    invoke-virtual {v0}, Le2/h1;->f1()V

    invoke-static {v2}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object v0

    check-cast v0, Lf2/y;

    invoke-virtual {v0}, Lf2/y;->getRectManager()Ln2/b;

    move-result-object v0

    iget-object p0, p0, Le2/l0;->a:Le2/g0;

    invoke-virtual {v0, p0, v1}, Ln2/b;->e(Le2/g0;Z)V

    invoke-virtual {v2}, Le2/g0;->r()Z

    move-result p0

    const/4 v0, 0x6

    if-eqz p0, :cond_0

    invoke-static {v2, v1, v0}, Le2/g0;->X(Le2/g0;ZI)V

    goto :goto_0

    :cond_0
    iget-object p0, v2, Le2/g0;->S:Le2/l0;

    iget-boolean p0, p0, Le2/l0;->e:Z

    if-eqz p0, :cond_1

    invoke-static {v2, v1, v0}, Le2/g0;->V(Le2/g0;ZI)V

    :cond_1
    :goto_0
    iget-object p0, v3, Le2/c1;->d:Le2/h1;

    iget-object v0, v3, Le2/c1;->c:Le2/s;

    iget-object v0, v0, Le2/h1;->A:Le2/h1;

    :goto_1
    invoke-static {p0, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p0, :cond_3

    iget-boolean v1, p0, Le2/h1;->V:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Le2/h1;->b1()V

    :cond_2
    iget-object p0, p0, Le2/h1;->A:Le2/h1;

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Le2/g0;->z()Lt0/b;

    move-result-object p0

    iget-object v0, p0, Lt0/b;->l:[Ljava/lang/Object;

    iget p0, p0, Lt0/b;->n:I

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p0, :cond_5

    aget-object v2, v0, v1

    check-cast v2, Le2/g0;

    invoke-virtual {v2}, Le2/g0;->w()I

    move-result v3

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_4

    iget-object v3, v2, Le2/g0;->S:Le2/l0;

    iget-object v3, v3, Le2/l0;->p:Le2/x0;

    invoke-virtual {v3}, Le2/x0;->t0()V

    invoke-static {v2}, Le2/g0;->Y(Le2/g0;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final u(I)I
    .locals 2

    iget-object v0, p0, Le2/x0;->q:Le2/l0;

    iget-object v1, v0, Le2/l0;->a:Le2/g0;

    invoke-static {v1}, Le2/l;->q(Le2/g0;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, v0, Le2/l0;->q:Le2/t0;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Le2/t0;->u(I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Le2/x0;->x0()V

    invoke-virtual {v0}, Le2/l0;->a()Le2/h1;

    move-result-object p0

    invoke-interface {p0, p1}, Lc2/q0;->u(I)I

    move-result p0

    return p0
.end method

.method public final v0()V
    .locals 4

    iget-boolean v0, p0, Le2/x0;->D:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Le2/x0;->D:Z

    iget-object p0, p0, Le2/x0;->q:Le2/l0;

    iget-object v1, p0, Le2/l0;->a:Le2/g0;

    iget-object p0, p0, Le2/l0;->a:Le2/g0;

    invoke-static {v1}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object v1

    check-cast v1, Lf2/y;

    invoke-virtual {v1}, Lf2/y;->getRectManager()Ln2/b;

    move-result-object v1

    invoke-virtual {v1, p0}, Ln2/b;->g(Le2/g0;)V

    iget-object v1, p0, Le2/g0;->R:Le2/c1;

    iget-object v2, v1, Le2/c1;->d:Le2/h1;

    iget-object v1, v1, Le2/c1;->c:Le2/s;

    iget-object v1, v1, Le2/h1;->A:Le2/h1;

    :goto_0
    invoke-static {v2, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Le2/h1;->h1()V

    invoke-virtual {v2}, Le2/h1;->m1()V

    iget-object v2, v2, Le2/h1;->A:Le2/h1;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Le2/g0;->z()Lt0/b;

    move-result-object p0

    iget-object v1, p0, Lt0/b;->l:[Ljava/lang/Object;

    iget p0, p0, Lt0/b;->n:I

    :goto_1
    if-ge v0, p0, :cond_1

    aget-object v2, v1, v0

    check-cast v2, Le2/g0;

    iget-object v2, v2, Le2/g0;->S:Le2/l0;

    iget-object v2, v2, Le2/l0;->p:Le2/x0;

    invoke-virtual {v2}, Le2/x0;->v0()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final w0()V
    .locals 7

    iget-object p0, p0, Le2/x0;->q:Le2/l0;

    iget v0, p0, Le2/l0;->l:I

    if-lez v0, :cond_2

    iget-object p0, p0, Le2/l0;->a:Le2/g0;

    invoke-virtual {p0}, Le2/g0;->z()Lt0/b;

    move-result-object p0

    iget-object v0, p0, Lt0/b;->l:[Ljava/lang/Object;

    iget p0, p0, Lt0/b;->n:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_2

    aget-object v3, v0, v2

    check-cast v3, Le2/g0;

    iget-object v4, v3, Le2/g0;->S:Le2/l0;

    iget-boolean v5, v4, Le2/l0;->j:Z

    iget-object v6, v4, Le2/l0;->p:Le2/x0;

    if-nez v5, :cond_0

    iget-boolean v4, v4, Le2/l0;->k:Z

    if-eqz v4, :cond_1

    :cond_0
    iget-boolean v4, v6, Le2/x0;->G:Z

    if-nez v4, :cond_1

    invoke-virtual {v3, v1}, Le2/g0;->W(Z)V

    :cond_1
    invoke-virtual {v6}, Le2/x0;->w0()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final x0()V
    .locals 3

    iget-object p0, p0, Le2/x0;->q:Le2/l0;

    iget-object v0, p0, Le2/l0;->a:Le2/g0;

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Le2/g0;->X(Le2/g0;ZI)V

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

    iget p0, p0, Le2/x0;->t:I

    return p0
.end method

.method public final z(I)I
    .locals 2

    iget-object v0, p0, Le2/x0;->q:Le2/l0;

    iget-object v1, v0, Le2/l0;->a:Le2/g0;

    invoke-static {v1}, Le2/l;->q(Le2/g0;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, v0, Le2/l0;->q:Le2/t0;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Le2/t0;->z(I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Le2/x0;->x0()V

    invoke-virtual {v0}, Le2/l0;->a()Le2/h1;

    move-result-object p0

    invoke-interface {p0, p1}, Lc2/q0;->z(I)I

    move-result p0

    return p0
.end method

.method public final z0()V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Le2/x0;->Q:Z

    iget-object v1, p0, Le2/x0;->q:Le2/l0;

    iget-object v2, v1, Le2/l0;->a:Le2/g0;

    invoke-virtual {v2}, Le2/g0;->v()Le2/g0;

    move-result-object v2

    invoke-virtual {p0}, Le2/x0;->f()Le2/s;

    move-result-object v3

    iget v3, v3, Le2/h1;->L:F

    iget-object v1, v1, Le2/l0;->a:Le2/g0;

    iget-object v4, v1, Le2/g0;->R:Le2/c1;

    iget-object v5, v4, Le2/c1;->d:Le2/h1;

    iget-object v4, v4, Le2/c1;->c:Le2/s;

    :goto_0
    if-eq v5, v4, :cond_0

    const-string v6, "null cannot be cast to non-null type androidx.compose.ui.node.LayoutModifierNodeCoordinator"

    invoke-static {v5, v6}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Le2/z;

    iget v6, v5, Le2/h1;->L:F

    add-float/2addr v3, v6

    iget-object v5, v5, Le2/h1;->A:Le2/h1;

    goto :goto_0

    :cond_0
    iget v4, p0, Le2/x0;->P:F

    cmpg-float v4, v3, v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iput v3, p0, Le2/x0;->P:F

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Le2/g0;->O()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Le2/g0;->C()V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Le2/x0;->f()Le2/s;

    move-result-object v3

    iget-boolean v3, v3, Le2/p0;->v:Z

    const/4 v4, 0x0

    if-nez v3, :cond_8

    iget-boolean v3, p0, Le2/x0;->D:Z

    if-eqz v3, :cond_4

    iget-object v5, p0, Le2/x0;->I:Le2/h0;

    invoke-virtual {v5}, Le2/h0;->d()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    invoke-virtual {p0}, Le2/x0;->t0()V

    :cond_5
    if-nez v3, :cond_7

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Le2/g0;->C()V

    :cond_6
    iget-boolean v1, p0, Le2/x0;->r:Z

    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    invoke-virtual {v2, v4}, Le2/g0;->W(Z)V

    goto :goto_2

    :cond_7
    iget-object v1, v1, Le2/g0;->R:Le2/c1;

    iget-object v1, v1, Le2/c1;->c:Le2/s;

    invoke-virtual {v1}, Le2/h1;->f1()V

    :cond_8
    :goto_2
    if-eqz v2, :cond_a

    iget-object v1, v2, Le2/g0;->S:Le2/l0;

    iget-boolean v2, p0, Le2/x0;->r:Z

    if-nez v2, :cond_b

    iget-object v2, v1, Le2/l0;->d:Le2/c0;

    sget-object v3, Le2/c0;->n:Le2/c0;

    if-ne v2, v3, :cond_b

    iget v2, p0, Le2/x0;->t:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_9

    goto :goto_3

    :cond_9
    const-string v2, "Place was called on a node which was placed already"

    invoke-static {v2}, Lb2/a;->b(Ljava/lang/String;)V

    :goto_3
    iget v2, v1, Le2/l0;->i:I

    iput v2, p0, Le2/x0;->t:I

    add-int/2addr v2, v0

    iput v2, v1, Le2/l0;->i:I

    goto :goto_4

    :cond_a
    iput v4, p0, Le2/x0;->t:I

    :cond_b
    :goto_4
    invoke-virtual {p0}, Le2/x0;->N()V

    return-void
.end method
