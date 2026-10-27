.class public final Ld5/a;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Ld5/a;->l:I

    iput-object p2, p0, Ld5/a;->m:Ljava/lang/Object;

    iput-object p3, p0, Ld5/a;->n:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    iget v0, p0, Ld5/a;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ld5/a;->m:Ljava/lang/Object;

    check-cast v0, Ly1/d;

    iget-object p0, p0, Ld5/a;->n:Ljava/lang/Object;

    check-cast p0, Lf1/q;

    invoke-virtual {v0, p0}, Ly1/d;->d(Lf1/q;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Ld5/a;->m:Ljava/lang/Object;

    check-cast v0, Lj9/y;

    iget-object p0, p0, Ld5/a;->n:Ljava/lang/Object;

    check-cast p0, Lk1/b0;

    invoke-virtual {p0}, Lk1/b0;->O0()Lk1/s;

    move-result-object p0

    iput-object p0, v0, Lj9/y;->m:Ljava/lang/Object;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    iget-object v0, p0, Ld5/a;->m:Ljava/lang/Object;

    check-cast v0, Li9/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll1/c;

    if-nez v0, :cond_3

    :cond_0
    iget-object p0, p0, Ld5/a;->n:Ljava/lang/Object;

    check-cast p0, Le2/h1;

    invoke-virtual {p0}, Le2/h1;->U0()Lf1/q;

    move-result-object v0

    iget-boolean v0, v0, Lf1/q;->y:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_2

    iget-wide v0, p0, Lc2/f1;->n:J

    invoke-static {v0, v1}, Ly4/s;->E(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Lr5/u0;->c(JJ)Ll1/c;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :cond_3
    :goto_1
    return-object v0

    :pswitch_2
    iget-object v0, p0, Ld5/a;->m:Ljava/lang/Object;

    check-cast v0, Lj1/b;

    iget-object v0, v0, Lj1/b;->B:Li9/c;

    iget-object p0, p0, Ld5/a;->n:Ljava/lang/Object;

    check-cast p0, Lj1/c;

    invoke-interface {v0, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_3
    iget-object v0, p0, Ld5/a;->m:Ljava/lang/Object;

    check-cast v0, Ly4/q;

    iget-object v1, v0, Ly4/q;->n:Landroidx/work/impl/WorkDatabase;

    const-string v2, "workManagerImpl.workDatabase"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ld5/a;->n:Ljava/lang/Object;

    check-cast p0, Ljava/util/UUID;

    new-instance v2, Lb/d;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v0, p0}, Lb/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/work/impl/WorkDatabase;->o(Ljava/lang/Runnable;)V

    iget-object p0, v0, Ly4/q;->m:Lx4/a;

    iget-object v1, v0, Ly4/q;->n:Landroidx/work/impl/WorkDatabase;

    iget-object v0, v0, Ly4/q;->p:Ljava/util/List;

    invoke-static {p0, v1, v0}, Ly4/j;->b(Lx4/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_4
    iget-object v0, p0, Ld5/a;->n:Ljava/lang/Object;

    check-cast v0, Lf2/e0;

    iget-object p0, p0, Ld5/a;->m:Ljava/lang/Object;

    check-cast p0, Lf2/i2;

    iget-object v1, p0, Lf2/i2;->p:Lm2/i;

    iget-object v2, p0, Lf2/i2;->q:Lm2/i;

    iget-object v3, p0, Lf2/i2;->n:Ljava/lang/Float;

    iget-object v4, p0, Lf2/i2;->o:Ljava/lang/Float;

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    iget-object v6, v1, Lm2/i;->a:Li9/a;

    invoke-interface {v6}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v6, v3

    goto :goto_2

    :cond_4
    move v6, v5

    :goto_2
    if-eqz v2, :cond_5

    if-eqz v4, :cond_5

    iget-object v3, v2, Lm2/i;->a:Li9/a;

    invoke-interface {v3}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v3, v4

    goto :goto_3

    :cond_5
    move v3, v5

    :goto_3
    cmpg-float v4, v6, v5

    if-nez v4, :cond_6

    cmpg-float v3, v3, v5

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    iget v3, p0, Lf2/i2;->l:I

    invoke-virtual {v0, v3}, Lf2/e0;->t(I)I

    move-result v3

    invoke-virtual {v0}, Lf2/e0;->l()Lk/k;

    move-result-object v4

    iget v5, v0, Lf2/e0;->w:I

    invoke-virtual {v4, v5}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm2/q;

    if-eqz v4, :cond_7

    :try_start_0
    iget-object v5, v0, Lf2/e0;->y:Lr3/g;

    if-eqz v5, :cond_7

    invoke-virtual {v0, v4}, Lf2/e0;->d(Lm2/q;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, v5, Lr3/g;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    invoke-virtual {v0}, Lf2/e0;->l()Lk/k;

    move-result-object v4

    iget v5, v0, Lf2/e0;->x:I

    invoke-virtual {v4, v5}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm2/q;

    if-eqz v4, :cond_8

    :try_start_1
    iget-object v5, v0, Lf2/e0;->z:Lr3/g;

    if-eqz v5, :cond_8

    invoke-virtual {v0, v4}, Lf2/e0;->d(Lm2/q;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, v5, Lr3/g;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_8
    iget-object v4, v0, Lf2/e0;->o:Lf2/y;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    invoke-virtual {v0}, Lf2/e0;->l()Lk/k;

    move-result-object v4

    invoke-virtual {v4, v3}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm2/q;

    if-eqz v4, :cond_b

    iget-object v4, v4, Lm2/q;->a:Lm2/p;

    if-eqz v4, :cond_b

    iget-object v4, v4, Lm2/p;->c:Le2/g0;

    if-eqz v4, :cond_b

    if-eqz v1, :cond_9

    iget-object v5, v0, Lf2/e0;->B:Lk/x;

    invoke-virtual {v5, v3, v1}, Lk/x;->h(ILjava/lang/Object;)V

    :cond_9
    if-eqz v2, :cond_a

    iget-object v5, v0, Lf2/e0;->C:Lk/x;

    invoke-virtual {v5, v3, v2}, Lk/x;->h(ILjava/lang/Object;)V

    :cond_a
    invoke-virtual {v0, v4}, Lf2/e0;->p(Le2/g0;)V

    :cond_b
    :goto_4
    if-eqz v1, :cond_c

    iget-object v0, v1, Lm2/i;->a:Li9/a;

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iput-object v0, p0, Lf2/i2;->n:Ljava/lang/Float;

    :cond_c
    if-eqz v2, :cond_d

    iget-object v0, v2, Lm2/i;->a:Li9/a;

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iput-object v0, p0, Lf2/i2;->o:Ljava/lang/Float;

    :cond_d
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_5
    iget-object v0, p0, Ld5/a;->m:Ljava/lang/Object;

    check-cast v0, Lf2/y;

    iget-object p0, p0, Ld5/a;->n:Ljava/lang/Object;

    check-cast p0, Landroid/view/MotionEvent;

    invoke-static {p0, v0}, Lf2/y;->g(Landroid/view/MotionEvent;Lf2/y;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_6
    iget-object v0, p0, Ld5/a;->m:Ljava/lang/Object;

    check-cast v0, Lf2/y;

    iget-object p0, p0, Ld5/a;->n:Ljava/lang/Object;

    check-cast p0, Landroid/view/KeyEvent;

    invoke-static {v0, p0}, Lf2/y;->h(Lf2/y;Landroid/view/KeyEvent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_7
    iget-object v0, p0, Ld5/a;->m:Ljava/lang/Object;

    check-cast v0, Lj9/y;

    iget-object p0, p0, Ld5/a;->n:Ljava/lang/Object;

    check-cast p0, Le3/w;

    sget-object v1, Lc2/d1;->a:Lr0/a0;

    invoke-static {p0, v1}, Le2/l;->h(Le2/i;Lr0/m1;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lj9/y;->m:Ljava/lang/Object;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_8
    iget-object v0, p0, Ld5/a;->m:Ljava/lang/Object;

    check-cast v0, Li9/c;

    sget-object v1, Le2/h1;->X:Lm1/f0;

    invoke-interface {v0, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Ld5/a;->n:Ljava/lang/Object;

    check-cast p0, Le2/h1;

    iget-object v0, p0, Le2/h1;->O:Lm1/h0;

    iget-object v2, v1, Lm1/f0;->w:Lm1/h0;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_e

    move v0, v4

    goto :goto_5

    :cond_e
    move v0, v3

    :goto_5
    iget-boolean v5, p0, Le2/h1;->P:Z

    iget-boolean v6, v1, Lm1/f0;->x:Z

    if-eq v5, v6, :cond_f

    move v3, v4

    :cond_f
    if-nez v0, :cond_10

    if-eqz v3, :cond_12

    :cond_10
    iput-object v2, p0, Le2/h1;->O:Lm1/h0;

    iput-boolean v6, p0, Le2/h1;->P:Z

    iget-boolean v2, p0, Le2/h1;->Q:Z

    if-eqz v2, :cond_12

    if-nez v3, :cond_11

    if-eqz v6, :cond_12

    if-eqz v0, :cond_12

    :cond_11
    iget-object v0, p0, Le2/h1;->z:Le2/g0;

    invoke-virtual {v0}, Le2/g0;->F()V

    :cond_12
    iput-boolean v4, p0, Le2/h1;->Q:Z

    iget-object p0, v1, Lm1/f0;->w:Lm1/h0;

    iget-wide v2, v1, Lm1/f0;->z:J

    iget-object v0, v1, Lm1/f0;->B:Lb3/m;

    iget-object v4, v1, Lm1/f0;->A:Lb3/c;

    invoke-interface {p0, v2, v3, v0, v4}, Lm1/h0;->a(JLb3/m;Lb3/c;)Lm1/v;

    move-result-object p0

    iput-object p0, v1, Lm1/f0;->D:Lm1/v;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_9
    iget-object v0, p0, Ld5/a;->m:Ljava/lang/Object;

    check-cast v0, Le2/g0;

    iget-object v0, v0, Le2/g0;->R:Le2/c1;

    iget-object p0, p0, Ld5/a;->n:Ljava/lang/Object;

    check-cast p0, Lj9/y;

    iget-object v1, v0, Le2/c1;->f:Lf1/q;

    iget v1, v1, Lf1/q;->o:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1d

    iget-object v0, v0, Le2/c1;->e:Le2/b2;

    :goto_6
    if-eqz v0, :cond_1d

    iget v1, v0, Lf1/q;->n:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1c

    const/4 v1, 0x0

    move-object v2, v0

    move-object v3, v1

    :goto_7
    if-eqz v2, :cond_1c

    instance-of v4, v2, Le2/z1;

    const/4 v5, 0x1

    if-eqz v4, :cond_15

    check-cast v2, Le2/z1;

    invoke-interface {v2}, Le2/z1;->G()Z

    move-result v4

    if-eqz v4, :cond_13

    new-instance v4, Lm2/m;

    invoke-direct {v4}, Lm2/m;-><init>()V

    iput-object v4, p0, Lj9/y;->m:Ljava/lang/Object;

    iput-boolean v5, v4, Lm2/m;->o:Z

    :cond_13
    invoke-interface {v2}, Le2/z1;->t0()Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, p0, Lj9/y;->m:Ljava/lang/Object;

    check-cast v4, Lm2/m;

    iput-boolean v5, v4, Lm2/m;->n:Z

    :cond_14
    iget-object v4, p0, Lj9/y;->m:Ljava/lang/Object;

    check-cast v4, Lm2/x;

    invoke-interface {v2, v4}, Le2/z1;->C(Lm2/x;)V

    goto :goto_a

    :cond_15
    iget v4, v2, Lf1/q;->n:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1b

    instance-of v4, v2, Le2/k;

    if-eqz v4, :cond_1b

    move-object v4, v2

    check-cast v4, Le2/k;

    iget-object v4, v4, Le2/k;->A:Lf1/q;

    const/4 v6, 0x0

    :goto_8
    if-eqz v4, :cond_1a

    iget v7, v4, Lf1/q;->n:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_19

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v5, :cond_16

    move-object v2, v4

    goto :goto_9

    :cond_16
    if-nez v3, :cond_17

    new-instance v3, Lt0/b;

    const/16 v7, 0x10

    new-array v7, v7, [Lf1/q;

    invoke-direct {v3, v7}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_17
    if-eqz v2, :cond_18

    invoke-virtual {v3, v2}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v2, v1

    :cond_18
    invoke-virtual {v3, v4}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_19
    :goto_9
    iget-object v4, v4, Lf1/q;->q:Lf1/q;

    goto :goto_8

    :cond_1a
    if-ne v6, v5, :cond_1b

    goto :goto_7

    :cond_1b
    :goto_a
    invoke-static {v3}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v2

    goto :goto_7

    :cond_1c
    iget-object v0, v0, Lf1/q;->p:Lf1/q;

    goto :goto_6

    :cond_1d
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_a
    iget-object v0, p0, Ld5/a;->m:Ljava/lang/Object;

    check-cast v0, Ld5/c;

    iget-object v0, v0, Ld5/c;->a:Le5/f;

    iget-object p0, p0, Ld5/a;->n:Ljava/lang/Object;

    check-cast p0, Ld5/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Le5/f;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v2, v0, Le5/f;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, p0}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    iget-object p0, v0, Le5/f;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1e

    invoke-virtual {v0}, Le5/f;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_b

    :catchall_0
    move-exception p0

    goto :goto_c

    :cond_1e
    :goto_b
    monitor-exit v1

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :goto_c
    monitor-exit v1

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
