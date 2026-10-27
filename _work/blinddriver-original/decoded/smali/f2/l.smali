.class public final synthetic Lf2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lf2/l;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget p0, p0, Lf2/l;->l:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void

    :pswitch_0
    sget-object p0, Lsc/i0;->F:Landroid/app/Application;

    if-eqz p0, :cond_0

    const-string v0, "\u041f\u043e\u0437\u0438\u0446\u0456\u044f \u0434\u043b\u044f \u0456\u043d\u0448\u0438\u0445 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0456\u0432 \u2014 \u0443 \u043f\u043b\u0430\u0442\u043d\u0456\u0439 \u0432\u0435\u0440\u0441\u0456\u0457 (\u043f\u0456\u0441\u043b\u044f \u043f\u0440\u043e\u0431\u043d\u043e\u0433\u043e \u043f\u0435\u0440\u0456\u043e\u0434\u0443)"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const-string p0, "app"

    invoke-static {p0}, Lj9/n;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void

    :pswitch_2
    sget-object p0, Lf2/y;->Y0:Lk/h0;

    monitor-enter p0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lk/h0;->a:[Ljava/lang/Object;

    iget v1, p0, Lk/h0;->b:I

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    check-cast v3, Lf2/y;

    invoke-virtual {v3}, Lf2/y;->getShowLayoutBounds()Z

    move-result v4

    sget-object v5, Lf2/y;->V0:Ljava/lang/Class;

    invoke-static {}, Lf2/k0;->j()Z

    move-result v5

    invoke-virtual {v3, v5}, Lf2/y;->setShowLayoutBounds(Z)V

    invoke-virtual {v3}, Lf2/y;->getShowLayoutBounds()Z

    move-result v5

    if-eq v4, v5, :cond_1

    invoke-virtual {v3}, Lf2/y;->getRoot()Le2/g0;

    move-result-object v3

    invoke-static {v3}, Lf2/y;->n(Le2/g0;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lk/h0;->a:[Ljava/lang/Object;

    iget v1, p0, Lk/h0;->b:I

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    check-cast v3, Lf2/y;

    invoke-virtual {v3}, Lf2/y;->getRoot()Le2/g0;

    move-result-object v3

    invoke-static {v3}, Lf2/y;->n(Le2/g0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
