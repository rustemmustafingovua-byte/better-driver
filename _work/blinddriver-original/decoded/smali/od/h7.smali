.class public final synthetic Lod/h7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lr0/u0;

.field public final synthetic o:Lr0/u0;

.field public final synthetic p:Landroid/content/Context;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Lr0/u0;

.field public final synthetic s:Lr0/u0;

.field public final synthetic t:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lod/h7;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/h7;->p:Landroid/content/Context;

    iput-object p2, p0, Lod/h7;->n:Lr0/u0;

    iput-object p3, p0, Lod/h7;->o:Lr0/u0;

    iput-object p4, p0, Lod/h7;->r:Lr0/u0;

    iput-object p5, p0, Lod/h7;->s:Lr0/u0;

    iput-object p6, p0, Lod/h7;->t:Lr0/u0;

    iput-object p7, p0, Lod/h7;->m:Ljava/lang/Object;

    iput-object p8, p0, Lod/h7;->q:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lu9/t;Lr0/u0;Lr0/u0;Landroid/content/Context;Li9/a;Lr0/u0;Lr0/u0;Lr0/u0;I)V
    .locals 0

    .line 2
    iput p9, p0, Lod/h7;->l:I

    iput-object p1, p0, Lod/h7;->m:Ljava/lang/Object;

    iput-object p2, p0, Lod/h7;->n:Lr0/u0;

    iput-object p3, p0, Lod/h7;->o:Lr0/u0;

    iput-object p4, p0, Lod/h7;->p:Landroid/content/Context;

    iput-object p5, p0, Lod/h7;->q:Ljava/lang/Object;

    iput-object p6, p0, Lod/h7;->r:Lr0/u0;

    iput-object p7, p0, Lod/h7;->s:Lr0/u0;

    iput-object p8, p0, Lod/h7;->t:Lr0/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 15

    iget v0, p0, Lod/h7;->l:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lod/h7;->p:Landroid/content/Context;

    iget-object v3, p0, Lod/h7;->n:Lr0/u0;

    iget-object v4, p0, Lod/h7;->o:Lr0/u0;

    iget-object v5, p0, Lod/h7;->r:Lr0/u0;

    iget-object v6, p0, Lod/h7;->s:Lr0/u0;

    iget-object v7, p0, Lod/h7;->t:Lr0/u0;

    iget-object v8, p0, Lod/h7;->m:Ljava/lang/Object;

    check-cast v8, Lr0/u0;

    iget-object p0, p0, Lod/h7;->q:Ljava/lang/Object;

    check-cast p0, Lr0/r2;

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, p0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_0
    invoke-interface {v4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, p0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_1
    invoke-interface {v5}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v5, p0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_2
    sget-object v3, Lsc/i0;->a:Lsc/i0;

    sget-boolean v3, Lsc/i0;->T:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    sput-boolean v4, Lsc/i0;->T:Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v6, p0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    instance-of p0, v0, Landroid/app/Activity;

    if-eqz p0, :cond_3

    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    :cond_3
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_e

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-interface {v7}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    invoke-interface {v8}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lad/a0;

    iget-boolean v5, v5, Lad/a0;->a:Z

    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-lez v13, :cond_5

    sub-long v11, v9, v11

    const-wide/16 v13, 0xbb8

    cmp-long v11, v11, v13

    if-gtz v11, :cond_5

    goto :goto_0

    :cond_5
    move v3, v4

    :goto_0
    const/4 v11, 0x1

    add-int/2addr v3, v11

    const/4 v12, 0x2

    if-eqz v5, :cond_6

    goto :goto_1

    :cond_6
    move v1, v12

    :goto_1
    if-lt v3, v1, :cond_7

    move v5, v11

    goto :goto_2

    :cond_7
    move v5, v4

    :goto_2
    sub-int/2addr v1, v3

    if-gez v1, :cond_8

    move v1, v4

    :cond_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v3}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v7, v3}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    if-eqz v5, :cond_d

    instance-of p0, v0, Landroid/app/Activity;

    if-eqz p0, :cond_9

    check-cast v0, Landroid/app/Activity;

    move-object p0, v0

    goto :goto_3

    :cond_9
    move-object p0, v2

    :goto_3
    if-eqz p0, :cond_14

    const-class v1, Landroid/app/NotificationManager;

    const-string v3, "app"

    :try_start_0
    invoke-static {}, Lsc/i0;->l()Lad/j0;

    move-result-object v0

    invoke-virtual {v0}, Lad/j0;->K()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_4
    :try_start_1
    invoke-static {}, Lsc/i0;->i()Lad/x;

    move-result-object v0

    iget-object v4, v0, Lad/x;->l:Lu9/j1;

    if-eqz v4, :cond_a

    invoke-virtual {v4, v2}, Lu9/c1;->c(Ljava/util/concurrent/CancellationException;)V

    :cond_a
    iput-object v2, v0, Lad/x;->l:Lu9/j1;

    iget-object v0, v0, Lad/x;->a:Ldd/k0;

    iget-object v0, v0, Ldd/k0;->j:Ldd/m;

    iput-object v2, v0, Ldd/m;->k:Lad/u;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_5
    :try_start_2
    invoke-static {}, Lsc/i0;->u()Lua/nav/stats/a;

    move-result-object v0

    invoke-virtual {v0}, Lua/nav/stats/a;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_6
    invoke-static {}, Lsc/i0;->z()V

    :try_start_3
    sget-object v0, Lsc/i0;->F:Landroid/app/Application;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v11}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_8

    :catchall_3
    move-exception v0

    goto :goto_7

    :cond_b
    invoke-static {v3}, Lj9/n;->m(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_7
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_8
    :try_start_4
    sget-object v0, Lsc/i0;->F:Landroid/app/Application;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v11}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_a

    :catchall_4
    move-exception v0

    goto :goto_9

    :cond_c
    invoke-static {v3}, Lj9/n;->m(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :goto_9
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_a
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lf2/l;

    invoke-direct {v0, v11}, Lf2/l;-><init>(I)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_e

    :cond_d
    invoke-interface {v8}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lad/a0;

    iget-boolean v2, v2, Lad/a0;->a:Z

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldd/n;

    iget-boolean p0, p0, Ldd/n;->l:Z

    invoke-static {}, Lg5/f;->r()Lv8/b;

    move-result-object v3

    if-eqz v2, :cond_e

    const-string v5, "\u0437\u0443\u043f\u0438\u043d\u0438\u0442\u0438 \u0432\u0435\u0434\u0435\u043d\u043d\u044f"

    invoke-virtual {v3, v5}, Lv8/b;->add(Ljava/lang/Object;)Z

    :cond_e
    if-eqz p0, :cond_f

    const-string p0, "\u0437\u0443\u043f\u0438\u043d\u0438\u0442\u0438 \u0437\u0430\u043f\u0438\u0441 \u043b\u043e\u0433\u0443"

    invoke-virtual {v3, p0}, Lv8/b;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-static {v3}, Lg5/f;->n(Lv8/b;)Lv8/b;

    move-result-object v5

    invoke-virtual {v5}, Lv8/b;->isEmpty()Z

    move-result p0

    const-string v3, ""

    if-eqz p0, :cond_10

    move-object p0, v3

    goto :goto_b

    :cond_10
    const-string p0, " \u0456 "

    invoke-static {p0}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v9, 0x0

    const/16 v10, 0x3e

    const-string v6, ", "

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_b
    if-eqz v2, :cond_11

    const-string v3, "\u0412\u0435\u0434\u0435\u043d\u043d\u044f \u0442\u0440\u0438\u0432\u0430\u0454! "

    :cond_11
    if-ne v1, v11, :cond_12

    const-string v1, "\u0449\u0435 \u0440\u0430\u0437"

    goto :goto_d

    :cond_12
    const-string v2, "\u0449\u0435 "

    if-gt v12, v1, :cond_13

    const/4 v5, 0x5

    if-ge v1, v5, :cond_13

    const-string v5, " \u0440\u0430\u0437\u0438"

    :goto_c
    invoke-static {v1, v2, v5}, Lm/a;->i(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_13
    const-string v5, " \u0440\u0430\u0437\u0456\u0432"

    goto :goto_c

    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u041d\u0430\u0442\u0438\u0441\u043d\u0456\u0442\u044c \u00ab\u041d\u0430\u0437\u0430\u0434\u00bb "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", \u0449\u043e\u0431 \u0437\u0430\u043a\u0440\u0438\u0442\u0438 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcd/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_14
    :goto_e
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lod/h7;->m:Ljava/lang/Object;

    check-cast v0, Lu9/t;

    iget-object v9, p0, Lod/h7;->n:Lr0/u0;

    iget-object v10, p0, Lod/h7;->o:Lr0/u0;

    iget-object v5, p0, Lod/h7;->p:Landroid/content/Context;

    iget-object v3, p0, Lod/h7;->q:Ljava/lang/Object;

    move-object v6, v3

    check-cast v6, Li9/a;

    iget-object v7, p0, Lod/h7;->r:Lr0/u0;

    iget-object v8, p0, Lod/h7;->s:Lr0/u0;

    iget-object v11, p0, Lod/h7;->t:Lr0/u0;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v9, p0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    invoke-interface {v10, v2}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    new-instance v3, Lod/j7;

    const/4 v12, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v3 .. v12}, Lod/j7;-><init>(ZLandroid/content/Context;Li9/a;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V

    invoke-static {v0, v2, v2, v3, v1}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :goto_f
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lod/h7;->m:Ljava/lang/Object;

    check-cast v0, Lu9/t;

    iget-object v9, p0, Lod/h7;->n:Lr0/u0;

    iget-object v10, p0, Lod/h7;->o:Lr0/u0;

    iget-object v5, p0, Lod/h7;->p:Landroid/content/Context;

    iget-object v3, p0, Lod/h7;->q:Ljava/lang/Object;

    move-object v6, v3

    check-cast v6, Li9/a;

    iget-object v7, p0, Lod/h7;->r:Lr0/u0;

    iget-object v8, p0, Lod/h7;->s:Lr0/u0;

    iget-object v11, p0, Lod/h7;->t:Lr0/u0;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v9, p0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    invoke-interface {v10, v2}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    new-instance v3, Lod/j7;

    const/4 v12, 0x0

    const/4 v4, 0x1

    invoke-direct/range {v3 .. v12}, Lod/j7;-><init>(ZLandroid/content/Context;Li9/a;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V

    invoke-static {v0, v2, v2, v3, v1}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    goto :goto_f

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
