.class public final synthetic Lp/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lp/o0;->l:I

    iput-object p2, p0, Lp/o0;->m:Ljava/lang/Object;

    iput-object p3, p0, Lp/o0;->n:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo0/a5;Ln/d1;Lr0/u0;)V
    .locals 0

    .line 2
    const/4 p1, 0x1

    iput p1, p0, Lp/o0;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lp/o0;->m:Ljava/lang/Object;

    iput-object p3, p0, Lp/o0;->n:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lp/o0;->l:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/16 v4, 0x20

    const-wide v5, 0xffffffffL

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lp/o0;->m:Ljava/lang/Object;

    check-cast v0, Lc1/f;

    iget-object p0, p0, Lp/o0;->n:Ljava/lang/Object;

    check-cast p0, Lc1/d;

    check-cast p1, Ljava/util/Map;

    new-instance v1, Lx/m0;

    invoke-direct {v1, v0, p1, p0}, Lx/m0;-><init>(Lc1/f;Ljava/util/Map;Lc1/d;)V

    return-object v1

    :pswitch_0
    iget-object v0, p0, Lp/o0;->m:Ljava/lang/Object;

    check-cast v0, Lx/m0;

    iget-object p0, p0, Lp/o0;->n:Ljava/lang/Object;

    check-cast p1, Lr0/g0;

    iget-object p1, v0, Lx/m0;->n:Lk/n0;

    invoke-virtual {p1, p0}, Lk/n0;->i(Ljava/lang/Object;)V

    new-instance p1, Lb0/q2;

    const/16 v1, 0xd

    invoke-direct {p1, v1, v0, p0}, Lb0/q2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :pswitch_1
    iget-object v0, p0, Lp/o0;->m:Ljava/lang/Object;

    check-cast v0, Lx/d;

    iget-object p0, p0, Lp/o0;->n:Ljava/lang/Object;

    check-cast p0, Lx/e;

    check-cast p1, Ln2/c;

    sget-object p1, Lt8/z;->a:Lt8/z;

    iget-object v1, v0, Lx/d;->z:Ln2/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ln2/d;->b()V

    :cond_0
    iput-object v3, v0, Lx/d;->z:Ln2/d;

    iget-object v0, p0, Lx/e;->b:Lu9/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lu9/c1;->O(Ljava/lang/Object;)Z

    :cond_1
    iput-object v3, p0, Lx/e;->b:Lu9/l;

    return-object p1

    :pswitch_2
    iget-object v0, p0, Lp/o0;->m:Ljava/lang/Object;

    check-cast v0, Lv9/d;

    iget-object p0, p0, Lp/o0;->n:Ljava/lang/Object;

    check-cast p0, Lb/d;

    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, v0, Lv9/d;->n:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_3
    iget-object v0, p0, Lp/o0;->m:Ljava/lang/Object;

    check-cast v0, Lu/k1;

    iget-object p0, p0, Lp/o0;->n:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    check-cast p1, Lr0/g0;

    invoke-virtual {v0, p0}, Lu/k1;->a(Landroid/view/View;)V

    new-instance p1, Lb0/q2;

    const/16 v1, 0xc

    invoke-direct {p1, v1, v0, p0}, Lb0/q2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :pswitch_4
    iget-object v0, p0, Lp/o0;->m:Ljava/lang/Object;

    check-cast v0, Lu/q0;

    iget-object p0, p0, Lp/o0;->n:Ljava/lang/Object;

    check-cast p0, Lc2/f1;

    check-cast p1, Lc2/e1;

    iget-boolean v1, v0, Lu/q0;->D:Z

    if-eqz v1, :cond_2

    iget v1, v0, Lu/q0;->z:F

    invoke-interface {p1, v1}, Lb3/c;->h0(F)I

    move-result v1

    iget v0, v0, Lu/q0;->A:F

    invoke-interface {p1, v0}, Lb3/c;->h0(F)I

    move-result v0

    invoke-static {p1, p0, v1, v0}, Lc2/e1;->l(Lc2/e1;Lc2/f1;II)V

    goto :goto_0

    :cond_2
    iget v1, v0, Lu/q0;->z:F

    invoke-interface {p1, v1}, Lb3/c;->h0(F)I

    move-result v1

    iget v0, v0, Lu/q0;->A:F

    invoke-interface {p1, v0}, Lb3/c;->h0(F)I

    move-result v0

    invoke-virtual {p1, p0, v1, v0, v7}, Lc2/e1;->i(Lc2/f1;IIF)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_5
    iget-object v0, p0, Lp/o0;->m:Ljava/lang/Object;

    check-cast v0, Lu/o0;

    iget-object p0, p0, Lp/o0;->n:Ljava/lang/Object;

    move-object v8, p0

    check-cast v8, Lc2/f1;

    move-object v7, p1

    check-cast v7, Lc2/e1;

    iget-object p0, v0, Lu/o0;->z:Li9/c;

    invoke-interface {p0, v7}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb3/j;

    iget-wide p0, p0, Lb3/j;->a:J

    iget-boolean v0, v0, Lu/o0;->A:Z

    if-eqz v0, :cond_3

    shr-long v0, p0, v4

    long-to-int v0, v0

    and-long/2addr p0, v5

    long-to-int p0, p0

    invoke-static {v7, v8, v0, p0}, Lc2/e1;->o(Lc2/e1;Lc2/f1;II)V

    goto :goto_1

    :cond_3
    shr-long v0, p0, v4

    long-to-int v9, v0

    and-long/2addr p0, v5

    long-to-int v10, p0

    const/4 v11, 0x0

    const/16 v12, 0xc

    invoke-static/range {v7 .. v12}, Lc2/e1;->p(Lc2/e1;Lc2/f1;IILi9/c;I)V

    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_6
    iget-object v0, p0, Lp/o0;->m:Ljava/lang/Object;

    check-cast v0, Lu/m0;

    iget-object p0, p0, Lp/o0;->n:Ljava/lang/Object;

    check-cast p0, Lc2/f1;

    check-cast p1, Lc2/e1;

    iget-boolean v1, v0, Lu/m0;->B:Z

    if-eqz v1, :cond_4

    iget v1, v0, Lu/m0;->z:F

    invoke-interface {p1, v1}, Lb3/c;->h0(F)I

    move-result v1

    iget v0, v0, Lu/m0;->A:F

    invoke-interface {p1, v0}, Lb3/c;->h0(F)I

    move-result v0

    invoke-static {p1, p0, v1, v0}, Lc2/e1;->l(Lc2/e1;Lc2/f1;II)V

    goto :goto_2

    :cond_4
    iget v1, v0, Lu/m0;->z:F

    invoke-interface {p1, v1}, Lb3/c;->h0(F)I

    move-result v1

    iget v0, v0, Lu/m0;->A:F

    invoke-interface {p1, v0}, Lb3/c;->h0(F)I

    move-result v0

    invoke-virtual {p1, p0, v1, v0, v7}, Lc2/e1;->i(Lc2/f1;IIF)V

    :goto_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_7
    iget-object v0, p0, Lp/o0;->m:Ljava/lang/Object;

    check-cast v0, Lr0/u1;

    iget-object p0, p0, Lp/o0;->n:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    check-cast p1, Ljava/lang/Throwable;

    iget-object v1, v0, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p0, :cond_6

    if-eqz p1, :cond_7

    :try_start_0
    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    move-object p1, v3

    :goto_3
    if-eqz p1, :cond_7

    invoke-static {p0, p1}, Lwa/h;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :cond_6
    move-object p0, v3

    :cond_7
    :goto_4
    iput-object p0, v0, Lr0/u1;->e:Ljava/lang/Throwable;

    iget-object p0, v0, Lr0/u1;->u:Lx9/l0;

    sget-object p1, Lr0/q1;->l:Lr0/q1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v3, p1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :goto_5
    monitor-exit v1

    throw p0

    :pswitch_8
    iget-object v0, p0, Lp/o0;->m:Ljava/lang/Object;

    check-cast v0, Lr0/x;

    iget-object p0, p0, Lp/o0;->n:Ljava/lang/Object;

    check-cast p0, Lk/n0;

    invoke-virtual {v0, p1}, Lr0/x;->A(Ljava/lang/Object;)V

    if-eqz p0, :cond_8

    invoke-virtual {p0, p1}, Lk/n0;->a(Ljava/lang/Object;)Z

    :cond_8
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_9
    iget-object v0, p0, Lp/o0;->m:Ljava/lang/Object;

    check-cast v0, Lr/a3;

    iget-object p0, p0, Lp/o0;->n:Ljava/lang/Object;

    check-cast p0, Li9/c;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    iget p1, v0, Lr/a3;->e:F

    iput v7, v0, Lr/a3;->e:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_a
    iget-object v0, p0, Lp/o0;->m:Ljava/lang/Object;

    check-cast v0, Lr/l2;

    iget-object p0, p0, Lp/o0;->n:Ljava/lang/Object;

    check-cast p0, Lr/n2;

    check-cast p1, Lr/t;

    iget-boolean v3, p1, Lr/t;->b:Z

    if-eqz v3, :cond_9

    move v1, v2

    :cond_9
    iget-wide v2, p1, Lr/t;->a:J

    iget-object p0, p0, Lr/n2;->d:Lr/m1;

    sget-object p1, Lr/m1;->m:Lr/m1;

    const/4 v4, 0x1

    if-ne p0, p1, :cond_a

    invoke-static {v2, v3, v7, v4}, Ll1/b;->a(JFI)J

    move-result-wide p0

    goto :goto_6

    :cond_a
    const/4 p0, 0x2

    invoke-static {v2, v3, v7, p0}, Ll1/b;->a(JFI)J

    move-result-wide p0

    :goto_6
    invoke-static {v1, p0, p1}, Ll1/b;->f(FJ)J

    move-result-wide p0

    invoke-virtual {v0, v4, p0, p1}, Lr/l2;->a(IJ)J

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_b
    iget-object v0, p0, Lp/o0;->m:Ljava/lang/Object;

    check-cast v0, Lo0/n4;

    iget-object p0, p0, Lp/o0;->n:Ljava/lang/Object;

    check-cast p0, Lr/s0;

    check-cast p1, Lr/t;

    iget-wide v7, p1, Lr/t;->a:J

    iget-boolean p1, p0, Lr/s0;->Y:Z

    if-eqz p1, :cond_b

    invoke-static {v2, v7, v8}, Ll1/b;->f(FJ)J

    move-result-wide v1

    goto :goto_7

    :cond_b
    invoke-static {v1, v7, v8}, Ll1/b;->f(FJ)J

    move-result-wide v1

    :goto_7
    iget-object p0, p0, Lr/s0;->U:Lr/m1;

    sget-object p1, Lr/r0;->a:Lr/q0;

    sget-object p1, Lr/m1;->l:Lr/m1;

    if-ne p0, p1, :cond_c

    and-long p0, v1, v5

    :goto_8
    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    goto :goto_9

    :cond_c
    shr-long p0, v1, v4

    goto :goto_8

    :goto_9
    iget-object p1, v0, Lo0/n4;->a:Lo0/o4;

    invoke-virtual {p1, p0}, Lo0/o4;->a(F)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_c
    iget-object v0, p0, Lp/o0;->m:Ljava/lang/Object;

    check-cast v0, Lr/a;

    iget-object p0, p0, Lp/o0;->n:Ljava/lang/Object;

    check-cast p0, Lr/g;

    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, v0, Lr/a;->a:Lt0/b;

    invoke-virtual {p1, p0}, Lt0/b;->j(Ljava/lang/Object;)Z

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_d
    iget-object v0, p0, Lp/o0;->m:Ljava/lang/Object;

    check-cast v0, Lm1/v;

    iget-object p0, p0, Lp/o0;->n:Ljava/lang/Object;

    check-cast p0, Lo0/y4;

    check-cast p1, Lo1/d;

    invoke-virtual {p0}, Lo0/y4;->a()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lm1/v;->l(Lo1/d;Lm1/v;J)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_e
    iget-object v0, p0, Lp/o0;->m:Ljava/lang/Object;

    check-cast v0, Lm1/h0;

    iget-object p0, p0, Lp/o0;->n:Ljava/lang/Object;

    check-cast p0, Lo0/y4;

    check-cast p1, Lj1/c;

    iget-object v1, p1, Lj1/c;->l:Lj1/a;

    invoke-interface {v1}, Lj1/a;->d()J

    move-result-wide v1

    iget-object v3, p1, Lj1/c;->l:Lj1/a;

    invoke-interface {v3}, Lj1/a;->getLayoutDirection()Lb3/m;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, p1}, Lm1/h0;->a(JLb3/m;Lb3/c;)Lm1/v;

    move-result-object v0

    new-instance v1, Lp/o0;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0, p0}, Lp/o0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Landroidx/fragment/app/t;

    const/16 v0, 0xf

    invoke-direct {p0, v0, v1}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p0}, Lj1/c;->b(Li9/c;)Lb0/l1;

    move-result-object p0

    return-object p0

    :pswitch_f
    iget-object v0, p0, Lp/o0;->m:Ljava/lang/Object;

    check-cast v0, Lr0/r2;

    iget-object p0, p0, Lp/o0;->n:Ljava/lang/Object;

    check-cast p0, Lr0/u0;

    check-cast p1, Ll1/e;

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget-wide v1, p1, Ll1/e;->a:J

    shr-long/2addr v1, v4

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    mul-float/2addr v1, v0

    iget-wide v2, p1, Ll1/e;->a:J

    and-long/2addr v2, v5

    long-to-int p1, v2

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    mul-float/2addr p1, v0

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll1/e;

    iget-wide v2, v0, Ll1/e;->a:J

    shr-long/2addr v2, v4

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_d

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll1/e;

    iget-wide v2, v0, Ll1/e;->a:J

    and-long/2addr v2, v5

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    cmpg-float v0, v0, p1

    if-nez v0, :cond_d

    goto :goto_a

    :cond_d
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v2, p1

    shl-long/2addr v0, v4

    and-long/2addr v2, v5

    or-long/2addr v0, v2

    new-instance p1, Ll1/e;

    invoke-direct {p1, v0, v1}, Ll1/e;-><init>(J)V

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :goto_a
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_10
    iget-object v0, p0, Lp/o0;->m:Ljava/lang/Object;

    check-cast v0, Ls/i;

    iget-object p0, p0, Lp/o0;->n:Ljava/lang/Object;

    check-cast p0, Ls/h;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p0}, Ls/i;->b(Ls/h;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
