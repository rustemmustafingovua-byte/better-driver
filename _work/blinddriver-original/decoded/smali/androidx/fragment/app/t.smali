.class public final Landroidx/fragment/app/t;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/fragment/app/t;->l:I

    iput-object p2, p0, Landroidx/fragment/app/t;->m:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Landroidx/fragment/app/t;->l:I

    const/4 v1, 0x0

    const-string v2, "(this)"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-object v6, Lt8/z;->a:Lt8/z;

    iget-object p0, p0, Landroidx/fragment/app/t;->m:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    check-cast p0, Ly1/j0;

    iget-object v0, p0, Ly1/j0;->n:Lu9/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lu9/g;->j(Ljava/lang/Throwable;)Z

    :cond_0
    iput-object v3, p0, Ly1/j0;->n:Lu9/g;

    return-object v6

    :pswitch_0
    check-cast p1, Lr1/c0;

    check-cast p0, Lr1/c;

    invoke-virtual {p0, p1}, Lr1/c;->g(Lr1/c0;)V

    iget-object p0, p0, Lr1/c;->i:Li9/c;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v6

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, " @ "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lr9/k;->p0(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lq8/k;->b(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    cmpg-double p0, v0, p0

    if-gez p0, :cond_2

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_1

    :cond_3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    return-object p0

    :pswitch_2
    check-cast p1, Lo1/d;

    check-cast p0, Lp1/b;

    iget-object v0, p0, Lp1/b;->l:Lm1/g;

    iget-boolean v1, p0, Lp1/b;->n:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lp1/b;->w:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lo1/d;->Y()Lg5/m;

    move-result-object v1

    invoke-virtual {v1}, Lg5/m;->m()J

    move-result-wide v2

    invoke-virtual {v1}, Lg5/m;->h()Lm1/o;

    move-result-object v4

    invoke-interface {v4}, Lm1/o;->h()V

    :try_start_0
    iget-object v4, v1, Lg5/m;->m:Ljava/lang/Object;

    check-cast v4, Lm2/j;

    iget-object v4, v4, Lm2/j;->m:Ljava/lang/Object;

    check-cast v4, Lg5/m;

    invoke-virtual {v4}, Lg5/m;->h()Lm1/o;

    move-result-object v4

    invoke-interface {v4, v0}, Lm1/o;->c(Lm1/g;)V

    invoke-virtual {p0, p1}, Lp1/b;->c(Lo1/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2, v3}, Lm/a;->t(Lg5/m;J)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2, v3}, Lm/a;->t(Lg5/m;J)V

    throw p0

    :cond_4
    invoke-virtual {p0, p1}, Lp1/b;->c(Lo1/d;)V

    :goto_2
    return-object v6

    :pswitch_3
    check-cast p1, Ljava/util/List;

    check-cast p0, Lx/k0;

    invoke-virtual {p0}, Lx/k0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lm2/x;

    check-cast p0, Ljava/lang/String;

    sget-object v0, Lm2/v;->a:[Lp9/d;

    sget-object v0, Lm2/t;->a:Lm2/w;

    invoke-static {p0}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    return-object v6

    :pswitch_5
    check-cast p1, Lm2/x;

    check-cast p0, Lm2/h;

    iget p0, p0, Lm2/h;->a:I

    invoke-static {p1, p0}, Lm2/v;->c(Lm2/x;I)V

    return-object v6

    :pswitch_6
    check-cast p1, Lm1/f0;

    check-cast p0, Lm1/i0;

    iget v0, p0, Lm1/i0;->z:F

    invoke-virtual {p1, v0}, Lm1/f0;->i(F)V

    iget v0, p0, Lm1/i0;->A:F

    invoke-virtual {p1, v0}, Lm1/f0;->j(F)V

    iget v0, p0, Lm1/i0;->B:F

    invoke-virtual {p1, v0}, Lm1/f0;->c(F)V

    invoke-virtual {p1, v1}, Lm1/f0;->u(F)V

    iget v0, p0, Lm1/i0;->C:F

    invoke-virtual {p1, v0}, Lm1/f0;->k(F)V

    iget v0, p0, Lm1/i0;->D:F

    iget v1, p1, Lm1/f0;->t:F

    cmpg-float v1, v1, v0

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    iget v1, p1, Lm1/f0;->l:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p1, Lm1/f0;->l:I

    iput v0, p1, Lm1/f0;->t:F

    :goto_3
    iget v0, p0, Lm1/i0;->E:F

    iget v1, p1, Lm1/f0;->u:F

    cmpg-float v1, v1, v0

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    iget v1, p1, Lm1/f0;->l:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p1, Lm1/f0;->l:I

    iput v0, p1, Lm1/f0;->u:F

    :goto_4
    iget-wide v0, p0, Lm1/i0;->F:J

    invoke-virtual {p1, v0, v1}, Lm1/f0;->p(J)V

    iget-object v0, p0, Lm1/i0;->G:Lm1/h0;

    invoke-virtual {p1, v0}, Lm1/f0;->l(Lm1/h0;)V

    iget-boolean v0, p0, Lm1/i0;->H:Z

    invoke-virtual {p1, v0}, Lm1/f0;->f(Z)V

    iget-wide v0, p0, Lm1/i0;->I:J

    invoke-virtual {p1, v0, v1}, Lm1/f0;->e(J)V

    iget-wide v0, p0, Lm1/i0;->J:J

    invoke-virtual {p1, v0, v1}, Lm1/f0;->o(J)V

    iget v0, p0, Lm1/i0;->K:I

    iget v1, p1, Lm1/f0;->y:I

    if-ne v1, v0, :cond_7

    goto :goto_5

    :cond_7
    iget v1, p1, Lm1/f0;->l:I

    const v2, 0x8000

    or-int/2addr v1, v2

    iput v1, p1, Lm1/f0;->l:I

    iput v0, p1, Lm1/f0;->y:I

    :goto_5
    iget p0, p0, Lm1/i0;->L:I

    iget v0, p1, Lm1/f0;->C:I

    if-ne v0, p0, :cond_8

    goto :goto_6

    :cond_8
    iget v0, p1, Lm1/f0;->l:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p1, Lm1/f0;->l:I

    iput p0, p1, Lm1/f0;->C:I

    :goto_6
    return-object v6

    :pswitch_7
    check-cast p1, Ln/o;

    iget v0, p1, Ln/o;->b:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_9

    move v0, v1

    :cond_9
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v2

    if-lez v3, :cond_a

    move v0, v2

    :cond_a
    iget v3, p1, Ln/o;->c:F

    const/high16 v4, -0x41000000    # -0.5f

    cmpg-float v5, v3, v4

    if-gez v5, :cond_b

    move v3, v4

    :cond_b
    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v6, v3, v5

    if-lez v6, :cond_c

    move v3, v5

    :cond_c
    iget v6, p1, Ln/o;->d:F

    cmpg-float v7, v6, v4

    if-gez v7, :cond_d

    goto :goto_7

    :cond_d
    move v4, v6

    :goto_7
    cmpl-float v6, v4, v5

    if-lez v6, :cond_e

    goto :goto_8

    :cond_e
    move v5, v4

    :goto_8
    iget p1, p1, Ln/o;->a:F

    cmpg-float v4, p1, v1

    if-gez v4, :cond_f

    goto :goto_9

    :cond_f
    move v1, p1

    :goto_9
    cmpl-float p1, v1, v2

    if-lez p1, :cond_10

    goto :goto_a

    :cond_10
    move v2, v1

    :goto_a
    sget-object p1, Ln1/d;->x:Ln1/l;

    invoke-static {v0, v3, v5, v2, p1}, Lm1/v;->b(FFFFLn1/c;)J

    move-result-wide v0

    check-cast p0, Ln1/c;

    invoke-static {v0, v1, p0}, Lm1/p;->a(JLn1/c;)J

    move-result-wide p0

    new-instance v0, Lm1/p;

    invoke-direct {v0, p0, p1}, Lm1/p;-><init>(J)V

    return-object v0

    :pswitch_8
    check-cast p1, Ljava/lang/Throwable;

    if-eqz p1, :cond_11

    check-cast p0, Landroid/os/CancellationSignal;

    invoke-virtual {p0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_11
    return-object v6

    :pswitch_9
    check-cast p0, Lk/n0;

    if-ne p1, p0, :cond_12

    goto :goto_b

    :cond_12
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_b
    return-object v2

    :pswitch_a
    check-cast p0, Lk/i0;

    if-ne p1, p0, :cond_13

    goto :goto_c

    :cond_13
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_c
    return-object v2

    :pswitch_b
    check-cast p0, Lk/h0;

    if-ne p1, p0, :cond_14

    goto :goto_d

    :cond_14
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_d
    return-object v2

    :pswitch_c
    check-cast p1, Lm1/f0;

    check-cast p0, Lj1/n;

    sget v0, Lq/e;->d:F

    iget-object v1, p1, Lm1/f0;->A:Lb3/c;

    invoke-interface {v1}, Lb3/c;->a()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-virtual {p1, v1}, Lm1/f0;->k(F)V

    iget-object v0, p0, Lj1/n;->a:Lm1/h0;

    invoke-virtual {p1, v0}, Lm1/f0;->l(Lm1/h0;)V

    iget-boolean v0, p0, Lj1/n;->b:Z

    invoke-virtual {p1, v0}, Lm1/f0;->f(Z)V

    iget-wide v0, p0, Lj1/n;->c:J

    invoke-virtual {p1, v0, v1}, Lm1/f0;->e(J)V

    iget-wide v0, p0, Lj1/n;->d:J

    invoke-virtual {p1, v0, v1}, Lm1/f0;->o(J)V

    return-object v6

    :pswitch_d
    check-cast p1, Le2/j0;

    check-cast p0, Lp/o0;

    invoke-virtual {p0, p1}, Lp/o0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Le2/j0;->b()V

    return-object v6

    :pswitch_e
    check-cast p1, Li1/f;

    iget-object v0, p1, Lf1/q;->l:Lf1/q;

    iget-boolean v0, v0, Lf1/q;->y:Z

    if-nez v0, :cond_15

    sget-object p0, Le2/d2;->m:Le2/d2;

    goto :goto_f

    :cond_15
    iget-object v0, p1, Li1/f;->A:Li1/f;

    if-eqz v0, :cond_17

    check-cast p0, Lb0/l1;

    new-instance v1, Landroidx/fragment/app/t;

    const/16 v2, 0xe

    invoke-direct {v1, v2, p0}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroidx/fragment/app/t;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v2, Le2/d2;->l:Le2/d2;

    if-eq p0, v2, :cond_16

    goto :goto_e

    :cond_16
    invoke-static {v0, v1}, Le2/l;->B(Le2/e2;Li9/c;)V

    :cond_17
    :goto_e
    iput-object v3, p1, Li1/f;->A:Li1/f;

    iput-object v3, p1, Li1/f;->z:Li1/f;

    sget-object p0, Le2/d2;->l:Le2/d2;

    :goto_f
    return-object p0

    :pswitch_f
    check-cast p1, Ljava/lang/Throwable;

    check-cast p0, Lv7/a;

    invoke-interface {p0, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-object v6

    :pswitch_10
    check-cast p1, Lu2/n;

    iget-object v0, p1, Lu2/n;->b:Lk0/t;

    if-eqz v0, :cond_18

    invoke-virtual {p1, v0}, Lu2/n;->a(Lk0/t;)V

    iput-object v3, p1, Lu2/n;->b:Lk0/t;

    :cond_18
    check-cast p0, Lf2/v1;

    iget-object v0, p0, Lf2/v1;->d:Lt0/b;

    iget-object v1, v0, Lt0/b;->l:[Ljava/lang/Object;

    iget v2, v0, Lt0/b;->n:I

    :goto_10
    if-ge v5, v2, :cond_1a

    aget-object v3, v1, v5

    check-cast v3, Le2/g2;

    invoke-static {v3, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_11

    :cond_19
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_1a
    const/4 v5, -0x1

    :goto_11
    if-ltz v5, :cond_1b

    invoke-virtual {v0, v5}, Lt0/b;->k(I)Ljava/lang/Object;

    :cond_1b
    iget p1, v0, Lt0/b;->n:I

    if-nez p1, :cond_1c

    iget-object p0, p0, Lf2/v1;->b:Lc2/l0;

    invoke-virtual {p0}, Lc2/l0;->invoke()Ljava/lang/Object;

    :cond_1c
    return-object v6

    :pswitch_11
    check-cast p1, Lo1/d;

    check-cast p0, Lf2/r1;

    invoke-interface {p1}, Lo1/d;->Y()Lg5/m;

    move-result-object v0

    invoke-virtual {v0}, Lg5/m;->h()Lm1/o;

    move-result-object v0

    iget-object p0, p0, Lf2/r1;->o:Li9/e;

    if-eqz p0, :cond_1d

    invoke-interface {p1}, Lo1/d;->Y()Lg5/m;

    move-result-object p1

    iget-object p1, p1, Lg5/m;->n:Ljava/lang/Object;

    check-cast p1, Lp1/b;

    invoke-interface {p0, v0, p1}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    return-object v6

    :pswitch_12
    sget-object p1, Lf2/q1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1e

    check-cast p0, Lw9/e;

    invoke-interface {p0, v6}, Lw9/u;->l(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    return-object v6

    :pswitch_13
    check-cast p1, Lr0/g0;

    check-cast p0, Lf2/o1;

    new-instance p1, Lb0/u0;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, Lb0/u0;-><init>(ILjava/lang/Object;)V

    return-object p1

    :pswitch_14
    check-cast p1, Lm2/p;

    check-cast p0, Landroid/content/res/Resources;

    invoke-static {p1, p0}, Lf2/k0;->c(Lm2/p;Landroid/content/res/Resources;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p1, Lm2/p;

    check-cast p0, Lk/k;

    iget p1, p1, Lm2/p;->g:I

    invoke-virtual {p0, p1}, Lk/k;->a(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_16
    move-object v7, p1

    check-cast v7, Le2/m0;

    check-cast p0, Lf2/m;

    iget-object p0, p0, Lf2/m;->A:Lf2/y;

    invoke-virtual {p0}, Lf2/y;->getInsetsListener()Lc2/o;

    move-result-object p1

    iget-object p1, p1, Lc2/o;->r:Lr0/b1;

    invoke-virtual {p1}, Lr0/b1;->g()I

    move-result p1

    if-lez p1, :cond_22

    sget-object p1, Lc2/a2;->a:Lk/x;

    iput-boolean v4, v7, Le2/m0;->l:Z

    iget-object p1, v7, Le2/m0;->o:Le2/p0;

    invoke-virtual {p1}, Le2/p0;->z0()Lc2/u;

    move-result-object v0

    iget-wide v1, v7, Le2/m0;->m:J

    const-wide v3, 0x7fffffff7fffffffL

    invoke-static {v1, v2, v3, v4}, Lb3/j;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_1f

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lc2/u;->A(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Lr5/h1;->D(J)J

    move-result-wide v1

    iput-wide v1, v7, Le2/m0;->m:J

    invoke-interface {v0}, Lc2/u;->o()J

    move-result-wide v1

    iput-wide v1, v7, Le2/m0;->n:J

    :cond_1f
    invoke-virtual {p1}, Le2/p0;->B0()Le2/g0;

    move-result-object p1

    iget-object p1, p1, Le2/g0;->S:Le2/l0;

    invoke-virtual {p1}, Le2/l0;->b()V

    invoke-interface {v0}, Lc2/u;->o()J

    move-result-wide v0

    invoke-virtual {p0}, Lf2/y;->getInsetsListener()Lc2/o;

    move-result-object p1

    iget-object p1, p1, Lc2/o;->q:Lk/m0;

    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v11, v2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v12, v0

    sget-object v0, Lc2/a2;->b:[Lc2/y1;

    array-length v1, v0

    move v2, v5

    :goto_12
    if-ge v2, v1, :cond_21

    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast v4, Lc2/b2;

    check-cast v3, Lc2/z1;

    iget-object v8, v3, Lc2/z1;->c:Lc2/n;

    iget-wide v9, v4, Lc2/b2;->h:J

    invoke-static/range {v7 .. v12}, Lc2/a2;->a(Le2/m0;Lc2/n;JII)V

    iget-object v8, v4, Lc2/b2;->b:Lr0/e1;

    invoke-virtual {v8}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_20

    iget-object v8, v4, Lc2/b2;->f:Lc2/n;

    iget-wide v9, v4, Lc2/b2;->j:J

    invoke-static/range {v7 .. v12}, Lc2/a2;->a(Le2/m0;Lc2/n;JII)V

    iget-object v8, v4, Lc2/b2;->g:Lc2/n;

    iget-wide v9, v4, Lc2/b2;->k:J

    invoke-static/range {v7 .. v12}, Lc2/a2;->a(Le2/m0;Lc2/n;JII)V

    :cond_20
    iget-object v8, v3, Lc2/z1;->d:Lc2/n;

    iget-wide v9, v4, Lc2/b2;->i:J

    invoke-static/range {v7 .. v12}, Lc2/a2;->a(Le2/m0;Lc2/n;JII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_21
    invoke-virtual {p0}, Lf2/y;->getInsetsListener()Lc2/o;

    move-result-object p1

    iget-object p1, p1, Lc2/o;->s:Lk/h0;

    invoke-virtual {p1}, Lk/h0;->i()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lf2/y;->getInsetsListener()Lc2/o;

    move-result-object p0

    iget-object p0, p0, Lc2/o;->t:Ld1/v;

    iget-object v0, p1, Lk/h0;->a:[Ljava/lang/Object;

    iget p1, p1, Lk/h0;->b:I

    :goto_13
    if-ge v5, p1, :cond_22

    aget-object v1, v0, v5

    check-cast v1, Lr0/u0;

    invoke-virtual {p0, v5}, Ld1/v;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc2/n;

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v2}, Lc2/n;->b()Lc2/m;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {v7, v3, v4}, Le2/m0;->b(Lc2/m;F)V

    invoke-virtual {v2}, Lc2/n;->d()Lc2/m;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v7, v3, v4}, Le2/m0;->b(Lc2/m;F)V

    invoke-virtual {v2}, Lc2/n;->c()Lc2/m;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    invoke-virtual {v7, v3, v4}, Le2/m0;->b(Lc2/m;F)V

    invoke-virtual {v2}, Lc2/n;->a()Lc2/m;

    move-result-object v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-virtual {v7, v2, v1}, Le2/m0;->b(Lc2/m;F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_22
    return-object v6

    :pswitch_17
    check-cast p1, Lk1/b0;

    check-cast p0, Lk1/f;

    iget p0, p0, Lk1/f;->a:I

    invoke-virtual {p1, p0}, Lk1/b0;->T0(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p1, Ll1/c;

    check-cast p0, Le3/q;

    iget-boolean v0, p0, Lf1/q;->y:Z

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lf1/q;->A0()Lu9/t;

    move-result-object v0

    new-instance v1, Landroidx/lifecycle/i0;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p1, v3, v2}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    const/4 p0, 0x3

    invoke-static {v0, v3, v3, v1, p0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :cond_23
    return-object v6

    :pswitch_19
    check-cast p1, Lb3/c;

    check-cast p0, Le2/g0;

    invoke-virtual {p0, p1}, Le2/g0;->b0(Lb3/c;)V

    return-object v6

    :pswitch_1a
    check-cast p1, Lf1/p;

    check-cast p0, Lt0/b;

    invoke-virtual {p0, p1}, Lt0/b;->b(Ljava/lang/Object;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_1b
    check-cast p1, Le2/a;

    check-cast p0, Le2/h0;

    invoke-interface {p1}, Le2/a;->y()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_24

    goto/16 :goto_17

    :cond_24
    invoke-interface {p1}, Le2/a;->b()Le2/h0;

    move-result-object v0

    iget-boolean v0, v0, Le2/h0;->b:Z

    if-eqz v0, :cond_25

    invoke-interface {p1}, Le2/a;->N()V

    :cond_25
    invoke-interface {p1}, Le2/a;->b()Le2/h0;

    move-result-object v0

    iget-object v0, v0, Le2/h0;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc2/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p1}, Le2/a;->f()Le2/s;

    move-result-object v3

    invoke-static {p0, v2, v1, v3}, Le2/h0;->a(Le2/h0;Lc2/a;ILe2/h1;)V

    goto :goto_14

    :cond_26
    invoke-interface {p1}, Le2/a;->f()Le2/s;

    move-result-object p1

    iget-object p1, p1, Le2/h1;->B:Le2/h1;

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    :goto_15
    iget-object v0, p0, Le2/h0;->a:Lc2/f1;

    invoke-interface {v0}, Le2/a;->f()Le2/s;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p0, p1}, Le2/h0;->b(Le2/h1;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc2/a;

    invoke-virtual {p0, p1, v1}, Le2/h0;->c(Le2/h1;Lc2/a;)I

    move-result v2

    invoke-static {p0, v1, v2, p1}, Le2/h0;->a(Le2/h0;Lc2/a;ILe2/h1;)V

    goto :goto_16

    :cond_27
    iget-object p1, p1, Le2/h1;->B:Le2/h1;

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    goto :goto_15

    :cond_28
    :goto_17
    return-object v6

    :pswitch_1c
    check-cast p1, Ljava/util/Map$Entry;

    const-string v0, "entry"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/Collection;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    sget-object v0, Lq3/q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lu8/m;->a0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
