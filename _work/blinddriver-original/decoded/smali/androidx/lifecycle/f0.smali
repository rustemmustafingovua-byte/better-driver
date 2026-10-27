.class public final synthetic Landroidx/lifecycle/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/lifecycle/f0;->l:I

    iput-object p2, p0, Landroidx/lifecycle/f0;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/lifecycle/f0;->l:I

    iget-object v0, v0, Landroidx/lifecycle/f0;->m:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lu9/v0;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lu9/v0;->c(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void

    :pswitch_0
    move-object v1, v0

    check-cast v1, Lx3/o;

    const-string v0, "fetchFonts result is not OK. ("

    iget-object v2, v1, Lx3/o;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Lx3/o;->h:La/a;

    if-nez v3, :cond_1

    monitor-exit v2

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Lx3/o;->c()Lo3/d;

    move-result-object v2

    iget v3, v2, Lo3/d;->f:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    iget-object v4, v1, Lx3/o;->d:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    goto/16 :goto_3

    :cond_2
    :goto_0
    if-nez v3, :cond_5

    :try_start_4
    const-string v0, "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v1, Lx3/o;->c:Lwa/e;

    iget-object v3, v1, Lx3/o;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v2}, [Lo3/d;

    move-result-object v0

    invoke-static {v3, v0}, Ll3/c;->a(Landroid/content/Context;[Lo3/d;)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v3, v1, Lx3/o;->a:Landroid/content/Context;

    iget-object v2, v2, Lo3/d;->a:Landroid/net/Uri;

    invoke-static {v3, v2}, La/a;->q(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    :try_start_5
    const-string v3, "EmojiCompat.MetadataRepo.create"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v3, Lg5/i;

    invoke-static {v2}, Lc6/o;->Y(Ljava/nio/MappedByteBuffer;)Ly3/b;

    move-result-object v2

    invoke-direct {v3, v0, v2}, Lg5/i;-><init>(Landroid/graphics/Typeface;Ly3/b;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v2, v1, Lx3/o;->d:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    iget-object v0, v1, Lx3/o;->h:La/a;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, La/a;->t(Lg5/i;)V

    goto :goto_1

    :catchall_3
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-virtual {v1}, Lx3/o;->b()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_5

    :goto_2
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_4
    move-exception v0

    :try_start_c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Unable to open file."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    move-exception v0

    :try_start_d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :goto_3
    iget-object v3, v1, Lx3/o;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_e
    iget-object v2, v1, Lx3/o;->h:La/a;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v0}, La/a;->s(Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_6
    move-exception v0

    goto :goto_6

    :cond_6
    :goto_4
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    invoke-virtual {v1}, Lx3/o;->b()V

    :goto_5
    return-void

    :goto_6
    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v0

    :goto_7
    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    throw v0

    :pswitch_1
    check-cast v0, Le6/g;

    iget-object v1, v0, Le6/g;->d:Ljava/lang/Object;

    check-cast v1, Lg5/m;

    const/4 v2, 0x0

    iput-object v2, v0, Le6/g;->n:Ljava/lang/Object;

    iget-object v3, v0, Le6/g;->m:Ljava/lang/Object;

    check-cast v3, Lt0/b;

    iget-object v0, v0, Le6/g;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    if-ne v0, v5, :cond_7

    invoke-virtual {v3}, Lt0/b;->g()V

    goto/16 :goto_e

    :cond_7
    iget-object v0, v3, Lt0/b;->l:[Ljava/lang/Object;

    iget v4, v3, Lt0/b;->n:I

    const/4 v6, 0x0

    move-object v7, v2

    move v8, v6

    :goto_8
    if-ge v8, v4, :cond_e

    aget-object v9, v0, v8

    check-cast v9, Lu2/z;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    if-eqz v10, :cond_c

    if-eq v10, v5, :cond_b

    const/4 v11, 0x2

    if-eq v10, v11, :cond_9

    const/4 v11, 0x3

    if-ne v10, v11, :cond_8

    goto :goto_9

    :cond_8
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9
    :goto_9
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v10}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    sget-object v7, Lu2/z;->n:Lu2/z;

    if-ne v9, v7, :cond_a

    move v7, v5

    goto :goto_a

    :cond_a
    move v7, v6

    :goto_a
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_c

    :cond_b
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_b
    move-object v7, v2

    goto :goto_c

    :cond_c
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_b

    :cond_d
    :goto_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_e
    invoke-virtual {v3}, Lt0/b;->g()V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Lg5/m;->n:Ljava/lang/Object;

    invoke-interface {v0}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v1, Lg5/m;->m:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_f
    if-eqz v7, :cond_11

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Lg5/m;->o:Ljava/lang/Object;

    check-cast v0, Lq3/k;

    iget-object v0, v0, Lq3/k;->m:Ljava/lang/Object;

    check-cast v0, Lm2/j;

    invoke-virtual {v0}, Lm2/j;->E()V

    goto :goto_d

    :cond_10
    iget-object v0, v1, Lg5/m;->o:Ljava/lang/Object;

    check-cast v0, Lq3/k;

    iget-object v0, v0, Lq3/k;->m:Ljava/lang/Object;

    check-cast v0, Lm2/j;

    invoke-virtual {v0}, Lm2/j;->g()V

    :cond_11
    :goto_d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v1, Lg5/m;->n:Ljava/lang/Object;

    invoke-interface {v0}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Lg5/m;->m:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_12
    :goto_e
    return-void

    :pswitch_2
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    :pswitch_3
    check-cast v0, Lorg/maplibre/android/maps/MapView;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapView;->a(Lorg/maplibre/android/maps/MapView;)V

    return-void

    :pswitch_4
    check-cast v0, Ln0/e;

    invoke-static {v0}, Ln0/e;->a(Ln0/e;)V

    return-void

    :pswitch_5
    check-cast v0, Lh1/d;

    invoke-virtual {v0}, Lh1/d;->i()Z

    move-result v1

    iget-object v2, v0, Lh1/d;->l:Lf2/y;

    if-nez v1, :cond_13

    goto/16 :goto_13

    :cond_13
    const-string v1, "ContentCapture:changeChecker"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v1, 0x1

    :try_start_11
    invoke-virtual {v2, v1}, Lf2/y;->u(Z)V

    iget-object v1, v0, Lh1/d;->w:Lk/x;

    iget-object v3, v1, Lk/k;->b:[I

    iget-object v1, v1, Lk/k;->a:[J

    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_17

    const/4 v6, 0x0

    :goto_f
    aget-wide v7, v1, v6

    not-long v9, v7

    const/4 v11, 0x7

    shl-long/2addr v9, v11

    and-long/2addr v9, v7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_16

    sub-int v9, v6, v4

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v9, v9, 0x8

    const/4 v11, 0x0

    :goto_10
    if-ge v11, v9, :cond_15

    const-wide/16 v12, 0xff

    and-long/2addr v12, v7

    const-wide/16 v14, 0x80

    cmp-long v12, v12, v14

    if-gez v12, :cond_14

    shl-int/lit8 v12, v6, 0x3

    add-int/2addr v12, v11

    aget v14, v3, v12

    invoke-virtual {v0}, Lh1/d;->h()Lk/k;

    move-result-object v12

    invoke-virtual {v12, v14}, Lk/k;->a(I)Z

    move-result v12

    if-nez v12, :cond_14

    iget-object v12, v0, Lh1/d;->o:Ljava/util/ArrayList;

    new-instance v13, Lh1/e;

    move/from16 v19, v6

    iget-wide v5, v0, Lh1/d;->v:J

    sget-object v17, Lh1/f;->m:Lh1/f;

    const/16 v18, 0x0

    move-wide v15, v5

    invoke-direct/range {v13 .. v18}, Lh1/e;-><init>(IJLh1/f;Lb0/l1;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lh1/d;->s:Lw9/e;

    sget-object v6, Lt8/z;->a:Lt8/z;

    invoke-interface {v5, v6}, Lw9/u;->l(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_14
    move/from16 v19, v6

    :goto_11
    shr-long/2addr v7, v10

    add-int/lit8 v11, v11, 0x1

    move/from16 v6, v19

    goto :goto_10

    :cond_15
    move/from16 v19, v6

    if-ne v9, v10, :cond_17

    move/from16 v5, v19

    goto :goto_12

    :cond_16
    move v5, v6

    :goto_12
    if-eq v5, v4, :cond_17

    add-int/lit8 v6, v5, 0x1

    goto :goto_f

    :cond_17
    const-string v1, "ContentCapture:sendAppearEvents"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    :try_start_12
    invoke-virtual {v2}, Lf2/y;->getSemanticsOwner()Lm2/r;

    move-result-object v1

    invoke-virtual {v1}, Lm2/r;->a()Lm2/p;

    move-result-object v1

    iget-object v2, v0, Lh1/d;->x:Lf2/j2;

    invoke-virtual {v0, v1, v2}, Lh1/d;->k(Lm2/p;Lf2/j2;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    :try_start_13
    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual {v0}, Lh1/d;->h()Lk/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh1/d;->f(Lk/k;)V

    invoke-virtual {v0}, Lh1/d;->n()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lh1/d;->y:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_13
    return-void

    :catchall_7
    move-exception v0

    :try_start_14
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    :catchall_8
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :pswitch_6
    check-cast v0, Lg0/g;

    iget-object v0, v0, Lg0/g;->h:Landroid/view/ActionMode;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_18
    return-void

    :pswitch_7
    check-cast v0, Lf2/e0;

    const-string v1, "measureAndLayout"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_15
    iget-object v1, v0, Lf2/e0;->o:Lf2/y;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lf2/y;->u(Z)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v1, "checkForSemanticsChanges"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_16
    invoke-virtual {v0}, Lf2/e0;->g()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lf2/e0;->U:Z

    return-void

    :catchall_9
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :catchall_a
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :pswitch_8
    check-cast v0, Ldd/k0;

    iget-boolean v1, v0, Ldd/k0;->m:Z

    if-nez v1, :cond_19

    goto :goto_14

    :cond_19
    const-string v1, "stuck"

    invoke-virtual {v0, v1}, Ldd/k0;->c(Ljava/lang/String;)V

    :try_start_17
    iget-object v2, v0, Ldd/k0;->f:Landroid/location/LocationManager;

    const-string v3, "gps"

    iget-object v7, v0, Ldd/k0;->v:Ldd/b0;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    goto :goto_14

    :catchall_b
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_14
    return-void

    :pswitch_9
    check-cast v0, Ljava/util/stream/Stream;

    invoke-static {v0}, Lcom/graphhopper/util/GHUtility;->g(Ljava/util/stream/Stream;)V

    return-void

    :pswitch_a
    check-cast v0, Lb/q;

    invoke-static {v0}, Lb/q;->c(Lb/q;)V

    return-void

    :pswitch_b
    check-cast v0, Lb/l;

    iget-object v1, v0, Lb/l;->m:Ljava/lang/Runnable;

    if-eqz v1, :cond_1a

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x0

    iput-object v1, v0, Lb/l;->m:Ljava/lang/Runnable;

    :cond_1a
    return-void

    :pswitch_c
    check-cast v0, Landroidx/lifecycle/h0;

    iget-object v1, v0, Landroidx/lifecycle/h0;->q:Landroidx/lifecycle/x;

    iget v2, v0, Landroidx/lifecycle/h0;->m:I

    const/4 v3, 0x1

    if-nez v2, :cond_1b

    iput-boolean v3, v0, Landroidx/lifecycle/h0;->n:Z

    sget-object v2, Landroidx/lifecycle/o;->ON_PAUSE:Landroidx/lifecycle/o;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/x;->e(Landroidx/lifecycle/o;)V

    :cond_1b
    iget v2, v0, Landroidx/lifecycle/h0;->l:I

    if-nez v2, :cond_1c

    iget-boolean v2, v0, Landroidx/lifecycle/h0;->n:Z

    if-eqz v2, :cond_1c

    sget-object v2, Landroidx/lifecycle/o;->ON_STOP:Landroidx/lifecycle/o;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/x;->e(Landroidx/lifecycle/o;)V

    iput-boolean v3, v0, Landroidx/lifecycle/h0;->o:Z

    :cond_1c
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
