.class public final Lg0/f;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public final synthetic n:Li0/f;

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Li0/f;Ljava/lang/Object;Ly8/c;I)V
    .locals 0

    iput p4, p0, Lg0/f;->l:I

    iput-object p1, p0, Lg0/f;->n:Li0/f;

    iput-object p2, p0, Lg0/f;->o:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ly8/c;)Ly8/c;
    .locals 3

    iget v0, p0, Lg0/f;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lg0/f;

    iget-object v1, p0, Lg0/f;->n:Li0/f;

    check-cast v1, Li0/c;

    iget-object p0, p0, Lg0/f;->o:Ljava/lang/Object;

    check-cast p0, Li0/b;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, p1, v2}, Lg0/f;-><init>(Li0/f;Ljava/lang/Object;Ly8/c;I)V

    return-object v0

    :pswitch_0
    new-instance v0, Lg0/f;

    iget-object v1, p0, Lg0/f;->n:Li0/f;

    check-cast v1, Lg0/g;

    iget-object p0, p0, Lg0/f;->o:Ljava/lang/Object;

    check-cast p0, Li0/e;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lg0/f;-><init>(Li0/f;Ljava/lang/Object;Ly8/c;I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lg0/f;->l:I

    check-cast p1, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lg0/f;->create(Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lg0/f;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lg0/f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lg0/f;->create(Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lg0/f;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lg0/f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lg0/f;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg0/f;->o:Ljava/lang/Object;

    check-cast v0, Li0/b;

    iget-object v1, p0, Lg0/f;->n:Li0/f;

    check-cast v1, Li0/c;

    iget-object v1, v1, Li0/c;->c:Lr0/e1;

    sget-object v2, Lz8/a;->l:Lz8/a;

    iget v3, p0, Lg0/f;->m:I

    const/4 v4, 0x0

    sget-object v5, Lt8/z;->a:Lt8/z;

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v6, :cond_0

    :try_start_0
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    :try_start_1
    invoke-virtual {v1, v0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iput v6, p0, Lg0/f;->m:I

    iget-object p1, v0, Li0/b;->b:Lw9/e;

    invoke-virtual {p1, p0}, Lw9/e;->h(Ly8/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, v2, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v5

    :goto_0
    if-ne p0, v2, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v1, v4}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    move-object v2, v5

    :goto_2
    return-object v2

    :goto_3
    invoke-virtual {v1, v4}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    throw p0

    :pswitch_0
    iget-object v0, p0, Lg0/f;->n:Li0/f;

    check-cast v0, Lg0/g;

    iget-object v1, v0, Lg0/g;->e:Ld1/b0;

    iget-object v2, v0, Lg0/g;->a:Landroid/view/View;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v4, p0, Lg0/f;->m:I

    sget-object v5, Lt8/z;->a:Lt8/z;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_5

    if-ne v4, v6, :cond_4

    :try_start_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_9

    :catchall_1
    move-exception p0

    goto/16 :goto_d

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    new-instance p1, Lg0/e;

    invoke-direct {p1}, Lg0/e;-><init>()V

    iget-object v4, p0, Lg0/f;->o:Ljava/lang/Object;

    check-cast v4, Li0/e;

    new-instance v8, Lg0/d;

    new-instance v9, Lg0/b;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v4, v10}, Lg0/b;-><init>(Lg0/g;Li0/e;I)V

    new-instance v10, Lg0/b;

    const/4 v11, 0x1

    invoke-direct {v10, v0, v4, v11}, Lg0/b;-><init>(Lg0/g;Li0/e;I)V

    invoke-direct {v8, p1, v9, v10, v2}, Lg0/d;-><init>(Lg0/e;Lg0/b;Lg0/b;Landroid/view/View;)V

    iget-object v4, v0, Lg0/g;->b:Li9/c;

    if-eqz v4, :cond_7

    invoke-interface {v4, v8}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg0/d;

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    move-object v8, v4

    :cond_7
    :goto_4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    goto :goto_5

    :cond_8
    move-object v9, v7

    :goto_5
    if-eq v4, v9, :cond_a

    iget-object v4, v0, Lg0/g;->i:Landroidx/fragment/app/e;

    if-nez v4, :cond_9

    new-instance v4, Landroidx/fragment/app/e;

    const/4 v9, 0x3

    invoke-direct {v4, v0, v8, p1, v9}, Landroidx/fragment/app/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v4, v0, Lg0/g;->i:Landroidx/fragment/app/e;

    :cond_9
    invoke-virtual {v2, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    :cond_a
    new-instance v4, Lg0/n;

    invoke-direct {v4, v8}, Lg0/n;-><init>(Lg0/d;)V

    invoke-virtual {v2, v4, v6}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v4

    if-nez v4, :cond_b

    :goto_6
    move-object v3, v5

    goto :goto_c

    :cond_b
    iput-object v4, v0, Lg0/g;->h:Landroid/view/ActionMode;

    :goto_7
    :try_start_3
    iput v6, p0, Lg0/f;->m:I

    iget-object p1, p1, Lg0/e;->a:Lw9/e;

    invoke-virtual {p1, p0}, Lw9/e;->h(Ly8/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne p0, v3, :cond_c

    goto :goto_8

    :cond_c
    move-object p0, v5

    :goto_8
    if-ne p0, v3, :cond_d

    goto :goto_c

    :cond_d
    :goto_9
    invoke-virtual {v1}, Ld1/b0;->a()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_a

    :cond_e
    move-object p1, v7

    :goto_a
    if-eq p0, p1, :cond_10

    iget-object p0, v0, Lg0/g;->j:Ljava/lang/Runnable;

    if-nez p0, :cond_f

    new-instance p0, Landroidx/lifecycle/f0;

    const/4 p1, 0x6

    invoke-direct {p0, p1, v0}, Landroidx/lifecycle/f0;-><init>(ILjava/lang/Object;)V

    iput-object p0, v0, Lg0/g;->j:Ljava/lang/Runnable;

    :cond_f
    invoke-virtual {v2, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_b

    :cond_10
    iget-object p0, v0, Lg0/g;->h:Landroid/view/ActionMode;

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/view/ActionMode;->finish()V

    :cond_11
    :goto_b
    iget-object p0, v0, Lg0/g;->i:Landroidx/fragment/app/e;

    if-eqz p0, :cond_12

    invoke-virtual {v2, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_12
    iput-object v7, v0, Lg0/g;->h:Landroid/view/ActionMode;

    goto :goto_6

    :goto_c
    return-object v3

    :goto_d
    invoke-virtual {v1}, Ld1/b0;->a()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_e

    :cond_13
    move-object v1, v7

    :goto_e
    if-eq p1, v1, :cond_15

    iget-object p1, v0, Lg0/g;->j:Ljava/lang/Runnable;

    if-nez p1, :cond_14

    new-instance p1, Landroidx/lifecycle/f0;

    const/4 v1, 0x6

    invoke-direct {p1, v1, v0}, Landroidx/lifecycle/f0;-><init>(ILjava/lang/Object;)V

    iput-object p1, v0, Lg0/g;->j:Ljava/lang/Runnable;

    :cond_14
    invoke-virtual {v2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_f

    :cond_15
    iget-object p1, v0, Lg0/g;->h:Landroid/view/ActionMode;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_16
    :goto_f
    iget-object p1, v0, Lg0/g;->i:Landroidx/fragment/app/e;

    if-eqz p1, :cond_17

    invoke-virtual {v2, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_17
    iput-object v7, v0, Lg0/g;->h:Landroid/view/ActionMode;

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
