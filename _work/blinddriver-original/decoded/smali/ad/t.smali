.class public final synthetic Lad/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lad/t;->l:I

    iput-object p2, p0, Lad/t;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lad/t;->l:I

    iget-object v0, v0, Lad/t;->m:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lc/i;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg5/f;->G([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_0

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/i;->a(Ljava/lang/Object;)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Lpd/b;->a:Lr0/e1;

    invoke-virtual {v1, v0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1
    check-cast v0, Lo0/o4;

    iget-object v1, v0, Lo0/o4;->n:Lr0/e1;

    invoke-virtual {v1}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lo0/o4;->b:Li9/a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    :cond_1
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_2
    check-cast v0, Lp0/x;

    sget v1, Lp0/y;->d:F

    sget v2, Lp0/y;->e:F

    invoke-virtual {v0}, Lp0/x;->a()F

    move-result v0

    invoke-static {v1, v2, v0}, Lg5/f;->C(FFF)F

    move-result v0

    new-instance v1, Lb3/f;

    invoke-direct {v1, v0}, Lb3/f;-><init>(F)V

    return-object v1

    :pswitch_3
    check-cast v0, Ln4/g;

    invoke-interface {v0}, Landroidx/lifecycle/v;->getLifecycle()Landroidx/lifecycle/q;

    move-result-object v1

    new-instance v2, Ln4/b;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Ln4/b;-><init>(Ln4/g;I)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/q;->a(Landroidx/lifecycle/u;)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_4
    check-cast v0, Ln0/a;

    invoke-static {v0}, Le2/l;->k(Le2/n;)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_5
    check-cast v0, Lu9/t;

    invoke-interface {v0}, Lu9/t;->C()Ly8/h;

    move-result-object v0

    invoke-static {v0}, Ln/d;->j(Ly8/h;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_6
    check-cast v0, Ljava/util/List;

    return-object v0

    :pswitch_7
    check-cast v0, Ll0/u;

    const/4 v1, 0x0

    iput-object v1, v0, Ll0/u;->J:Ll0/t;

    invoke-static {v0}, Le2/l;->m(Le2/z1;)V

    invoke-static {v0}, Le2/l;->l(Le2/x;)V

    invoke-static {v0}, Le2/l;->k(Le2/n;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :pswitch_8
    check-cast v0, Ll0/q;

    const/4 v1, 0x0

    iput-object v1, v0, Ll0/q;->O:Ll0/p;

    invoke-static {v0}, Le2/l;->m(Le2/z1;)V

    invoke-static {v0}, Le2/l;->l(Le2/x;)V

    invoke-static {v0}, Le2/l;->k(Le2/n;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :pswitch_9
    check-cast v0, Lx9/l0;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_a
    check-cast v0, Lk0/s;

    new-instance v1, Landroid/view/inputmethod/BaseInputConnection;

    iget-object v0, v0, Lk0/s;->a:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    return-object v1

    :pswitch_b
    check-cast v0, Lk0/l;

    iget-object v0, v0, Lk0/l;->m:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {v0, v1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0

    :pswitch_c
    check-cast v0, Lh0/j;

    iget-boolean v1, v0, Lf1/q;->y:Z

    if-eqz v1, :cond_2

    invoke-static {v0}, Lh0/h;->b(Le2/j;)Le0/c;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Le0/c;->b:Le0/c;

    :goto_0
    return-object v0

    :pswitch_d
    check-cast v0, Landroid/app/RemoteAction;

    invoke-virtual {v0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v0, v2, :cond_3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-static {v0}, Lb5/a;->h(Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v1, v0}, Lb5/a;->n(Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "TextClassification"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error sending pendingIntent: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " error: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V

    :goto_1
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_e
    check-cast v0, Le0/g;

    invoke-interface {v0}, Le0/g;->close()V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_f
    check-cast v0, Li0/e;

    invoke-interface {v0}, Li0/e;->N()Le0/c;

    move-result-object v0

    return-object v0

    :pswitch_10
    check-cast v0, Lfd/o;

    invoke-virtual {v0}, Lfd/o;->g()Lorg/maplibre/android/offline/OfflineManager;

    move-result-object v1

    new-instance v2, Lfd/d;

    invoke-direct {v2, v0}, Lfd/d;-><init>(Lfd/o;)V

    invoke-virtual {v1, v2}, Lorg/maplibre/android/offline/OfflineManager;->clearAmbientCache(Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_11
    check-cast v0, Lfa/e;

    iget-object v1, v0, Lfa/e;->j:[Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {v0, v1}, Lha/n0;->d(Lkotlinx/serialization/descriptors/SerialDescriptor;[Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_12
    move-object v1, v0

    check-cast v1, Ld1/b0;

    :cond_4
    iget-object v2, v1, Ld1/b0;->g:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-boolean v0, v1, Ld1/b0;->c:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, v1, Ld1/b0;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, v1, Ld1/b0;->f:Lt0/b;

    iget-object v4, v0, Lt0/b;->l:[Ljava/lang/Object;

    iget v0, v0, Lt0/b;->n:I

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_9

    aget-object v6, v4, v5

    check-cast v6, Ld1/a0;

    iget-object v7, v6, Ld1/a0;->g:Lk/n0;

    iget-object v6, v6, Ld1/a0;->a:Li9/c;

    iget-object v8, v7, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v9, v7, Lk/n0;->a:[J

    array-length v10, v9

    add-int/lit8 v10, v10, -0x2

    if-ltz v10, :cond_8

    const/4 v11, 0x0

    :goto_3
    aget-wide v12, v9, v11

    not-long v14, v12

    const/16 v16, 0x7

    shl-long v14, v14, v16

    and-long/2addr v14, v12

    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v14, v14, v16

    cmp-long v14, v14, v16

    if-eqz v14, :cond_7

    sub-int v14, v11, v10

    not-int v14, v14

    ushr-int/lit8 v14, v14, 0x1f

    const/16 v15, 0x8

    rsub-int/lit8 v14, v14, 0x8

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v14, :cond_6

    const-wide/16 v16, 0xff

    and-long v16, v12, v16

    const-wide/16 v18, 0x80

    cmp-long v16, v16, v18

    if-gez v16, :cond_5

    shl-int/lit8 v16, v11, 0x3

    add-int v16, v16, v3

    move/from16 v17, v15

    aget-object v15, v8, v16

    invoke-interface {v6, v15}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_5
    move/from16 v17, v15

    :goto_5
    shr-long v12, v12, v17

    add-int/lit8 v3, v3, 0x1

    move/from16 v15, v17

    goto :goto_4

    :cond_6
    move v3, v15

    if-ne v14, v3, :cond_8

    :cond_7
    if-eq v11, v10, :cond_8

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v7}, Lk/n0;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :goto_6
    const/4 v3, 0x0

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, v1, Ld1/b0;->c:Z

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_9

    :goto_7
    iput-boolean v3, v1, Ld1/b0;->c:Z

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_a
    :goto_8
    monitor-exit v2

    invoke-virtual {v1}, Ld1/b0;->b()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :goto_9
    monitor-exit v2

    throw v0

    :pswitch_13
    check-cast v0, Lc1/i;

    iget-object v0, v0, Lc1/i;->n:Ln4/f;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    new-array v2, v1, [Lt8/j;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lt8/j;

    invoke-static {v1}, Lg5/f;->o([Lt8/j;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln4/f;->b(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    const/4 v1, 0x0

    :cond_c
    return-object v1

    :pswitch_14
    check-cast v0, Lc1/b;

    iget-object v1, v0, Lc1/b;->l:Lc1/j;

    iget-object v2, v0, Lc1/b;->o:Ljava/lang/Object;

    if-eqz v2, :cond_d

    invoke-interface {v1, v0, v2}, Lc1/j;->c(Lc1/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_d
    const-string v0, "Value should be initialized"

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_15
    check-cast v0, Lb3/k;

    invoke-virtual {v0}, Lb3/k;->c()J

    move-result-wide v0

    new-instance v2, Lb3/j;

    invoke-direct {v2, v0, v1}, Lb3/j;-><init>(J)V

    return-object v2

    :pswitch_16
    check-cast v0, Lr/m1;

    new-instance v1, Lb0/v2;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lb0/v2;-><init>(Lr/m1;F)V

    return-object v1

    :pswitch_17
    check-cast v0, Lb0/r1;

    invoke-virtual {v0}, Lb0/r1;->d()Lb0/z2;

    move-result-object v0

    return-object v0

    :pswitch_18
    check-cast v0, Lp2/g;

    return-object v0

    :pswitch_19
    check-cast v0, Lb/h0;

    new-instance v1, Lb/f0;

    invoke-direct {v1, v0}, Lb/f0;-><init>(Lb/h0;)V

    return-object v1

    :pswitch_1a
    check-cast v0, Landroidx/lifecycle/g1;

    invoke-static {v0}, Landroidx/lifecycle/t0;->g(Landroidx/lifecycle/g1;)Landroidx/lifecycle/v0;

    move-result-object v0

    return-object v0

    :pswitch_1b
    check-cast v0, Lad/j0;

    iget-object v1, v0, Lad/j0;->g:Lua/nav/a;

    iget-object v1, v1, Lua/nav/a;->y:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lua/nav/Tuning;

    iget-object v0, v0, Lad/j0;->O:Lp2/y;

    if-eqz v0, :cond_e

    invoke-virtual {v0, v1}, Lp2/y;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lua/nav/Tuning;

    :cond_e
    return-object v1

    :pswitch_1c
    check-cast v0, Lad/x;

    iget-object v1, v0, Lad/x;->c:Lp/a1;

    invoke-virtual {v1}, Lp/a1;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lua/nav/Tuning;

    iget-object v0, v0, Lad/x;->g:Lad/f2;

    if-eqz v0, :cond_f

    invoke-virtual {v0, v1}, Lad/f2;->a(Lua/nav/Tuning;)Lua/nav/Tuning;

    move-result-object v1

    :cond_f
    return-object v1

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
