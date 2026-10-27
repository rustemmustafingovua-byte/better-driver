.class public final Lp/m1;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/x;
.implements Le2/n;
.implements Lk1/g;


# instance fields
.field public A:F

.field public final B:Lr0/b1;

.field public final C:Lr0/b1;

.field public final D:Lr0/e1;

.field public E:Lu9/j1;

.field public F:Lp1/b;

.field public final G:Lr0/e1;

.field public final H:Lr0/e1;

.field public final I:Ln/c;

.field public final J:Lr0/d0;

.field public z:I


# direct methods
.method public constructor <init>(ILp/q;F)V
    .locals 0

    invoke-direct {p0}, Lf1/q;-><init>()V

    iput p1, p0, Lp/m1;->z:I

    iput p3, p0, Lp/m1;->A:F

    new-instance p1, Lr0/b1;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Lr0/b1;-><init>(I)V

    iput-object p1, p0, Lp/m1;->B:Lr0/b1;

    new-instance p1, Lr0/b1;

    invoke-direct {p1, p3}, Lr0/b1;-><init>(I)V

    iput-object p1, p0, Lp/m1;->C:Lr0/b1;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Lp/m1;->D:Lr0/e1;

    invoke-static {p2}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Lp/m1;->G:Lr0/e1;

    new-instance p1, Lp/j1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Lp/m1;->H:Lr0/e1;

    const/4 p1, 0x0

    invoke-static {p1}, Ln/d;->a(F)Ln/c;

    move-result-object p1

    iput-object p1, p0, Lp/m1;->I:Ln/c;

    new-instance p1, Lb0/n;

    const/16 p3, 0x1d

    invoke-direct {p1, p3, p2, p0}, Lb0/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lr0/r;->r(Li9/a;)Lr0/d0;

    move-result-object p1

    iput-object p1, p0, Lp/m1;->J:Lr0/d0;

    return-void
.end method


# virtual methods
.method public final E0()V
    .locals 2

    iget-object v0, p0, Lp/m1;->F:Lp1/b;

    invoke-static {p0}, Le2/l;->w(Le2/j;)Le2/q1;

    move-result-object v1

    check-cast v1, Lf2/y;

    invoke-virtual {v1}, Lf2/y;->getGraphicsContext()Lm1/t;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Lm1/t;->a(Lp1/b;)V

    :cond_0
    invoke-interface {v1}, Lm1/t;->b()Lp1/b;

    move-result-object v0

    iput-object v0, p0, Lp/m1;->F:Lp1/b;

    invoke-virtual {p0}, Lp/m1;->N0()V

    return-void
.end method

.method public final F0()V
    .locals 3

    iget-object v0, p0, Lp/m1;->E:Lu9/j1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lu9/c1;->c(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v1, p0, Lp/m1;->E:Lu9/j1;

    iget-object v0, p0, Lp/m1;->F:Lp1/b;

    if-eqz v0, :cond_1

    invoke-static {p0}, Le2/l;->w(Le2/j;)Le2/q1;

    move-result-object v2

    check-cast v2, Lf2/y;

    invoke-virtual {v2}, Lf2/y;->getGraphicsContext()Lm1/t;

    move-result-object v2

    invoke-interface {v2, v0}, Lm1/t;->a(Lp1/b;)V

    iput-object v1, p0, Lp/m1;->F:Lp1/b;

    :cond_1
    return-void
.end method

.method public final I(Le2/p0;Lc2/q0;I)I
    .locals 0

    const p0, 0x7fffffff

    invoke-interface {p2, p0}, Lc2/q0;->b0(I)I

    move-result p0

    return p0
.end method

.method public final M0()I
    .locals 0

    iget-object p0, p0, Lp/m1;->J:Lr0/d0;

    invoke-virtual {p0}, Lr0/d0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final N0()V
    .locals 5

    iget-object v0, p0, Lp/m1;->E:Lu9/j1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lu9/c1;->c(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iget-boolean v2, p0, Lf1/q;->y:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lf1/q;->A0()Lu9/t;

    move-result-object v2

    new-instance v3, Lp/b;

    const/4 v4, 0x1

    invoke-direct {v3, v0, p0, v1, v4}, Lp/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    const/4 v0, 0x3

    invoke-static {v2, v1, v1, v3, v0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object v0

    iput-object v0, p0, Lp/m1;->E:Lu9/j1;

    :cond_1
    return-void
.end method

.method public final b(Lc2/t0;Lc2/q0;J)Lc2/s0;
    .locals 7

    const/4 v5, 0x0

    const/16 v6, 0xd

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    move-wide v0, p3

    invoke-static/range {v0 .. v6}, Lb3/a;->a(JIIIII)J

    move-result-wide p3

    invoke-interface {p2, p3, p4}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object p2

    iget p3, p2, Lc2/f1;->l:I

    invoke-static {p3, v0, v1}, Lb3/b;->g(IJ)I

    move-result p3

    iget-object p4, p0, Lp/m1;->C:Lr0/b1;

    invoke-virtual {p4, p3}, Lr0/b1;->h(I)V

    iget p3, p2, Lc2/f1;->l:I

    iget-object p0, p0, Lp/m1;->B:Lr0/b1;

    invoke-virtual {p0, p3}, Lr0/b1;->h(I)V

    invoke-virtual {p4}, Lr0/b1;->g()I

    move-result p0

    iget p3, p2, Lc2/f1;->m:I

    new-instance p4, Lb0/y2;

    const/4 v0, 0x4

    invoke-direct {p4, p2, v0}, Lb0/y2;-><init>(Lc2/f1;I)V

    sget-object p2, Lu8/s;->l:Lu8/s;

    invoke-interface {p1, p0, p3, p2, p4}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0
.end method

.method public final b0(Le2/p0;Lc2/q0;I)I
    .locals 0

    const p0, 0x7fffffff

    invoke-interface {p2, p0}, Lc2/q0;->c(I)I

    move-result p0

    return p0
.end method

.method public final o(Le2/p0;Lc2/q0;I)I
    .locals 0

    invoke-interface {p2, p3}, Lc2/q0;->z(I)I

    move-result p0

    return p0
.end method

.method public final s0(Lk1/z;)V
    .locals 0

    invoke-virtual {p1}, Lk1/z;->a()Z

    move-result p1

    iget-object p0, p0, Lp/m1;->D:Lr0/e1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final x0(Le2/p0;Lc2/q0;I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final z(Le2/j0;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    iget-object v7, v2, Le2/j0;->l:Lo1/b;

    iget v1, v0, Lp/m1;->A:F

    const/4 v3, 0x0

    int-to-float v4, v3

    invoke-static {v1, v4}, Lb3/f;->a(FF)I

    move-result v1

    iget-object v8, v0, Lp/m1;->C:Lr0/b1;

    iget-object v4, v0, Lp/m1;->B:Lr0/b1;

    iget-object v5, v0, Lp/m1;->I:Ln/c;

    const/4 v6, 0x1

    if-lez v1, :cond_2

    invoke-virtual {v2}, Le2/j0;->getLayoutDirection()Lb3/m;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_1

    if-ne v1, v6, :cond_0

    invoke-virtual {v5}, Ln/c;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v4}, Lr0/b1;->g()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v1, v5

    invoke-virtual {v0}, Lp/m1;->M0()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    invoke-virtual {v8}, Lr0/b1;->g()I

    move-result v5

    :goto_0
    int-to-float v5, v5

    sub-float/2addr v1, v5

    :goto_1
    move v9, v1

    goto :goto_2

    :cond_0
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {v5}, Ln/c;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Le2/j0;->getLayoutDirection()Lb3/m;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_4

    if-ne v1, v6, :cond_3

    invoke-virtual {v5}, Ln/c;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v4}, Lr0/b1;->g()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    invoke-virtual {v8}, Lr0/b1;->g()I

    move-result v5

    goto :goto_0

    :cond_3
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    invoke-virtual {v5}, Ln/c;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v4}, Lr0/b1;->g()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    invoke-virtual {v0}, Lp/m1;->M0()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    goto :goto_1

    :goto_2
    invoke-virtual {v4}, Lr0/b1;->g()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v9, v1

    if-gez v1, :cond_5

    move v10, v6

    goto :goto_3

    :cond_5
    move v10, v3

    :goto_3
    invoke-virtual {v8}, Lr0/b1;->g()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v9

    invoke-virtual {v4}, Lr0/b1;->g()I

    move-result v5

    invoke-virtual {v0}, Lp/m1;->M0()I

    move-result v11

    add-int/2addr v11, v5

    int-to-float v5, v11

    cmpl-float v1, v1, v5

    if-lez v1, :cond_6

    move v11, v6

    goto :goto_4

    :cond_6
    move v11, v3

    :goto_4
    invoke-virtual {v4}, Lr0/b1;->g()I

    move-result v1

    invoke-virtual {v0}, Lp/m1;->M0()I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v12, v3

    invoke-interface {v7}, Lo1/d;->d()J

    move-result-wide v5

    const-wide v13, 0xffffffffL

    and-long/2addr v5, v13

    long-to-int v1, v5

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    move v3, v1

    iget-object v1, v0, Lp/m1;->F:Lp1/b;

    if-eqz v1, :cond_7

    invoke-virtual {v4}, Lr0/b1;->g()I

    move-result v4

    invoke-static {v3}, Ll9/a;->z(F)I

    move-result v3

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    move-wide v15, v13

    int-to-long v13, v3

    and-long/2addr v13, v15

    or-long/2addr v4, v13

    new-instance v3, Lb0/a;

    const/16 v6, 0x16

    invoke-direct {v3, v6, v2}, Lb0/a;-><init>(ILjava/lang/Object;)V

    iget-object v6, v2, Le2/j0;->m:Le2/n;

    invoke-virtual {v2}, Le2/j0;->getLayoutDirection()Lb3/m;

    move-result-object v13

    new-instance v14, Le2/i0;

    move-wide/from16 v17, v15

    const/4 v15, 0x0

    invoke-direct {v14, v2, v6, v3, v15}, Le2/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v3, v13

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Lp1/b;->f(Lb3/c;Lb3/m;JLi9/c;)V

    goto :goto_5

    :cond_7
    move-wide/from16 v17, v13

    :goto_5
    invoke-virtual {v8}, Lr0/b1;->g()I

    move-result v1

    int-to-float v1, v1

    invoke-interface {v7}, Lo1/d;->d()J

    move-result-wide v3

    and-long v3, v3, v17

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v23

    iget-object v3, v7, Lo1/b;->m:Lg5/m;

    invoke-virtual {v3}, Lg5/m;->m()J

    move-result-wide v4

    invoke-virtual {v3}, Lg5/m;->h()Lm1/o;

    move-result-object v6

    invoke-interface {v6}, Lm1/o;->h()V

    :try_start_0
    iget-object v6, v3, Lg5/m;->m:Ljava/lang/Object;

    check-cast v6, Lm2/j;

    iget-object v6, v6, Lm2/j;->m:Ljava/lang/Object;

    check-cast v6, Lg5/m;

    invoke-virtual {v6}, Lg5/m;->h()Lm1/o;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x1

    move/from16 v22, v1

    invoke-interface/range {v19 .. v24}, Lm1/o;->o(FFFFI)V

    neg-float v1, v9

    iget-object v6, v7, Lo1/b;->m:Lg5/m;

    iget-object v6, v6, Lg5/m;->m:Ljava/lang/Object;

    check-cast v6, Lm2/j;

    const/4 v8, 0x0

    invoke-virtual {v6, v1, v8}, Lm2/j;->F(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/high16 v6, -0x80000000

    :try_start_1
    iget-object v0, v0, Lp/m1;->F:Lp1/b;

    if-eqz v0, :cond_9

    if-eqz v10, :cond_8

    invoke-static {v2, v0}, Ll9/a;->h(Lo1/d;Lp1/b;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_8
    :goto_6
    if-eqz v11, :cond_b

    iget-object v9, v7, Lo1/b;->m:Lg5/m;

    iget-object v9, v9, Lg5/m;->m:Ljava/lang/Object;

    check-cast v9, Lm2/j;

    invoke-virtual {v9, v12, v8}, Lm2/j;->F(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2, v0}, Ll9/a;->h(Lo1/d;Lp1/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, v7, Lo1/b;->m:Lg5/m;

    iget-object v0, v0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v0, Lm2/j;

    neg-float v2, v12

    invoke-virtual {v0, v2, v6}, Lm2/j;->F(FF)V

    goto :goto_7

    :catchall_1
    move-exception v0

    iget-object v2, v7, Lo1/b;->m:Lg5/m;

    iget-object v2, v2, Lg5/m;->m:Ljava/lang/Object;

    check-cast v2, Lm2/j;

    neg-float v8, v12

    invoke-virtual {v2, v8, v6}, Lm2/j;->F(FF)V

    throw v0

    :cond_9
    if-eqz v10, :cond_a

    invoke-virtual {v2}, Le2/j0;->b()V

    :cond_a
    if-eqz v11, :cond_b

    iget-object v0, v7, Lo1/b;->m:Lg5/m;

    iget-object v0, v0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v0, Lm2/j;

    invoke-virtual {v0, v12, v8}, Lm2/j;->F(FF)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Le2/j0;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v0, v7, Lo1/b;->m:Lg5/m;

    iget-object v0, v0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v0, Lm2/j;

    neg-float v2, v12

    invoke-virtual {v0, v2, v6}, Lm2/j;->F(FF)V

    goto :goto_7

    :catchall_2
    move-exception v0

    iget-object v2, v7, Lo1/b;->m:Lg5/m;

    iget-object v2, v2, Lg5/m;->m:Ljava/lang/Object;

    check-cast v2, Lm2/j;

    neg-float v8, v12

    invoke-virtual {v2, v8, v6}, Lm2/j;->F(FF)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_b
    :goto_7
    :try_start_6
    iget-object v0, v7, Lo1/b;->m:Lg5/m;

    iget-object v0, v0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v0, Lm2/j;

    neg-float v1, v1

    invoke-virtual {v0, v1, v6}, Lm2/j;->F(FF)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-static {v3, v4, v5}, Lm/a;->t(Lg5/m;J)V

    return-void

    :catchall_3
    move-exception v0

    goto :goto_9

    :goto_8
    :try_start_7
    iget-object v2, v7, Lo1/b;->m:Lg5/m;

    iget-object v2, v2, Lg5/m;->m:Ljava/lang/Object;

    check-cast v2, Lm2/j;

    neg-float v1, v1

    invoke-virtual {v2, v1, v6}, Lm2/j;->F(FF)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :goto_9
    invoke-static {v3, v4, v5}, Lm/a;->t(Lg5/m;J)V

    throw v0
.end method
