.class public final Le2/i0;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Le2/i0;->l:I

    iput-object p1, p0, Le2/i0;->m:Ljava/lang/Object;

    iput-object p2, p0, Le2/i0;->n:Ljava/lang/Object;

    iput-object p3, p0, Le2/i0;->o:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lk1/b0;Lk1/o;Li9/c;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Le2/i0;->l:I

    .line 2
    iput-object p1, p0, Le2/i0;->m:Ljava/lang/Object;

    iput-object p2, p0, Le2/i0;->n:Ljava/lang/Object;

    check-cast p3, Lj9/o;

    iput-object p3, p0, Le2/i0;->o:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Le2/i0;->l:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Lm/p;

    iget-object v2, v0, Le2/i0;->n:Ljava/lang/Object;

    check-cast v2, Lm/a0;

    iget-object v3, v0, Le2/i0;->o:Ljava/lang/Object;

    check-cast v3, Lm/b0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    const/4 v5, 0x1

    if-eq v1, v5, :cond_2

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    iget-object v0, v3, Lm/b0;->a:Lm/j0;

    iget-object v0, v0, Lm/j0;->c:Lm/g0;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lm/g0;->a:J

    new-instance v4, Lm1/k0;

    invoke-direct {v4, v0, v1}, Lm1/k0;-><init>(J)V

    goto :goto_0

    :cond_0
    iget-object v0, v2, Lm/a0;->a:Lm/j0;

    iget-object v0, v0, Lm/j0;->c:Lm/g0;

    if-eqz v0, :cond_5

    iget-wide v0, v0, Lm/g0;->a:J

    new-instance v4, Lm1/k0;

    invoke-direct {v4, v0, v1}, Lm1/k0;-><init>(J)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    iget-object v0, v0, Le2/i0;->m:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lm1/k0;

    goto :goto_0

    :cond_3
    iget-object v0, v2, Lm/a0;->a:Lm/j0;

    iget-object v0, v0, Lm/j0;->c:Lm/g0;

    if-eqz v0, :cond_4

    iget-wide v0, v0, Lm/g0;->a:J

    new-instance v4, Lm1/k0;

    invoke-direct {v4, v0, v1}, Lm1/k0;-><init>(J)V

    goto :goto_0

    :cond_4
    iget-object v0, v3, Lm/b0;->a:Lm/j0;

    iget-object v0, v0, Lm/j0;->c:Lm/g0;

    if-eqz v0, :cond_5

    iget-wide v0, v0, Lm/g0;->a:J

    new-instance v4, Lm1/k0;

    invoke-direct {v4, v0, v1}, Lm1/k0;-><init>(J)V

    :cond_5
    :goto_0
    if-eqz v4, :cond_6

    iget-wide v0, v4, Lm1/k0;->a:J

    goto :goto_1

    :cond_6
    sget-wide v0, Lm1/k0;->b:J

    :goto_1
    new-instance v2, Lm1/k0;

    invoke-direct {v2, v0, v1}, Lm1/k0;-><init>(J)V

    return-object v2

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Lm1/f0;

    iget-object v2, v0, Le2/i0;->n:Ljava/lang/Object;

    check-cast v2, Lr0/r2;

    iget-object v3, v0, Le2/i0;->m:Ljava/lang/Object;

    check-cast v3, Lr0/r2;

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_7

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    goto :goto_2

    :cond_7
    move v3, v4

    :goto_2
    invoke-virtual {v1, v3}, Lm1/f0;->c(F)V

    if-eqz v2, :cond_8

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    goto :goto_3

    :cond_8
    move v3, v4

    :goto_3
    invoke-virtual {v1, v3}, Lm1/f0;->i(F)V

    if-eqz v2, :cond_9

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v4

    :cond_9
    invoke-virtual {v1, v4}, Lm1/f0;->j(F)V

    iget-object v0, v0, Le2/i0;->o:Ljava/lang/Object;

    check-cast v0, Lr0/r2;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm1/k0;

    iget-wide v2, v0, Lm1/k0;->a:J

    goto :goto_4

    :cond_a
    sget-wide v2, Lm1/k0;->b:J

    :goto_4
    invoke-virtual {v1, v2, v3}, Lm1/f0;->p(J)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Lk1/b0;

    iget-object v2, v0, Le2/i0;->m:Ljava/lang/Object;

    check-cast v2, Lk1/b0;

    invoke-static {v1, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v0, 0x0

    goto :goto_5

    :cond_b
    iget-object v2, v0, Le2/i0;->n:Ljava/lang/Object;

    check-cast v2, Lk1/o;

    iget-object v2, v2, Lk1/o;->c:Lk1/b0;

    invoke-static {v1, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v0, v0, Le2/i0;->o:Ljava/lang/Object;

    check-cast v0, Lj9/o;

    invoke-interface {v0, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Focus search landed at the root."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    move-object/from16 v1, p1

    check-cast v1, Le2/e2;

    move-object v2, v1

    check-cast v2, Li1/f;

    iget-object v3, v0, Le2/i0;->n:Ljava/lang/Object;

    check-cast v3, Li1/f;

    invoke-static {v3}, Le2/l;->w(Le2/j;)Le2/q1;

    move-result-object v3

    check-cast v3, Lf2/y;

    invoke-virtual {v3}, Lf2/y;->getDragAndDropManager()Li1/c;

    move-result-object v3

    check-cast v3, Li1/b;

    iget-object v3, v3, Li1/b;->b:Lk/f;

    invoke-virtual {v3, v2}, Lk/f;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v0, Le2/i0;->o:Ljava/lang/Object;

    check-cast v3, Lb0/l1;

    invoke-static {v3}, Lg6/c1;->s(Lb0/l1;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lg5/f;->e(Li1/f;J)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v0, v0, Le2/i0;->m:Ljava/lang/Object;

    check-cast v0, Lj9/y;

    iput-object v1, v0, Lj9/y;->m:Ljava/lang/Object;

    sget-object v0, Le2/d2;->n:Le2/d2;

    goto :goto_6

    :cond_d
    sget-object v0, Le2/d2;->l:Le2/d2;

    :goto_6
    return-object v0

    :pswitch_3
    move-object/from16 v1, p1

    check-cast v1, Lo1/d;

    iget-object v2, v0, Le2/i0;->m:Ljava/lang/Object;

    check-cast v2, Le3/z;

    iget-object v3, v0, Le2/i0;->n:Ljava/lang/Object;

    check-cast v3, Le2/g0;

    iget-object v0, v0, Le2/i0;->o:Ljava/lang/Object;

    check-cast v0, Le3/z;

    invoke-interface {v1}, Lo1/d;->Y()Lg5/m;

    move-result-object v1

    invoke-virtual {v1}, Lg5/m;->h()Lm1/o;

    move-result-object v1

    invoke-virtual {v2}, Le3/k;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_10

    const/4 v4, 0x1

    iput-boolean v4, v2, Le3/k;->J:Z

    iget-object v3, v3, Le2/g0;->z:Le2/q1;

    instance-of v4, v3, Lf2/y;

    if-eqz v4, :cond_e

    check-cast v3, Lf2/y;

    goto :goto_7

    :cond_e
    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_f

    invoke-static {v1}, Lm1/b;->a(Lm1/o;)Landroid/graphics/Canvas;

    move-result-object v1

    invoke-virtual {v3}, Lf2/y;->getAndroidViewsHandler$ui()Lf2/a1;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, v2, Le3/k;->J:Z

    :cond_10
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_4
    move-object/from16 v1, p1

    check-cast v1, Lo1/d;

    iget-object v2, v0, Le2/i0;->m:Ljava/lang/Object;

    check-cast v2, Le2/j0;

    iget-object v3, v2, Le2/j0;->l:Lo1/b;

    iget-object v4, v2, Le2/j0;->m:Le2/n;

    iget-object v5, v0, Le2/i0;->n:Ljava/lang/Object;

    check-cast v5, Le2/n;

    iput-object v5, v2, Le2/j0;->m:Le2/n;

    :try_start_0
    invoke-interface {v1}, Lo1/d;->Y()Lg5/m;

    move-result-object v5

    invoke-virtual {v5}, Lg5/m;->j()Lb3/c;

    move-result-object v5

    invoke-interface {v1}, Lo1/d;->Y()Lg5/m;

    move-result-object v6

    invoke-virtual {v6}, Lg5/m;->k()Lb3/m;

    move-result-object v6

    invoke-interface {v1}, Lo1/d;->Y()Lg5/m;

    move-result-object v7

    invoke-virtual {v7}, Lg5/m;->h()Lm1/o;

    move-result-object v7

    invoke-interface {v1}, Lo1/d;->Y()Lg5/m;

    move-result-object v8

    invoke-virtual {v8}, Lg5/m;->m()J

    move-result-wide v8

    invoke-interface {v1}, Lo1/d;->Y()Lg5/m;

    move-result-object v1

    iget-object v1, v1, Lg5/m;->n:Ljava/lang/Object;

    check-cast v1, Lp1/b;

    iget-object v0, v0, Le2/i0;->o:Ljava/lang/Object;

    check-cast v0, Lb0/a;

    iget-object v10, v3, Lo1/b;->m:Lg5/m;

    invoke-virtual {v10}, Lg5/m;->j()Lb3/c;

    move-result-object v10

    iget-object v11, v3, Lo1/b;->m:Lg5/m;

    invoke-virtual {v11}, Lg5/m;->k()Lb3/m;

    move-result-object v11

    iget-object v12, v3, Lo1/b;->m:Lg5/m;

    invoke-virtual {v12}, Lg5/m;->h()Lm1/o;

    move-result-object v12

    iget-object v13, v3, Lo1/b;->m:Lg5/m;

    invoke-virtual {v13}, Lg5/m;->m()J

    move-result-wide v13

    iget-object v15, v3, Lo1/b;->m:Lg5/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 p1, v4

    :try_start_1
    iget-object v4, v15, Lg5/m;->n:Ljava/lang/Object;

    check-cast v4, Lp1/b;

    invoke-virtual {v15, v5}, Lg5/m;->u(Lb3/c;)V

    invoke-virtual {v15, v6}, Lg5/m;->v(Lb3/m;)V

    invoke-virtual {v15, v7}, Lg5/m;->t(Lm1/o;)V

    invoke-virtual {v15, v8, v9}, Lg5/m;->w(J)V

    iput-object v1, v15, Lg5/m;->n:Ljava/lang/Object;

    invoke-interface {v7}, Lm1/o;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0, v2}, Lb0/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-interface {v7}, Lm1/o;->q()V

    iget-object v0, v3, Lo1/b;->m:Lg5/m;

    invoke-virtual {v0, v10}, Lg5/m;->u(Lb3/c;)V

    invoke-virtual {v0, v11}, Lg5/m;->v(Lb3/m;)V

    invoke-virtual {v0, v12}, Lg5/m;->t(Lm1/o;)V

    invoke-virtual {v0, v13, v14}, Lg5/m;->w(J)V

    iput-object v4, v0, Lg5/m;->n:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v1, p1

    iput-object v1, v2, Le2/j0;->m:Le2/n;

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :catchall_0
    move-exception v0

    move-object/from16 v1, p1

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v1, p1

    :try_start_4
    invoke-interface {v7}, Lm1/o;->q()V

    iget-object v3, v3, Lo1/b;->m:Lg5/m;

    invoke-virtual {v3, v10}, Lg5/m;->u(Lb3/c;)V

    invoke-virtual {v3, v11}, Lg5/m;->v(Lb3/m;)V

    invoke-virtual {v3, v12}, Lg5/m;->t(Lm1/o;)V

    invoke-virtual {v3, v13, v14}, Lg5/m;->w(J)V

    iput-object v4, v3, Lg5/m;->n:Ljava/lang/Object;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v1, v4

    :goto_8
    iput-object v1, v2, Le2/j0;->m:Le2/n;

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
