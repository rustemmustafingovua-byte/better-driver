.class public final synthetic Lb0/r0;
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
    iput p1, p0, Lb0/r0;->l:I

    iput-object p2, p0, Lb0/r0;->m:Ljava/lang/Object;

    iput-object p3, p0, Lb0/r0;->n:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, Lb0/r0;->l:I

    iput-object p2, p0, Lb0/r0;->m:Ljava/lang/Object;

    iput-object p3, p0, Lb0/r0;->n:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lb0/r0;->l:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x7

    const-string v6, "it"

    const-string v7, "$this$DisposableEffect"

    const/4 v8, 0x6

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    sget-object v13, Lt8/z;->a:Lt8/z;

    iget-object v14, v0, Lb0/r0;->n:Ljava/lang/Object;

    iget-object v0, v0, Lb0/r0;->m:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lm1/a0;

    move-object v3, v14

    check-cast v3, Lm1/m;

    move-object/from16 v1, p1

    check-cast v1, Le2/j0;

    invoke-virtual {v1}, Le2/j0;->b()V

    iget-object v2, v0, Lm1/a0;->c:Lm1/g;

    const/4 v5, 0x0

    const/16 v6, 0x3c

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lo1/d;->t(Lo1/d;Lm1/g;Lm1/m;FLo1/h;I)V

    return-object v13

    :pswitch_0
    move-object v8, v0

    check-cast v8, Lm1/g;

    move-object v9, v14

    check-cast v9, Lm1/m;

    move-object/from16 v7, p1

    check-cast v7, Le2/j0;

    invoke-virtual {v7}, Le2/j0;->b()V

    const/4 v11, 0x0

    const/16 v12, 0x3c

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lo1/d;->t(Lo1/d;Lm1/g;Lm1/m;FLo1/h;I)V

    return-object v13

    :pswitch_1
    check-cast v0, Ls/i;

    check-cast v14, Ls/j;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v0, v14}, Ls/i;->b(Ls/h;)V

    return-object v13

    :pswitch_2
    check-cast v0, Lua/nav/a;

    check-cast v14, Lr0/u0;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v14, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    iget-object v0, v0, Lua/nav/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "log_trim"

    invoke-static {v0, v1, v2}, Lr0/i;->n(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-object v13

    :pswitch_3
    check-cast v0, Lvc/f;

    check-cast v14, Lr0/u0;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v14, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    iget-object v1, v0, Lvc/f;->e:Landroid/content/SharedPreferences;

    const-string v3, "enabled"

    invoke-static {v1, v3, v2}, Lr0/i;->n(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lvc/f;->f()V

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lvc/f;->d()V

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lvc/f;->f:Lx9/l0;

    new-instance v1, Lvc/b;

    sget-object v2, Lvc/f;->Companion:Lvc/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lvc/c;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lvc/a;->l:Lvc/a;

    goto :goto_0

    :cond_1
    sget-object v2, Lvc/a;->m:Lvc/a;

    :goto_0
    invoke-direct {v1, v2, v10, v8}, Lvc/b;-><init>(Lvc/a;Ljava/lang/Integer;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v10, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_1
    return-object v13

    :pswitch_4
    check-cast v0, Lsc/v0;

    check-cast v14, Lr0/u0;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2, v0}, Lod/v6;->J(DLsc/v0;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v14, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v13

    :pswitch_5
    check-cast v0, Landroidx/lifecycle/v;

    check-cast v14, Lorg/maplibre/android/maps/MapView;

    move-object/from16 v1, p1

    check-cast v1, Lr0/g0;

    invoke-static {v1, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lod/r1;

    invoke-direct {v1, v12, v14}, Lod/r1;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0}, Landroidx/lifecycle/v;->getLifecycle()Landroidx/lifecycle/q;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/lifecycle/q;->a(Landroidx/lifecycle/u;)V

    new-instance v2, Lb0/q2;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v0, v1}, Lb0/q2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :pswitch_6
    check-cast v0, Lf2/k2;

    check-cast v14, Lua/nav/c;

    move-object/from16 v1, p1

    check-cast v1, Lb0/o1;

    const-string v2, "$this$KeyboardActions"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    check-cast v0, Lf2/n1;

    invoke-virtual {v0}, Lf2/n1;->a()V

    :cond_2
    invoke-virtual {v14}, Lua/nav/c;->l()V

    return-object v13

    :pswitch_7
    check-cast v0, Landroid/content/SharedPreferences;

    check-cast v14, Lr0/u0;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v14, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "top_collapsed"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object v13

    :pswitch_8
    check-cast v0, Lua/nav/c;

    check-cast v14, Lr0/u0;

    move-object/from16 v1, p1

    check-cast v1, Lua/nav/routing/SavedRoute;

    invoke-static {v1, v6}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lua/nav/c;->F(Lua/nav/routing/SavedRoute;)V

    invoke-static {v14}, Lod/g3;->u(Lr0/u0;)V

    return-object v13

    :pswitch_9
    check-cast v0, Landroid/content/Context;

    check-cast v14, Lr0/u0;

    move-object/from16 v1, p1

    check-cast v1, Lr0/g0;

    invoke-static {v1, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lf7/s;

    invoke-direct {v8, v0, v14}, Lf7/s;-><init>(Landroid/content/Context;Lr0/u0;)V

    new-instance v9, Landroid/content/IntentFilter;

    const-string v2, "android.location.MODE_CHANGED"

    invoke-direct {v9, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    const/4 v11, 0x0

    if-lt v2, v3, :cond_3

    const/4 v10, 0x0

    const/4 v12, 0x4

    move-object v7, v0

    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    goto :goto_3

    :cond_3
    move-object v7, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lwa/h;->j(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lwa/h;->j(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Permission "

    const-string v3, " is required by your application to receive broadcasts, please add it to your manifest"

    invoke-static {v2, v0, v3}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    invoke-virtual {v7, v8, v9, v0, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :goto_3
    invoke-static {v7}, Lod/m;->O(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v14, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    new-instance v0, Lb0/q2;

    invoke-direct {v0, v1, v7, v8}, Lb0/q2;-><init>(Lr0/g0;Landroid/content/Context;Lf7/s;)V

    return-object v0

    :pswitch_a
    check-cast v0, Lr0/r2;

    check-cast v14, Lr0/r2;

    move-object/from16 v1, p1

    check-cast v1, Lo1/d;

    sget v2, Lo0/x2;->c:F

    invoke-interface {v1, v2}, Lb3/c;->V(F)F

    move-result v7

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm1/p;

    iget-wide v10, v2, Lm1/p;->a:J

    sget v2, Lq0/x;->c:F

    int-to-float v3, v9

    div-float/2addr v2, v3

    invoke-interface {v1, v2}, Lb3/c;->V(F)F

    move-result v2

    div-float v9, v7, v3

    sub-float/2addr v2, v9

    new-instance v3, Lo1/h;

    const/4 v5, 0x0

    const/16 v6, 0x1e

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lo1/h;-><init>(IIIFF)V

    const/16 v8, 0x6c

    const-wide/16 v5, 0x0

    move v4, v2

    move-object v7, v3

    move-wide v2, v10

    invoke-static/range {v1 .. v8}, Lo1/d;->X(Lo1/d;JFJLo1/e;I)V

    invoke-interface {v14}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb3/f;

    iget v2, v2, Lb3/f;->l:F

    int-to-float v3, v12

    invoke-static {v2, v3}, Lb3/f;->a(FF)I

    move-result v2

    if-lez v2, :cond_6

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm1/p;

    iget-wide v2, v0, Lm1/p;->a:J

    invoke-interface {v14}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb3/f;

    iget v0, v0, Lb3/f;->l:F

    invoke-interface {v1, v0}, Lb3/c;->V(F)F

    move-result v0

    sub-float v4, v0, v9

    sget-object v7, Lo1/g;->a:Lo1/g;

    const/16 v8, 0x6c

    const-wide/16 v5, 0x0

    invoke-static/range {v1 .. v8}, Lo1/d;->X(Lo1/d;JFJLo1/e;I)V

    :cond_6
    return-object v13

    :pswitch_b
    check-cast v0, Lnd/j0;

    check-cast v14, Ljava/lang/String;

    move-object/from16 v1, p1

    check-cast v1, Lc2/u;

    invoke-static {v1, v6}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lnd/j0;->a:Ld1/y;

    invoke-static {v1}, Lc2/x;->h(Lc2/u;)Lc2/u;

    move-result-object v2

    invoke-interface {v2, v1, v11}, Lc2/u;->U(Lc2/u;Z)Ll1/c;

    move-result-object v1

    invoke-virtual {v0, v14, v1}, Ld1/y;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v13

    :pswitch_c
    check-cast v0, Ln/h1;

    check-cast v14, Ln/d1;

    move-object/from16 v1, p1

    check-cast v1, Lr0/g0;

    iget-object v1, v0, Ln/h1;->i:Ld1/v;

    invoke-virtual {v1, v14}, Ld1/v;->add(Ljava/lang/Object;)Z

    new-instance v1, Lb0/q2;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0, v14}, Lb0/q2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :pswitch_d
    check-cast v0, Ln/h1;

    check-cast v14, Ln/b1;

    move-object/from16 v1, p1

    check-cast v1, Lr0/g0;

    new-instance v1, Lb0/q2;

    invoke-direct {v1, v5, v0, v14}, Lb0/q2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :pswitch_e
    check-cast v0, Ln/h1;

    check-cast v14, Ln/h1;

    move-object/from16 v1, p1

    check-cast v1, Lr0/g0;

    iget-object v1, v0, Ln/h1;->j:Ld1/v;

    invoke-virtual {v1, v14}, Ld1/v;->add(Ljava/lang/Object;)Z

    new-instance v1, Lb0/q2;

    invoke-direct {v1, v8, v0, v14}, Lb0/q2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :pswitch_f
    check-cast v0, Lu9/t;

    check-cast v14, Ln/h1;

    move-object/from16 v1, p1

    check-cast v1, Lr0/g0;

    sget-object v1, Lu9/u;->o:Lu9/u;

    new-instance v2, Ln/f1;

    invoke-direct {v2, v14, v10}, Ln/f1;-><init>(Ln/h1;Ly8/c;)V

    invoke-static {v0, v10, v1, v2, v11}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    new-instance v0, Ln/g1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0

    :pswitch_10
    check-cast v0, Ln/e0;

    check-cast v14, Ln/c0;

    move-object/from16 v1, p1

    check-cast v1, Lr0/g0;

    iget-object v1, v0, Ln/e0;->a:Lt0/b;

    invoke-virtual {v1, v14}, Lt0/b;->b(Ljava/lang/Object;)V

    iget-object v1, v0, Ln/e0;->b:Lr0/e1;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    new-instance v1, Lb0/q2;

    invoke-direct {v1, v4, v0, v14}, Lb0/q2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :pswitch_11
    check-cast v0, Lm0/b1;

    check-cast v14, Landroid/content/Context;

    move-object/from16 v1, p1

    check-cast v1, Ld0/a;

    invoke-virtual {v1}, Ld0/a;->a()V

    iget-object v2, v1, Ld0/a;->a:Lk/h0;

    sget-object v3, Lb0/a2;->m:[Lb0/a2;

    invoke-virtual {v0}, Lm0/b1;->h()Z

    move-result v3

    new-instance v6, Lm0/f0;

    invoke-direct {v6, v0, v4}, Lm0/f0;-><init>(Lm0/b1;I)V

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v7, Lm0/g1;

    invoke-direct {v7, v6, v10, v12}, Lm0/g1;-><init>(Li9/a;Li9/a;I)V

    if-eqz v3, :cond_7

    const v3, 0x1040001

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Le0/d;

    sget-object v6, Le0/e;->b:Ljava/lang/Object;

    const v9, 0x1010312

    invoke-direct {v4, v6, v3, v9, v7}, Le0/d;-><init>(Ljava/lang/Object;Ljava/lang/String;ILi9/c;)V

    invoke-virtual {v2, v4}, Lk/h0;->a(Ljava/lang/Object;)V

    :cond_7
    sget-object v3, Lb0/a2;->m:[Lb0/a2;

    iget-object v3, v0, Lm0/b1;->a:Lm0/i1;

    invoke-virtual {v0}, Lm0/b1;->j()Lc2/u;

    move-result-object v4

    invoke-virtual {v3, v4}, Lm0/i1;->c(Lc2/u;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v12

    :goto_4
    if-ge v7, v6, :cond_c

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lm0/q;

    invoke-virtual {v9}, Lm0/q;->d()Lp2/g;

    move-result-object v10

    iget-object v15, v10, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v3}, Lm0/i1;->a()Lk/b0;

    move-result-object v15

    iget-wide v11, v9, Lm0/q;->a:J

    invoke-virtual {v15, v11, v12}, Lk/b0;->e(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lm0/a0;

    if-nez v9, :cond_a

    goto :goto_6

    :cond_a
    iget-object v11, v9, Lm0/a0;->a:Lm0/z;

    iget v11, v11, Lm0/z;->b:I

    iget-object v9, v9, Lm0/a0;->b:Lm0/z;

    iget v9, v9, Lm0/z;->b:I

    sub-int/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget-object v10, v10, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v9, v10, :cond_b

    :goto_5
    add-int/lit8 v7, v7, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto :goto_4

    :cond_b
    :goto_6
    const/4 v11, 0x0

    goto :goto_8

    :cond_c
    :goto_7
    const/4 v11, 0x1

    :goto_8
    new-instance v3, Lm0/f0;

    invoke-direct {v3, v0, v8}, Lm0/f0;-><init>(Lm0/b1;I)V

    new-instance v4, Lm0/f0;

    invoke-direct {v4, v0, v5}, Lm0/f0;-><init>(Lm0/b1;I)V

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v5, Lm0/g1;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v3, v6}, Lm0/g1;-><init>(Li9/a;Li9/a;I)V

    if-nez v11, :cond_d

    const v3, 0x104000d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Le0/d;

    sget-object v4, Le0/e;->d:Ljava/lang/Object;

    const v6, 0x101037e

    invoke-direct {v3, v4, v0, v6, v5}, Le0/d;-><init>(Ljava/lang/Object;Ljava/lang/String;ILi9/c;)V

    invoke-virtual {v2, v3}, Lk/h0;->a(Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {v1}, Ld0/a;->a()V

    return-object v13

    :pswitch_12
    check-cast v0, Lm0/b1;

    check-cast v14, Li9/c;

    move-object/from16 v1, p1

    check-cast v1, Lm0/a0;

    invoke-virtual {v0, v1}, Lm0/b1;->l(Lm0/a0;)V

    invoke-interface {v14, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v13

    :pswitch_13
    check-cast v0, Lu9/t;

    check-cast v14, Lf2/g1;

    move-object/from16 v1, p1

    check-cast v1, Lp2/g;

    sget-object v2, Lu9/u;->o:Lu9/u;

    new-instance v3, Landroidx/lifecycle/i0;

    const/16 v4, 0x14

    invoke-direct {v3, v14, v1, v10, v4}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    const/4 v1, 0x1

    invoke-static {v0, v10, v2, v3, v1}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    return-object v13

    :pswitch_14
    check-cast v0, Lk/b0;

    check-cast v14, Lm0/a0;

    move-object/from16 v1, p1

    check-cast v1, Lm0/x;

    iget-object v2, v1, Lm0/x;->f:Lp2/j0;

    iget-object v2, v2, Lp2/j0;->a:Lp2/i0;

    iget-object v2, v2, Lp2/i0;->a:Lp2/g;

    iget-object v2, v2, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x0

    invoke-static {v0, v14, v1, v6, v2}, Lm0/p;->m(Lk/b0;Lm0/a0;Lm0/x;II)V

    return-object v13

    :pswitch_15
    check-cast v0, La6/k;

    check-cast v14, La6/k;

    move-object/from16 v1, p1

    check-cast v1, Lr9/g;

    iget v2, v0, La6/k;->m:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_e

    invoke-virtual {v1}, Lr9/g;->b()Lo9/d;

    move-result-object v2

    iget v2, v2, Lo9/b;->l:I

    iput v2, v0, La6/k;->m:I

    :cond_e
    invoke-virtual {v1}, Lr9/g;->b()Lo9/d;

    move-result-object v0

    iget v0, v0, Lo9/b;->m:I

    const/16 v16, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, v14, La6/k;->m:I

    const-string v0, ""

    return-object v0

    :pswitch_16
    check-cast v0, Ld/b;

    check-cast v14, Lc/f;

    move-object/from16 v1, p1

    check-cast v1, Lr0/g0;

    iget-object v1, v0, Ld/b;->a:Lg5/i;

    if-eqz v1, :cond_f

    iget-object v2, v14, Lc/f;->b:Ld/a;

    invoke-static {v1, v2}, Lg5/i;->e(Lg5/i;Lh4/d;)V

    goto :goto_9

    :cond_f
    iget-object v1, v0, Ld/b;->b:Lb/h0;

    if-eqz v1, :cond_10

    iget-object v2, v14, Lc/f;->a:Lb/i0;

    const-string v3, "onBackPressedCallback"

    invoke-static {v2, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lb/c0;

    invoke-direct {v3, v2, v10}, Lb/c0;-><init>(Lb/b0;Landroidx/lifecycle/v;)V

    new-instance v4, Lb/a0;

    invoke-direct {v4, v2, v3}, Lb/a0;-><init>(Lb/b0;Lb/c0;)V

    iget-object v2, v2, Lb/b0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lb/h0;->a()Lb/f0;

    move-result-object v1

    iget-object v1, v1, Lb/f0;->c:Lg5/i;

    invoke-static {v1, v4}, Lg5/i;->e(Lg5/i;Lh4/d;)V

    :goto_9
    new-instance v1, Lb0/q2;

    invoke-direct {v1, v9, v0, v14}, Lb0/q2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unreachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_17
    check-cast v0, Ljava/util/List;

    check-cast v14, Ljava/util/List;

    move-object/from16 v1, p1

    check-cast v1, Lc2/e1;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v4, :cond_11

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt8/j;

    iget-object v7, v5, Lt8/j;->l:Ljava/lang/Object;

    check-cast v7, Lc2/f1;

    iget-object v5, v5, Lt8/j;->m:Ljava/lang/Object;

    check-cast v5, Lb3/j;

    iget-wide v8, v5, Lb3/j;->a:J

    invoke-static {v1, v7, v8, v9}, Lc2/e1;->k(Lc2/e1;Lc2/f1;J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_11
    if-eqz v14, :cond_13

    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v12, 0x0

    :goto_b
    if-ge v12, v0, :cond_13

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt8/j;

    iget-object v5, v4, Lt8/j;->l:Ljava/lang/Object;

    check-cast v5, Lc2/f1;

    iget-object v4, v4, Lt8/j;->m:Ljava/lang/Object;

    check-cast v4, Li9/a;

    if-eqz v4, :cond_12

    invoke-interface {v4}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb3/j;

    iget-wide v6, v4, Lb3/j;->a:J

    goto :goto_c

    :cond_12
    move-wide v6, v2

    :goto_c
    invoke-static {v1, v5, v6, v7}, Lc2/e1;->k(Lc2/e1;Lc2/f1;J)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    :cond_13
    return-object v13

    :pswitch_18
    check-cast v0, Lp2/e;

    check-cast v14, Lb0/t1;

    iget-object v1, v14, Lb0/t1;->b:Lr0/b1;

    move-object/from16 v2, p1

    check-cast v2, Lb0/z1;

    iget-object v3, v0, Lp2/e;->a:Ljava/lang/Object;

    check-cast v3, Lp2/m;

    invoke-virtual {v3}, Lp2/m;->a()Lp2/k0;

    move-result-object v4

    if-eqz v4, :cond_14

    iget-object v4, v4, Lp2/k0;->a:Lp2/e0;

    goto :goto_d

    :cond_14
    move-object v4, v10

    :goto_d
    invoke-virtual {v1}, Lr0/b1;->g()I

    move-result v5

    const/16 v16, 0x1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_15

    invoke-virtual {v3}, Lp2/m;->a()Lp2/k0;

    move-result-object v5

    if-eqz v5, :cond_15

    iget-object v5, v5, Lp2/k0;->b:Lp2/e0;

    goto :goto_e

    :cond_15
    move-object v5, v10

    :goto_e
    if-eqz v4, :cond_16

    invoke-virtual {v4, v5}, Lp2/e0;->c(Lp2/e0;)Lp2/e0;

    move-result-object v5

    :cond_16
    invoke-virtual {v1}, Lr0/b1;->g()I

    move-result v4

    and-int/2addr v4, v9

    if-eqz v4, :cond_17

    invoke-virtual {v3}, Lp2/m;->a()Lp2/k0;

    move-result-object v4

    if-eqz v4, :cond_17

    iget-object v4, v4, Lp2/k0;->c:Lp2/e0;

    goto :goto_f

    :cond_17
    move-object v4, v10

    :goto_f
    if-eqz v5, :cond_18

    invoke-virtual {v5, v4}, Lp2/e0;->c(Lp2/e0;)Lp2/e0;

    move-result-object v4

    :cond_18
    invoke-virtual {v1}, Lr0/b1;->g()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_19

    invoke-virtual {v3}, Lp2/m;->a()Lp2/k0;

    move-result-object v1

    if-eqz v1, :cond_19

    iget-object v10, v1, Lp2/k0;->d:Lp2/e0;

    :cond_19
    if-eqz v4, :cond_1a

    invoke-virtual {v4, v10}, Lp2/e0;->c(Lp2/e0;)Lp2/e0;

    move-result-object v10

    :cond_1a
    new-instance v1, Lj9/u;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v3, v2, Lb0/z1;->a:Lp2/g;

    new-instance v4, Lb0/o;

    invoke-direct {v4, v1, v0, v10, v9}, Lb0/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Lp2/g;->b(Li9/c;)Lp2/g;

    move-result-object v0

    iput-object v0, v2, Lb0/z1;->b:Lp2/g;

    return-object v13

    :pswitch_19
    check-cast v0, Lb0/e3;

    check-cast v14, Lp2/e;

    move-object/from16 v1, p1

    check-cast v1, Lm1/f0;

    iget-object v2, v0, Lb0/e3;->b:Lp2/g;

    iget-object v0, v0, Lb0/e3;->a:Lr0/e1;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp2/j0;

    if-eqz v3, :cond_1b

    iget-object v3, v3, Lp2/j0;->a:Lp2/i0;

    if-eqz v3, :cond_1b

    iget-object v3, v3, Lp2/i0;->a:Lp2/g;

    goto :goto_10

    :cond_1b
    move-object v3, v10

    :goto_10
    invoke-static {v2, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_1c
    :goto_11
    move-object v5, v10

    goto/16 :goto_14

    :cond_1d
    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp2/j0;

    if-eqz v0, :cond_1c

    iget-object v2, v0, Lp2/j0;->b:Lp2/n;

    invoke-static {v14, v0}, Lb0/e3;->c(Lp2/e;Lp2/j0;)Lp2/e;

    move-result-object v3

    if-nez v3, :cond_1e

    goto :goto_11

    :cond_1e
    iget v4, v3, Lp2/e;->c:I

    iget v3, v3, Lp2/e;->b:I

    invoke-virtual {v0, v3, v4}, Lp2/j0;->i(II)Lm1/g;

    move-result-object v5

    invoke-virtual {v0, v3}, Lp2/j0;->b(I)Ll1/c;

    move-result-object v6

    const/16 v16, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Lp2/j0;->b(I)Ll1/c;

    move-result-object v0

    invoke-virtual {v2, v3}, Lp2/n;->d(I)I

    move-result v3

    invoke-virtual {v2, v4}, Lp2/n;->d(I)I

    move-result v2

    if-ne v3, v2, :cond_1f

    iget v0, v0, Ll1/c;->a:F

    iget v2, v6, Ll1/c;->a:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_12

    :cond_1f
    const/4 v0, 0x0

    :goto_12
    iget v2, v6, Ll1/c;->b:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v3, v0

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v6, v0

    const/16 v0, 0x20

    shl-long v2, v3, v0

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide v6, -0x7fffffff80000000L    # -1.0609978955E-314

    xor-long/2addr v2, v6

    iget-object v4, v5, Lm1/g;->d:Landroid/graphics/Matrix;

    if-nez v4, :cond_20

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, v5, Lm1/g;->d:Landroid/graphics/Matrix;

    goto :goto_13

    :cond_20
    invoke-static {v4}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    :goto_13
    iget-object v4, v5, Lm1/g;->d:Landroid/graphics/Matrix;

    invoke-static {v4}, Lj9/n;->d(Ljava/lang/Object;)V

    shr-long v6, v2, v0

    long-to-int v0, v6

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    and-long/2addr v2, v8

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-virtual {v4, v0, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, v5, Lm1/g;->a:Landroid/graphics/Path;

    iget-object v2, v5, Lm1/g;->d:Landroid/graphics/Matrix;

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :goto_14
    if-eqz v5, :cond_21

    new-instance v10, Lb0/d3;

    invoke-direct {v10, v5}, Lb0/d3;-><init>(Lm1/g;)V

    :cond_21
    if-eqz v10, :cond_22

    invoke-virtual {v1, v10}, Lm1/f0;->l(Lm1/h0;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lm1/f0;->f(Z)V

    :cond_22
    return-object v13

    :pswitch_1a
    check-cast v0, Lr0/u0;

    check-cast v14, Ls/i;

    move-object/from16 v1, p1

    check-cast v1, Lr0/g0;

    new-instance v1, Lb0/q2;

    const/4 v6, 0x0

    invoke-direct {v1, v6, v0, v14}, Lb0/q2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :pswitch_1b
    move v6, v12

    check-cast v0, Ljava/util/List;

    check-cast v14, Lb0/u1;

    move-object/from16 v1, p1

    check-cast v1, Lc2/e1;

    iget-object v4, v14, Lb0/u1;->b:Ljava/lang/Object;

    check-cast v4, Li9/a;

    invoke-static {v0, v4}, Lb0/n1;->n(Ljava/util/List;Li9/a;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v12, v6

    :goto_15
    if-ge v12, v4, :cond_24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt8/j;

    iget-object v6, v5, Lt8/j;->l:Ljava/lang/Object;

    check-cast v6, Lc2/f1;

    iget-object v5, v5, Lt8/j;->m:Ljava/lang/Object;

    check-cast v5, Li9/a;

    if-eqz v5, :cond_23

    invoke-interface {v5}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb3/j;

    iget-wide v7, v5, Lb3/j;->a:J

    goto :goto_16

    :cond_23
    move-wide v7, v2

    :goto_16
    invoke-static {v1, v6, v7, v8}, Lc2/e1;->k(Lc2/e1;Lc2/f1;J)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_15

    :cond_24
    return-object v13

    :pswitch_1c
    check-cast v0, Lb0/r1;

    move-object v2, v14

    check-cast v2, Lm1/m;

    move-object/from16 v1, p1

    check-cast v1, Le2/j0;

    invoke-virtual {v1}, Le2/j0;->b()V

    iget-object v3, v0, Lb0/r1;->s:Lr0/e1;

    invoke-virtual {v3}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_25

    iget-object v0, v0, Lb0/r1;->t:Lr0/e1;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_25
    const/4 v8, 0x0

    const/16 v9, 0x7e

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lo1/d;->c0(Le2/j0;Lm1/m;JJFLo1/e;I)V

    :cond_26
    return-object v13

    nop

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
