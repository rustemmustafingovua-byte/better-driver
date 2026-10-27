.class public final synthetic Lb0/n;
.super Ljava/lang/Object;
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

    .line 1
    iput p1, p0, Lb0/n;->l:I

    iput-object p2, p0, Lb0/n;->m:Ljava/lang/Object;

    iput-object p3, p0, Lb0/n;->n:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lu9/t;Li9/c;)V
    .locals 1

    .line 2
    const/16 v0, 0xc

    iput v0, p0, Lb0/n;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/n;->m:Ljava/lang/Object;

    check-cast p2, La9/i;

    iput-object p2, p0, Lb0/n;->n:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lb0/n;->l:I

    const-wide v2, 0x7fc000007fc00000L    # 2.247117487993712E307

    const/16 v4, 0x20

    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    sget-object v11, Lt8/z;->a:Lt8/z;

    iget-object v12, v0, Lb0/n;->n:Ljava/lang/Object;

    iget-object v0, v0, Lb0/n;->m:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lp/q;

    check-cast v12, Lp/m1;

    invoke-static {v12}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v1

    iget-object v1, v1, Le2/g0;->K:Lb3/c;

    iget-object v2, v12, Lp/m1;->B:Lr0/b1;

    invoke-virtual {v2}, Lr0/b1;->g()I

    iget-object v2, v12, Lp/m1;->C:Lr0/b1;

    invoke-virtual {v2}, Lr0/b1;->g()I

    iget v0, v0, Lp/q;->a:F

    invoke-interface {v1, v0}, Lb3/c;->h0(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_0
    check-cast v0, Lj9/y;

    check-cast v12, Lp/p0;

    sget-object v1, Lc2/d1;->a:Lr0/a0;

    invoke-static {v12, v1}, Le2/l;->h(Le2/i;Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lj9/y;->m:Ljava/lang/Object;

    return-object v11

    :pswitch_1
    check-cast v0, Lp/p;

    check-cast v12, Le2/j0;

    iget-object v1, v0, Lp/p;->A:Lm1/h0;

    iget-object v2, v12, Le2/j0;->l:Lo1/b;

    invoke-interface {v2}, Lo1/d;->d()J

    move-result-wide v2

    invoke-virtual {v12}, Le2/j0;->getLayoutDirection()Lb3/m;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4, v12}, Lm1/h0;->a(JLb3/m;Lb3/c;)Lm1/v;

    move-result-object v1

    iput-object v1, v0, Lp/p;->F:Lm1/v;

    return-object v11

    :pswitch_2
    check-cast v0, Landroid/content/Context;

    check-cast v12, Lr0/u0;

    invoke-interface {v12}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    const-string v2, "BlindDriver transfer"

    invoke-static {v0, v2, v1}, Lod/m;->G(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    :pswitch_3
    check-cast v0, Lu9/t;

    check-cast v12, Lua/nav/update/a;

    new-instance v1, Lod/d7;

    invoke-direct {v1, v12, v8, v10}, Lod/d7;-><init>(Lua/nav/update/a;Ly8/c;I)V

    invoke-static {v0, v8, v8, v1, v7}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    return-object v11

    :pswitch_4
    check-cast v0, Lua/nav/update/a;

    check-cast v12, Landroid/content/Context;

    iget-object v0, v0, Lua/nav/update/a;->j:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lqd/h;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lqd/l;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lqd/k;

    if-eqz v1, :cond_2

    :cond_1
    sget-object v1, Lqd/i;->a:Lqd/i;

    invoke-virtual {v0, v8, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "addFlags(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v12, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_0
    return-object v11

    :pswitch_5
    check-cast v0, Lld/j;

    check-cast v12, Lr0/u0;

    invoke-interface {v12, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v11

    :pswitch_6
    check-cast v0, Lld/j;

    check-cast v12, Li9/a;

    sget-object v1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->u()Lua/nav/stats/a;

    move-result-object v1

    invoke-virtual {v1, v0, v8}, Lua/nav/stats/a;->e(Lld/j;Ljava/lang/Double;)V

    invoke-interface {v12}, Li9/a;->invoke()Ljava/lang/Object;

    return-object v11

    :pswitch_7
    check-cast v0, Lad/o;

    check-cast v12, Lr0/u0;

    const-wide v1, 0x3ff3333333333333L    # 1.2

    iput-wide v1, v0, Lad/o;->b:D

    iput-wide v1, v0, Lad/o;->c:D

    const-wide v1, 0x3ff4cccccccccccdL    # 1.3

    iput-wide v1, v0, Lad/o;->d:D

    iput v10, v0, Lad/o;->e:I

    iput v10, v0, Lad/o;->f:I

    iput v10, v0, Lad/o;->g:I

    invoke-virtual {v0}, Lad/o;->a()V

    iget-wide v0, v0, Lad/o;->b:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v12, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v11

    :pswitch_8
    check-cast v0, Lua/nav/routing/i;

    check-cast v12, Lr0/u0;

    iget-object v1, v0, Lua/nav/routing/i;->c:Lid/e;

    invoke-virtual {v1}, Lid/e;->a()V

    iget-object v1, v1, Lid/e;->b:Lb0/q0;

    invoke-virtual {v1}, Lb0/q0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-static {v1}, Lf9/j;->w(Ljava/io/File;)Z

    iget-object v1, v0, Lua/nav/routing/i;->g:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Lua/nav/routing/i;->b()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v12, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v11

    :pswitch_9
    check-cast v0, Lua/nav/routing/RoutingPackInfo;

    check-cast v12, Li9/a;

    sget-object v1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->q()Lua/nav/routing/i;

    move-result-object v1

    iget-object v0, v0, Lua/nav/routing/RoutingPackInfo;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lua/nav/routing/i;->a(Ljava/lang/String;)V

    invoke-interface {v12}, Li9/a;->invoke()Ljava/lang/Object;

    return-object v11

    :pswitch_a
    check-cast v0, Lt1/a;

    check-cast v12, Li9/c;

    invoke-interface {v0, v10}, Lt1/a;->a(I)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v11

    :pswitch_b
    check-cast v0, Lua/nav/c;

    check-cast v12, Lr0/u0;

    iget-object v0, v0, Lua/nav/c;->z:Lx9/l0;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v8, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v12, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v11

    :pswitch_c
    check-cast v0, Landroid/content/SharedPreferences;

    check-cast v12, Lr0/u0;

    invoke-interface {v12}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v12, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v12}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "zoomAuto"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object v11

    :pswitch_d
    check-cast v0, Li9/a;

    check-cast v12, Li9/a;

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    invoke-interface {v12}, Li9/a;->invoke()Ljava/lang/Object;

    return-object v11

    :pswitch_e
    check-cast v0, Ldd/m0;

    check-cast v12, Lr0/a1;

    iget-object v0, v0, Ldd/m0;->b:Ljava/lang/Float;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {v12}, Lr0/a1;->g()F

    move-result v1

    invoke-virtual {v12}, Lr0/a1;->g()F

    move-result v2

    sub-float/2addr v0, v2

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-virtual {v12, v0}, Lr0/a1;->h(F)V

    invoke-virtual {v12}, Lr0/a1;->g()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3d4ccccd    # 0.05f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Lr0/a1;->h(F)V

    :cond_3
    return-object v11

    :pswitch_f
    check-cast v0, Lw9/i;

    invoke-interface {v0, v12}, Lw9/u;->l(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v11

    :pswitch_10
    check-cast v0, Lu9/t;

    check-cast v12, La9/i;

    sget-object v1, Lu9/u;->o:Lu9/u;

    new-instance v2, Lad/w;

    invoke-direct {v2, v12, v8}, Lad/w;-><init>(Li9/c;Ly8/c;)V

    invoke-static {v0, v8, v1, v2, v9}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    return-object v11

    :pswitch_11
    check-cast v0, Lm0/v1;

    check-cast v12, Lr0/u0;

    invoke-interface {v12}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb3/l;

    iget-wide v11, v1, Lb3/l;->a:J

    invoke-virtual {v0}, Lm0/v1;->i()Ll1/b;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-wide v13, v1, Ll1/b;->a:J

    invoke-virtual {v0}, Lm0/v1;->m()Lp2/g;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, v1, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v1, v0, Lm0/v1;->r:Lr0/e1;

    invoke-virtual {v1}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb0/d1;

    if-nez v1, :cond_5

    move v1, v6

    goto :goto_1

    :cond_5
    sget-object v8, Lm0/x1;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v8, v1

    :goto_1
    if-eq v1, v6, :cond_b

    const-wide v15, 0xffffffffL

    if-eq v1, v9, :cond_7

    if-eq v1, v5, :cond_7

    if-ne v1, v7, :cond_6

    invoke-virtual {v0}, Lm0/v1;->n()Lu2/x;

    move-result-object v1

    iget-wide v6, v1, Lu2/x;->b:J

    sget v1, Lp2/l0;->c:I

    and-long/2addr v6, v15

    :goto_2
    long-to-int v1, v6

    goto :goto_3

    :cond_6
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7
    invoke-virtual {v0}, Lm0/v1;->n()Lu2/x;

    move-result-object v1

    iget-wide v6, v1, Lu2/x;->b:J

    sget v1, Lp2/l0;->c:I

    shr-long/2addr v6, v4

    goto :goto_2

    :goto_3
    iget-object v6, v0, Lm0/v1;->d:Lb0/r1;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lb0/r1;->d()Lb0/z2;

    move-result-object v6

    if-nez v6, :cond_8

    goto :goto_4

    :cond_8
    iget-object v7, v0, Lm0/v1;->d:Lb0/r1;

    if-eqz v7, :cond_b

    iget-object v7, v7, Lb0/r1;->a:Lb0/b2;

    iget-object v7, v7, Lb0/b2;->a:Lp2/g;

    if-nez v7, :cond_9

    goto :goto_4

    :cond_9
    iget-object v0, v0, Lm0/v1;->b:Lu2/q;

    invoke-interface {v0, v1}, Lu2/q;->s(I)I

    move-result v0

    iget-object v1, v7, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v10, v1}, Lg6/c1;->f(III)I

    move-result v0

    invoke-virtual {v6, v13, v14}, Lb0/z2;->d(J)J

    move-result-wide v7

    shr-long/2addr v7, v4

    long-to-int v1, v7

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    iget-object v6, v6, Lb0/z2;->a:Lp2/j0;

    iget-object v7, v6, Lp2/j0;->b:Lp2/n;

    invoke-virtual {v7, v0}, Lp2/n;->d(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lp2/j0;->e(I)F

    move-result v8

    invoke-virtual {v6, v0}, Lp2/j0;->f(I)F

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v1, v9, v6}, Lg6/c1;->e(FFF)F

    move-result v6

    const-wide/16 v8, 0x0

    invoke-static {v11, v12, v8, v9}, Lb3/l;->a(JJ)Z

    move-result v8

    if-nez v8, :cond_a

    sub-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    shr-long v8, v11, v4

    long-to-int v8, v8

    div-int/2addr v8, v5

    int-to-float v8, v8

    cmpl-float v1, v1, v8

    if-lez v1, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v7, v0}, Lp2/n;->f(I)F

    move-result v1

    invoke-virtual {v7, v0}, Lp2/n;->b(I)F

    move-result v0

    sub-float/2addr v0, v1

    int-to-float v2, v5

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v5, v0

    shl-long v0, v1, v4

    and-long v2, v5, v15

    or-long/2addr v2, v0

    :cond_b
    :goto_4
    new-instance v0, Ll1/b;

    invoke-direct {v0, v2, v3}, Ll1/b;-><init>(J)V

    return-object v0

    :pswitch_12
    check-cast v0, Lm0/b1;

    check-cast v12, Lr0/u0;

    invoke-interface {v12}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb3/l;

    iget-wide v10, v1, Lb3/l;->a:J

    invoke-virtual {v0}, Lm0/b1;->f()Lm0/a0;

    move-result-object v1

    if-nez v1, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {v0}, Lm0/b1;->e()Lb0/d1;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v6

    goto :goto_5

    :cond_d
    sget-object v8, Lm0/c1;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v8, v4

    :goto_5
    if-eq v4, v6, :cond_11

    if-eq v4, v9, :cond_10

    if-eq v4, v5, :cond_f

    if-eq v4, v7, :cond_e

    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SelectionContainer does not support cursor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-object v1, v1, Lm0/a0;->b:Lm0/z;

    invoke-static {v0, v10, v11, v1}, Lm0/d1;->r(Lm0/b1;JLm0/z;)J

    move-result-wide v2

    goto :goto_6

    :cond_10
    iget-object v1, v1, Lm0/a0;->a:Lm0/z;

    invoke-static {v0, v10, v11, v1}, Lm0/d1;->r(Lm0/b1;JLm0/z;)J

    move-result-wide v2

    :cond_11
    :goto_6
    new-instance v0, Ll1/b;

    invoke-direct {v0, v2, v3}, Ll1/b;-><init>(J)V

    return-object v0

    :pswitch_13
    check-cast v0, Lkd/x;

    check-cast v12, Lr0/u0;

    iget-object v0, v0, Lkd/x;->g:Lp2/y;

    invoke-interface {v12}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lp2/y;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v11

    :pswitch_14
    check-cast v0, Lkotlinx/serialization/descriptors/SerialDescriptor;

    check-cast v12, Lia/c;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v2, v12, Lia/c;->a:Lia/j;

    invoke-static {v12, v0}, Lja/k;->i(Lia/c;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f()I

    move-result v2

    move v3, v10

    :goto_7
    if-ge v3, v2, :cond_18

    invoke-interface {v0, v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->i(I)Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_12
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    instance-of v11, v7, Lia/u;

    if-eqz v11, :cond_12

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_13
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v9, :cond_14

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_9

    :cond_14
    move-object v5, v8

    :goto_9
    check-cast v5, Lia/u;

    if-eqz v5, :cond_17

    invoke-interface {v5}, Lia/u;->names()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_17

    array-length v6, v5

    move v7, v10

    :goto_a
    if-ge v7, v6, :cond_17

    aget-object v11, v5, v7

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e()La/a;

    move-result-object v12

    sget-object v13, Lfa/f;->g:Lfa/f;

    invoke-static {v12, v13}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    const-string v12, "enum value"

    goto :goto_b

    :cond_15
    const-string v12, "property"

    :goto_b
    invoke-interface {v1, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v1, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_16
    new-instance v2, Lda/d;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "The suggested name \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is already one of the names for "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v11, v1}, Lu8/v;->I(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "message"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    :cond_18
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v1, Lu8/s;->l:Lu8/s;

    :cond_19
    return-object v1

    :pswitch_15
    check-cast v0, Landroid/content/Context;

    check-cast v12, Landroid/view/textclassifier/TextClassification;

    invoke-virtual {v12}, Landroid/view/textclassifier/TextClassification;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v10

    :cond_1a
    invoke-virtual {v12}, Landroid/view/textclassifier/TextClassification;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0xc000000

    invoke-static {v0, v10, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v0, v2, :cond_1b

    :try_start_1
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-static {v0}, Lb5/a;->h(Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v1, v0}, Lb5/a;->n(Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error sending pendingIntent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " error: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextClassification"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_1b
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V

    :goto_c
    return-object v11

    :pswitch_16
    check-cast v0, Le0/d;

    check-cast v12, Le0/g;

    iget-object v0, v0, Le0/d;->d:Li9/c;

    invoke-interface {v0, v12}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v11

    :pswitch_17
    check-cast v0, Li0/e;

    check-cast v12, Li9/a;

    invoke-interface {v12}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc2/u;

    invoke-interface {v0, v1}, Li0/e;->n0(Lc2/u;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lr5/h1;->D(J)J

    move-result-wide v0

    new-instance v2, Lb3/j;

    invoke-direct {v2, v0, v1}, Lb3/j;-><init>(J)V

    return-object v2

    :pswitch_18
    check-cast v0, Lj9/y;

    check-cast v12, Li9/a;

    invoke-interface {v12}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lj9/y;->m:Ljava/lang/Object;

    return-object v11

    :pswitch_19
    check-cast v0, Le1/e;

    iget-object v0, v0, Le1/e;->l:Lr0/q;

    iget-object v1, v0, Lr0/q;->c:Lr0/e2;

    invoke-virtual {v1}, Lr0/e2;->c()Lr0/d2;

    move-result-object v2

    move v3, v10

    :goto_d
    :try_start_2
    iget v4, v1, Lr0/e2;->m:I

    if-ge v3, v4, :cond_25

    invoke-virtual {v2, v3}, Lr0/d2;->l(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-virtual {v2, v3}, Lr0/d2;->n(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v12, :cond_1e

    instance-of v5, v4, Lr0/y1;

    if-eqz v5, :cond_1c

    check-cast v4, Lr0/y1;

    goto :goto_e

    :cond_1c
    move-object v4, v8

    :goto_e
    if-eqz v4, :cond_1d

    iget-object v4, v4, Lr0/y1;->a:Lr0/x1;

    goto :goto_f

    :cond_1d
    move-object v4, v8

    :goto_f
    if-ne v4, v12, :cond_1f

    :cond_1e
    new-instance v4, Le1/j;

    invoke-direct {v4, v3, v8}, Le1/j;-><init>(ILjava/lang/Integer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v2}, Lr0/d2;->c()V

    move-object v8, v4

    goto :goto_15

    :catchall_1
    move-exception v0

    goto/16 :goto_17

    :cond_1f
    :try_start_3
    iget-object v4, v2, Lr0/d2;->b:[I

    invoke-static {v4, v3}, Lr0/g2;->c([II)I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    iget v7, v2, Lr0/d2;->c:I

    if-ge v6, v7, :cond_20

    mul-int/lit8 v7, v6, 0x5

    add-int/lit8 v7, v7, 0x4

    aget v4, v4, v7

    goto :goto_10

    :cond_20
    iget v4, v2, Lr0/d2;->e:I

    :goto_10
    sub-int/2addr v4, v5

    move v5, v10

    :goto_11
    if-ge v5, v4, :cond_26

    invoke-virtual {v2, v3, v5}, Lr0/d2;->h(II)Ljava/lang/Object;

    move-result-object v7

    if-eq v7, v12, :cond_24

    instance-of v9, v7, Lr0/y1;

    if-eqz v9, :cond_21

    check-cast v7, Lr0/y1;

    goto :goto_12

    :cond_21
    move-object v7, v8

    :goto_12
    if-eqz v7, :cond_22

    iget-object v7, v7, Lr0/y1;->a:Lr0/x1;

    goto :goto_13

    :cond_22
    move-object v7, v8

    :goto_13
    if-ne v7, v12, :cond_23

    goto :goto_14

    :cond_23
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_24
    :goto_14
    new-instance v8, Le1/j;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v8, v3, v4}, Le1/j;-><init>(ILjava/lang/Integer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_25
    invoke-virtual {v2}, Lr0/d2;->c()V

    goto :goto_15

    :cond_26
    move v3, v6

    goto :goto_d

    :goto_15
    if-eqz v8, :cond_27

    iget v2, v8, Le1/j;->a:I

    iget-object v3, v8, Le1/j;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Lr0/e2;->c()Lr0/d2;

    move-result-object v1

    :try_start_4
    invoke-static {v1, v2, v3}, Ll7/a;->A(Lr0/d2;ILjava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual {v1}, Lr0/d2;->c()V

    invoke-virtual {v0}, Lr0/q;->J()Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lu8/m;->p0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_16

    :catchall_2
    move-exception v0

    invoke-virtual {v1}, Lr0/d2;->c()V

    throw v0

    :cond_27
    sget-object v0, Lu8/r;->l:Lu8/r;

    :goto_16
    new-instance v1, Le1/a;

    invoke-direct {v1, v0}, Le1/a;-><init>(Ljava/util/List;)V

    return-object v1

    :goto_17
    invoke-virtual {v2}, Lr0/d2;->c()V

    throw v0

    :pswitch_1a
    check-cast v0, Lc/f;

    check-cast v12, Li9/a;

    iput-object v12, v0, Lc/f;->c:Li9/a;

    return-object v11

    :pswitch_1b
    check-cast v0, Lb0/e3;

    check-cast v12, Lp2/g;

    if-eqz v0, :cond_2b

    iget-object v1, v0, Lb0/e3;->c:Ld1/v;

    invoke-virtual {v1}, Ld1/v;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v1, v0, Lb0/e3;->b:Lp2/g;

    goto :goto_19

    :cond_28
    new-instance v2, Lb0/z1;

    iget-object v3, v0, Lb0/e3;->b:Lp2/g;

    invoke-direct {v2, v3}, Lb0/z1;-><init>(Lp2/g;)V

    invoke-virtual {v1}, Ld1/v;->size()I

    move-result v3

    :goto_18
    if-ge v10, v3, :cond_29

    invoke-virtual {v1, v10}, Ld1/v;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li9/c;

    invoke-interface {v4, v2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    :cond_29
    iget-object v1, v2, Lb0/z1;->b:Lp2/g;

    :goto_19
    iput-object v1, v0, Lb0/e3;->b:Lp2/g;

    if-nez v1, :cond_2a

    goto :goto_1a

    :cond_2a
    move-object v12, v1

    :cond_2b
    :goto_1a
    return-object v12

    :pswitch_1c
    check-cast v0, Lu2/x;

    check-cast v12, Lr0/u0;

    iget-wide v1, v0, Lu2/x;->b:J

    invoke-interface {v12}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu2/x;

    iget-wide v3, v3, Lu2/x;->b:J

    invoke-static {v1, v2, v3, v4}, Lp2/l0;->b(JJ)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, v0, Lu2/x;->c:Lp2/l0;

    invoke-interface {v12}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu2/x;

    iget-object v2, v2, Lu2/x;->c:Lp2/l0;

    invoke-static {v1, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    :cond_2c
    invoke-interface {v12, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :cond_2d
    return-object v11

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
