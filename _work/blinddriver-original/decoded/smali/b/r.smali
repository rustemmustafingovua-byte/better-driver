.class public final synthetic Lb/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p6, p0, Lb/r;->l:I

    iput-object p1, p0, Lb/r;->m:Ljava/lang/Object;

    iput-object p2, p0, Lb/r;->n:Ljava/lang/Object;

    iput-object p3, p0, Lb/r;->o:Ljava/lang/Object;

    iput-object p4, p0, Lb/r;->p:Ljava/lang/Object;

    iput-object p5, p0, Lb/r;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lb/r;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lb/r;->m:Ljava/lang/Object;

    check-cast v0, Lx4/j;

    iget-object v1, p0, Lb/r;->n:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lb/r;->o:Ljava/lang/Object;

    check-cast v2, Li9/a;

    iget-object v3, p0, Lb/r;->p:Ljava/lang/Object;

    check-cast v3, Landroidx/lifecycle/d0;

    iget-object p0, p0, Lb/r;->q:Ljava/lang/Object;

    check-cast p0, Lg3/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lu4/a;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    const-string v0, "label"

    invoke-static {v1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lr5/h1;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    invoke-interface {v2}, Li9/a;->invoke()Ljava/lang/Object;

    sget-object v0, Lx4/j;->c:Lx4/x;

    invoke-virtual {v3, v0}, Landroidx/lifecycle/d0;->d(Ll9/a;)V

    invoke-virtual {p0, v0}, Lg3/i;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    new-instance v1, Lx4/w;

    invoke-direct {v1, v0}, Lx4/w;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v1}, Landroidx/lifecycle/d0;->d(Ll9/a;)V

    invoke-virtual {p0, v0}, Lg3/i;->b(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    if-eqz v4, :cond_1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_1
    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    if-eqz v4, :cond_2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_2
    throw p0

    :pswitch_0
    iget-object v0, p0, Lb/r;->m:Ljava/lang/Object;

    check-cast v0, Lcom/graphhopper/routing/lm/LMPreparationHandler;

    iget-object v1, p0, Lb/r;->n:Ljava/lang/Object;

    check-cast v1, Lcom/graphhopper/storage/BaseGraph;

    iget-object v2, p0, Lb/r;->o:Ljava/lang/Object;

    check-cast v2, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    iget-object v3, p0, Lb/r;->p:Ljava/lang/Object;

    check-cast v3, Lcom/graphhopper/routing/lm/LMConfig;

    iget-object p0, p0, Lb/r;->q:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v2, v3, v0, v1, p0}, Lcom/graphhopper/routing/lm/LMPreparationHandler;->a(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/routing/lm/LMConfig;Lcom/graphhopper/routing/lm/LMPreparationHandler;Lcom/graphhopper/storage/BaseGraph;Ljava/util/List;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lb/r;->m:Ljava/lang/Object;

    check-cast v0, Lp2/m0;

    iget-object v1, p0, Lb/r;->n:Ljava/lang/Object;

    check-cast v1, Lb3/m;

    iget-object v2, p0, Lb/r;->o:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    iget-object v2, p0, Lb/r;->p:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Lb3/c;

    iget-object p0, p0, Lb/r;->q:Ljava/lang/Object;

    move-object v8, p0

    check-cast v8, Lt2/d;

    const-string p0, "BackgroundTextMeasurement"

    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_3
    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object p0

    instance-of v2, p0, Ld1/c;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    check-cast p0, Ld1/c;

    goto :goto_1

    :cond_3
    move-object p0, v3

    :goto_1
    if-eqz p0, :cond_4

    invoke-virtual {p0, v3, v3}, Ld1/c;->C(Li9/c;Li9/c;)Ld1/c;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz p0, :cond_4

    :try_start_4
    invoke-virtual {p0}, Ld1/g;->j()Ld1/g;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static {v0, v1}, Lp2/d0;->h(Lp2/m0;Lb3/m;)Lp2/m0;

    move-result-object v5

    sget-object v6, Lu8/r;->l:Lu8/r;

    new-instance v3, Lx2/c;

    move-object v7, v6

    invoke-direct/range {v3 .. v9}, Lx2/c;-><init>(Ljava/lang/String;Lp2/m0;Ljava/util/List;Ljava/util/List;Lt2/d;Lb3/c;)V

    invoke-virtual {v3}, Lx2/c;->d()F
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-static {v2}, Ld1/g;->q(Ld1/g;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {p0}, Ld1/c;->w()Ld1/w;

    move-result-object v0

    invoke-virtual {v0}, Ld1/w;->d()V

    invoke-virtual {p0}, Ld1/c;->c()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-static {v2}, Ld1/g;->q(Ld1/g;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_2
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_a
    invoke-virtual {p0}, Ld1/c;->c()V

    throw v0

    :catchall_5
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot create a mutable snapshot of an read-only snapshot"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :pswitch_2
    iget-object v0, p0, Lb/r;->m:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lb/u;

    iget-object v0, p0, Lb/r;->n:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lb/k0;

    iget-object v0, p0, Lb/r;->o:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lb/k0;

    iget-object v0, p0, Lb/r;->p:Ljava/lang/Object;

    check-cast v0, Lua/nav/MainActivity;

    iget-object p0, p0, Lb/r;->q:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Landroid/view/View;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const-string p0, "getWindow(...)"

    invoke-static {v4, p0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, v2, Lb/k0;->c:Li9/c;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v6, "getResources(...)"

    invoke-static {v0, v6}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iget-object v0, v3, Lb/k0;->c:Li9/c;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v6}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move v6, p0

    invoke-virtual/range {v1 .. v7}, Lb/u;->a(Lb/k0;Lb/k0;Landroid/view/Window;Landroid/view/View;ZZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
