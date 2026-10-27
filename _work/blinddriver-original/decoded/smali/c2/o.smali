.class public final Lc2/o;
.super Lja/c;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lq3/f;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public n:Z

.field public o:I

.field public p:Lq3/x0;

.field public final q:Lk/m0;

.field public final r:Lr0/b1;

.field public final s:Lk/h0;

.field public final t:Ld1/v;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lja/c;-><init>(I)V

    new-instance v0, Lk/m0;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lk/m0;-><init>(I)V

    sget-object v1, Lc2/y1;->a:Lc2/x1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lc2/x1;->b:Lc2/z1;

    new-instance v2, Lc2/b2;

    const-string v3, "caption bar"

    invoke-direct {v2, v3}, Lc2/b2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lc2/x1;->c:Lc2/z1;

    new-instance v2, Lc2/b2;

    const-string v3, "display cutout"

    invoke-direct {v2, v3}, Lc2/b2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lc2/x1;->d:Lc2/z1;

    new-instance v2, Lc2/b2;

    const-string v3, "ime"

    invoke-direct {v2, v3}, Lc2/b2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lc2/x1;->e:Lc2/z1;

    new-instance v2, Lc2/b2;

    const-string v3, "mandatory system gestures"

    invoke-direct {v2, v3}, Lc2/b2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lc2/x1;->f:Lc2/z1;

    new-instance v2, Lc2/b2;

    const-string v3, "navigation bars"

    invoke-direct {v2, v3}, Lc2/b2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lc2/x1;->g:Lc2/z1;

    new-instance v2, Lc2/b2;

    const-string v3, "status bars"

    invoke-direct {v2, v3}, Lc2/b2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lc2/x1;->h:Lc2/z1;

    new-instance v2, Lc2/b2;

    const-string v3, "system gestures"

    invoke-direct {v2, v3}, Lc2/b2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lc2/x1;->i:Lc2/z1;

    new-instance v2, Lc2/b2;

    const-string v3, "tappable element"

    invoke-direct {v2, v3}, Lc2/b2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lc2/x1;->j:Lc2/z1;

    new-instance v2, Lc2/b2;

    const-string v3, "waterfall"

    invoke-direct {v2, v3}, Lc2/b2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lc2/o;->q:Lk/m0;

    new-instance v0, Lr0/b1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr0/b1;-><init>(I)V

    iput-object v0, p0, Lc2/o;->r:Lr0/b1;

    new-instance v0, Lk/h0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lk/h0;-><init>(I)V

    iput-object v0, p0, Lc2/o;->s:Lk/h0;

    new-instance v0, Ld1/v;

    invoke-direct {v0}, Ld1/v;-><init>()V

    iput-object v0, p0, Lc2/o;->t:Ld1/v;

    return-void
.end method


# virtual methods
.method public final a(Lq3/e0;)V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc2/o;->n:Z

    iget-object p1, p1, Lq3/e0;->a:Lq3/d0;

    invoke-virtual {p1}, Lq3/d0;->d()I

    move-result p1

    iget v1, p0, Lc2/o;->o:I

    not-int v2, p1

    and-int/2addr v1, v2

    iput v1, p0, Lc2/o;->o:I

    const/4 v1, 0x0

    iput-object v1, p0, Lc2/o;->p:Lq3/x0;

    sget-object v1, Lc2/a2;->a:Lk/x;

    invoke-virtual {v1, p1}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc2/y1;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lc2/o;->q:Lk/m0;

    invoke-virtual {v1, p1}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast p1, Lc2/b2;

    iget-object v1, p1, Lc2/b2;->c:Lr0/a1;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lr0/a1;->h(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v3, p1, Lc2/b2;->e:Lr0/a1;

    invoke-virtual {v3, v1}, Lr0/a1;->h(F)V

    const-wide/16 v3, 0x0

    iget-object v1, p1, Lc2/b2;->d:Lr0/c1;

    invoke-virtual {v1, v3, v4}, Lr0/c1;->g(J)V

    iget-object v1, p1, Lc2/b2;->c:Lr0/a1;

    invoke-virtual {v1, v2}, Lr0/a1;->h(F)V

    iget-object v1, p1, Lc2/b2;->b:Lr0/e1;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    const-wide/16 v1, -0x1

    iput-wide v1, p1, Lc2/b2;->j:J

    iput-wide v1, p1, Lc2/b2;->k:J

    iget-object p0, p0, Lc2/o;->r:Lr0/b1;

    invoke-virtual {p0}, Lr0/b1;->g()I

    move-result p1

    const/4 v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lr0/b1;->h(I)V

    sget-object p0, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object p1, Ld1/p;->j:Ld1/b;

    iget-object p1, p1, Ld1/c;->h:Lk/n0;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lk/n0;->h()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v1, :cond_0

    move v0, v1

    :cond_0
    monitor-exit p0

    if-eqz v0, :cond_1

    invoke-static {}, Ld1/p;->a()V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    return-void
.end method

.method public final b(Lq3/e0;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc2/o;->n:Z

    return-void
.end method

.method public final c(Landroid/view/View;Lq3/x0;)Lq3/x0;
    .locals 2

    iget-boolean v0, p0, Lc2/o;->n:Z

    if-eqz v0, :cond_0

    iput-object p2, p0, Lc2/o;->p:Lq3/x0;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-object p2

    :cond_0
    iget p1, p0, Lc2/o;->o:I

    if-nez p1, :cond_1

    invoke-virtual {p0, p2}, Lc2/o;->f(Lq3/x0;)V

    :cond_1
    return-object p2
.end method

.method public final d(Lq3/x0;Ljava/util/List;)Lq3/x0;
    .locals 6

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq3/e0;

    iget-object v3, v2, Lq3/e0;->a:Lq3/d0;

    invoke-virtual {v3}, Lq3/d0;->d()I

    move-result v3

    sget-object v4, Lc2/a2;->a:Lk/x;

    invoke-virtual {v4, v3}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc2/y1;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lc2/o;->q:Lk/m0;

    invoke-virtual {v4, v3}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast v3, Lc2/b2;

    iget-object v4, v3, Lc2/b2;->b:Lr0/e1;

    invoke-virtual {v4}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v2, v2, Lq3/e0;->a:Lq3/d0;

    invoke-virtual {v2}, Lq3/d0;->c()F

    move-result v4

    iget-object v5, v3, Lc2/b2;->c:Lr0/a1;

    invoke-virtual {v5, v4}, Lr0/a1;->h(F)V

    invoke-virtual {v2}, Lq3/d0;->a()F

    move-result v4

    iget-object v5, v3, Lc2/b2;->e:Lr0/a1;

    invoke-virtual {v5, v4}, Lr0/a1;->h(F)V

    invoke-virtual {v2}, Lq3/d0;->b()J

    move-result-wide v4

    iget-object v2, v3, Lc2/b2;->d:Lr0/c1;

    invoke-virtual {v2, v4, v5}, Lr0/c1;->g(J)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lc2/o;->f(Lq3/x0;)V

    return-object p1
.end method

.method public final e(Lq3/e0;Lg5/l;)Lg5/l;
    .locals 8

    iget-object v0, p0, Lc2/o;->p:Lq3/x0;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lc2/o;->n:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lc2/o;->p:Lq3/x0;

    iget-object v2, p1, Lq3/e0;->a:Lq3/d0;

    invoke-virtual {v2}, Lq3/d0;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v2, p1, Lq3/e0;->a:Lq3/d0;

    invoke-virtual {v2}, Lq3/d0;->d()I

    move-result v2

    iget v3, p0, Lc2/o;->o:I

    or-int/2addr v3, v2

    iput v3, p0, Lc2/o;->o:I

    sget-object v3, Lc2/a2;->a:Lk/x;

    invoke-virtual {v3, v2}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc2/y1;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lc2/o;->q:Lk/m0;

    invoke-virtual {v4, v3}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast v3, Lc2/b2;

    iget-object v0, v0, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {v0, v2}, Lq3/u0;->i(I)Ll3/b;

    move-result-object v0

    iget v2, v0, Ll3/b;->a:I

    int-to-long v4, v2

    const/16 v2, 0x30

    shl-long/2addr v4, v2

    iget v2, v0, Ll3/b;->b:I

    int-to-long v6, v2

    const/16 v2, 0x20

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    iget v2, v0, Ll3/b;->c:I

    int-to-long v6, v2

    const/16 v2, 0x10

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    iget v0, v0, Ll3/b;->d:I

    int-to-long v6, v0

    or-long/2addr v4, v6

    iget-wide v6, v3, Lc2/b2;->h:J

    invoke-static {v4, v5, v6, v7}, Lc2/x;->g(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    iput-wide v6, v3, Lc2/b2;->j:J

    iput-wide v4, v3, Lc2/b2;->k:J

    iget-object v0, v3, Lc2/b2;->b:Lr0/e1;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object p1, p1, Lq3/e0;->a:Lq3/d0;

    invoke-virtual {p1}, Lq3/d0;->c()F

    move-result v0

    iget-object v2, v3, Lc2/b2;->c:Lr0/a1;

    invoke-virtual {v2, v0}, Lr0/a1;->h(F)V

    invoke-virtual {p1}, Lq3/d0;->a()F

    move-result v0

    iget-object v2, v3, Lc2/b2;->e:Lr0/a1;

    invoke-virtual {v2, v0}, Lr0/a1;->h(F)V

    invoke-virtual {p1}, Lq3/d0;->b()J

    move-result-wide v4

    iget-object p1, v3, Lc2/b2;->d:Lr0/c1;

    invoke-virtual {p1, v4, v5}, Lr0/c1;->g(J)V

    iget-object p0, p0, Lc2/o;->r:Lr0/b1;

    invoke-virtual {p0}, Lr0/b1;->g()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lr0/b1;->h(I)V

    sget-object p0, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object p1, Ld1/p;->j:Ld1/b;

    iget-object p1, p1, Ld1/c;->h:Lk/n0;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lk/n0;->h()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    move v1, v0

    :cond_0
    monitor-exit p0

    if-eqz v1, :cond_1

    invoke-static {}, Ld1/p;->a()V

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    return-object p2
.end method

.method public final f(Lq3/x0;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lc2/a2;->a:Lk/x;

    iget-object v3, v2, Lk/k;->b:[I

    iget-object v4, v2, Lk/k;->c:[Ljava/lang/Object;

    iget-object v2, v2, Lk/k;->a:[J

    array-length v5, v2

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_6

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x10

    const/16 v17, 0x20

    :goto_0
    aget-wide v6, v2, v13

    const/16 v18, 0x1

    not-long v11, v6

    const/16 v19, 0x7

    shl-long v11, v11, v19

    and-long/2addr v11, v6

    const-wide v19, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v11, v11, v19

    cmp-long v11, v11, v19

    if-eqz v11, :cond_5

    sub-int v11, v13, v5

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    const/4 v8, 0x0

    const/16 v19, 0x30

    :goto_1
    if-ge v8, v11, :cond_4

    const-wide/16 v20, 0xff

    and-long v20, v6, v20

    const-wide/16 v22, 0x80

    cmp-long v20, v20, v22

    if-gez v20, :cond_3

    shl-int/lit8 v20, v13, 0x3

    add-int v20, v20, v8

    aget v12, v3, v20

    aget-object v20, v4, v20

    move-object/from16 v9, v20

    check-cast v9, Lc2/y1;

    iget-object v10, v1, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {v10, v12}, Lq3/u0;->i(I)Ll3/b;

    move-result-object v10

    move-object/from16 v20, v2

    iget v2, v10, Ll3/b;->a:I

    move-object/from16 v24, v3

    int-to-long v2, v2

    shl-long v2, v2, v19

    move-wide/from16 v25, v2

    iget v2, v10, Ll3/b;->b:I

    int-to-long v2, v2

    shl-long v2, v2, v17

    or-long v2, v25, v2

    move-wide/from16 v25, v2

    iget v2, v10, Ll3/b;->c:I

    int-to-long v2, v2

    shl-long v2, v2, v16

    or-long v2, v25, v2

    iget v10, v10, Ll3/b;->d:I

    move-wide/from16 v25, v2

    int-to-long v2, v10

    or-long v2, v25, v2

    iget-object v10, v0, Lc2/o;->q:Lk/m0;

    invoke-virtual {v10, v9}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast v9, Lc2/b2;

    move-wide/from16 v25, v6

    iget-wide v6, v9, Lc2/b2;->h:J

    invoke-static {v2, v3, v6, v7}, Lc2/x;->g(JJ)Z

    move-result v6

    if-nez v6, :cond_0

    iput-wide v2, v9, Lc2/b2;->h:J

    const-wide/16 v6, 0x0

    invoke-static {v2, v3, v6, v7}, Lc2/x;->g(JJ)Z

    move-result v2

    move/from16 v14, v18

    if-nez v2, :cond_0

    move v15, v14

    :cond_0
    const/16 v2, 0x8

    if-eq v12, v2, :cond_1

    iget-object v2, v1, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {v2, v12}, Lq3/u0;->j(I)Ll3/b;

    move-result-object v2

    iget v3, v2, Ll3/b;->a:I

    int-to-long v6, v3

    shl-long v6, v6, v19

    iget v3, v2, Ll3/b;->b:I

    move-object v10, v4

    int-to-long v3, v3

    shl-long v3, v3, v17

    or-long/2addr v3, v6

    iget v6, v2, Ll3/b;->c:I

    int-to-long v6, v6

    shl-long v6, v6, v16

    or-long/2addr v3, v6

    iget v2, v2, Ll3/b;->d:I

    int-to-long v6, v2

    or-long v2, v3, v6

    iget-wide v6, v9, Lc2/b2;->i:J

    invoke-static {v6, v7, v2, v3}, Lc2/x;->g(JJ)Z

    move-result v4

    if-nez v4, :cond_2

    iput-wide v2, v9, Lc2/b2;->i:J

    const-wide/16 v6, 0x0

    invoke-static {v2, v3, v6, v7}, Lc2/x;->g(JJ)Z

    move-result v2

    move/from16 v14, v18

    if-nez v2, :cond_2

    move v15, v14

    goto :goto_2

    :cond_1
    move-object v10, v4

    :cond_2
    :goto_2
    iget-object v2, v1, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {v2, v12}, Lq3/u0;->u(I)Z

    move-result v2

    iget-object v3, v9, Lc2/b2;->a:Lr0/e1;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v2}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    const/16 v2, 0x8

    goto :goto_3

    :cond_3
    move-object/from16 v20, v2

    move-object/from16 v24, v3

    move-object v10, v4

    move-wide/from16 v25, v6

    move v2, v12

    :goto_3
    shr-long v6, v25, v2

    add-int/lit8 v8, v8, 0x1

    move v12, v2

    move-object v4, v10

    move-object/from16 v2, v20

    move-object/from16 v3, v24

    goto/16 :goto_1

    :cond_4
    move-object/from16 v20, v2

    move-object/from16 v24, v3

    move-object v10, v4

    move v2, v12

    if-ne v11, v2, :cond_7

    goto :goto_4

    :cond_5
    move-object/from16 v20, v2

    move-object/from16 v24, v3

    move-object v10, v4

    const/16 v19, 0x30

    :goto_4
    if-eq v13, v5, :cond_7

    add-int/lit8 v13, v13, 0x1

    move-object v4, v10

    move-object/from16 v2, v20

    move-object/from16 v3, v24

    goto/16 :goto_0

    :cond_6
    const/16 v16, 0x10

    const/16 v17, 0x20

    const/16 v18, 0x1

    const/16 v19, 0x30

    const/4 v14, 0x0

    const/4 v15, 0x0

    :cond_7
    iget-object v1, v1, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {v1}, Lq3/u0;->h()Lq3/c;

    move-result-object v1

    if-nez v1, :cond_8

    const-wide/16 v6, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {v1}, Lq3/c;->a()Ll3/b;

    move-result-object v2

    iget v3, v2, Ll3/b;->a:I

    int-to-long v3, v3

    shl-long v3, v3, v19

    iget v5, v2, Ll3/b;->b:I

    int-to-long v5, v5

    shl-long v5, v5, v17

    or-long/2addr v3, v5

    iget v5, v2, Ll3/b;->c:I

    int-to-long v5, v5

    shl-long v5, v5, v16

    or-long/2addr v3, v5

    iget v2, v2, Ll3/b;->d:I

    int-to-long v5, v2

    or-long v6, v3, v5

    :goto_5
    iget-object v2, v0, Lc2/o;->q:Lk/m0;

    sget-object v3, Lc2/y1;->a:Lc2/x1;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lc2/x1;->j:Lc2/z1;

    invoke-virtual {v2, v3}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast v2, Lc2/b2;

    const-wide/16 v3, 0x0

    invoke-static {v6, v7, v3, v4}, Lc2/x;->g(JJ)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    iget-object v8, v2, Lc2/b2;->a:Lr0/e1;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v5}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-wide v8, v2, Lc2/b2;->h:J

    invoke-static {v8, v9, v6, v7}, Lc2/x;->g(JJ)Z

    move-result v5

    if-nez v5, :cond_9

    iput-wide v6, v2, Lc2/b2;->h:J

    iput-wide v6, v2, Lc2/b2;->i:J

    invoke-static {v6, v7, v3, v4}, Lc2/x;->g(JJ)Z

    move-result v2

    move/from16 v14, v18

    if-nez v2, :cond_9

    move v15, v14

    :cond_9
    if-nez v1, :cond_a

    iget-object v1, v0, Lc2/o;->s:Lk/h0;

    iget v2, v1, Lk/h0;->b:I

    if-lez v2, :cond_f

    invoke-virtual {v1}, Lk/h0;->d()V

    iget-object v1, v0, Lc2/o;->t:Ld1/v;

    invoke-virtual {v1}, Ld1/v;->clear()V

    move/from16 v14, v18

    goto/16 :goto_9

    :cond_a
    iget-object v1, v1, Lq3/c;->a:Landroid/view/DisplayCutout;

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Lc2/o;->s:Lk/h0;

    iget v4, v3, Lk/h0;->b:I

    if-ge v2, v4, :cond_b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v4, v0, Lc2/o;->s:Lk/h0;

    iget v4, v4, Lk/h0;->b:I

    invoke-virtual {v3, v2, v4}, Lk/h0;->l(II)V

    iget-object v2, v0, Lc2/o;->t:Ld1/v;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v0, Lc2/o;->t:Ld1/v;

    invoke-virtual {v4}, Ld1/v;->size()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ld1/v;->c(II)V

    move/from16 v14, v18

    goto :goto_7

    :cond_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Lc2/o;->s:Lk/h0;

    iget v3, v3, Lk/h0;->b:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_c

    iget-object v4, v0, Lc2/o;->s:Lk/h0;

    iget v5, v4, Lk/h0;->b:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v5

    invoke-virtual {v4, v5}, Lk/h0;->a(Ljava/lang/Object;)V

    iget-object v4, v0, Lc2/o;->t:Ld1/v;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "display cutout rect "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lc2/o;->s:Lk/h0;

    iget v6, v6, Lk/h0;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lc2/n;

    invoke-direct {v6, v5}, Lc2/n;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ld1/v;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move/from16 v14, v18

    goto :goto_6

    :cond_c
    :goto_7
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_e

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget-object v5, v0, Lc2/o;->s:Lk/h0;

    invoke-virtual {v5, v3}, Lk/h0;->f(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr0/u0;

    invoke-interface {v5}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-interface {v5, v4}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    move/from16 v14, v18

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_e
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    move/from16 v15, v18

    :cond_f
    :goto_9
    if-nez v15, :cond_10

    iget-object v1, v0, Lc2/o;->r:Lr0/b1;

    invoke-virtual {v1}, Lr0/b1;->g()I

    move-result v1

    if-eqz v1, :cond_12

    :cond_10
    if-eqz v14, :cond_12

    iget-object v0, v0, Lc2/o;->r:Lr0/b1;

    invoke-virtual {v0}, Lr0/b1;->g()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lr0/b1;->h(I)V

    sget-object v1, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ld1/p;->j:Ld1/b;

    iget-object v0, v0, Ld1/c;->h:Lk/n0;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lk/n0;->h()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v2, v18

    if-ne v0, v2, :cond_11

    move v11, v2

    goto :goto_a

    :cond_11
    const/4 v11, 0x0

    :goto_a
    monitor-exit v1

    if-eqz v11, :cond_12

    invoke-static {}, Ld1/p;->a()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_12
    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    sget-object v0, Lq3/q;->a:Ljava/util/WeakHashMap;

    invoke-static {p1, p0}, Lq3/m;->b(Landroid/view/View;Lq3/f;)V

    invoke-static {p1, p0}, Lq3/q;->d(Landroid/view/View;Lja/c;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, p0

    :goto_1
    sget-object p0, Lq3/q;->a:Ljava/util/WeakHashMap;

    invoke-static {p1, v1}, Lq3/m;->b(Landroid/view/View;Lq3/f;)V

    invoke-static {p1, v1}, Lq3/q;->d(Landroid/view/View;Lja/c;)V

    return-void
.end method

.method public final run()V
    .locals 1

    iget-boolean v0, p0, Lc2/o;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lc2/o;->o:I

    iput-boolean v0, p0, Lc2/o;->n:Z

    iget-object v0, p0, Lc2/o;->p:Lq3/x0;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lc2/o;->f(Lq3/x0;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lc2/o;->p:Lq3/x0;

    :cond_0
    return-void
.end method
