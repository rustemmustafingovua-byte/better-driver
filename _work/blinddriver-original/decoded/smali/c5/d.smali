.class public final Lc5/d;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lc5/d;->l:I

    iput-object p1, p0, Lc5/d;->n:Ljava/lang/Object;

    iput-object p2, p0, Lc5/d;->m:Ljava/lang/Object;

    iput-object p3, p0, Lc5/d;->o:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lc5/d;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lc5/d;->n:Ljava/lang/Object;

    check-cast v0, Lf2/a;

    iget-object v1, p0, Lc5/d;->m:Ljava/lang/Object;

    check-cast v1, Lf2/n2;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p0, p0, Lc5/d;->o:Ljava/lang/Object;

    check-cast p0, Lc2/c0;

    const-string v1, "listener"

    invoke-static {p0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lpc/h;->l(Landroid/view/View;)Lv3/a;

    move-result-object v0

    iget-object v0, v0, Lv3/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    sget-object v0, Lc5/k;->b:Ljava/lang/Object;

    iget-object v1, p0, Lc5/d;->n:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkRequest;

    iget-object v2, p0, Lc5/d;->m:Ljava/lang/Object;

    check-cast v2, Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lc5/d;->o:Ljava/lang/Object;

    check-cast p0, Lc5/k;

    monitor-enter v0

    :try_start_0
    sget-object v3, Lc5/k;->c:Ljava/util/LinkedHashMap;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v1

    sget-object v3, Lc5/p;->a:Ljava/lang/String;

    const-string v4, "NetworkRequestConstraintController unregister shared callback"

    invoke-virtual {v1, v3, v4}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0

    :pswitch_1
    iget-object v0, p0, Lc5/d;->n:Ljava/lang/Object;

    check-cast v0, Lj9/u;

    iget-boolean v0, v0, Lj9/u;->l:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    sget-object v1, Lc5/p;->a:Ljava/lang/String;

    const-string v2, "NetworkRequestConstraintController unregister callback"

    invoke-virtual {v0, v1, v2}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc5/d;->m:Ljava/lang/Object;

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lc5/d;->o:Ljava/lang/Object;

    check-cast p0, Lc5/e;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
