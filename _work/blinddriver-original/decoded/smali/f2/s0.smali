.class public final Lf2/s0;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lf2/s0;->l:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1
    invoke-direct {p0, v1, v0}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public synthetic constructor <init>(ILy8/c;I)V
    .locals 0

    .line 2
    iput p3, p0, Lf2/s0;->l:I

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 1

    iget p0, p0, Lf2/s0;->l:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lf2/s0;

    const/4 p1, 0x2

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lf2/s0;-><init>(ILy8/c;I)V

    return-object p0

    :pswitch_0
    new-instance p0, Lf2/s0;

    const/4 p1, 0x2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lf2/s0;-><init>(ILy8/c;I)V

    return-object p0

    :pswitch_1
    new-instance p0, Lf2/s0;

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lf2/s0;-><init>(ILy8/c;I)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lf2/s0;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lf2/s0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lf2/s0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lf2/s0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lf2/s0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lf2/s0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lf2/s0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lf2/s0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lf2/s0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lf2/s0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget p0, p0, Lf2/s0;->l:I

    sget-object v0, Lt8/z;->a:Lt8/z;

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->n()Lfd/o;

    move-result-object p0

    invoke-virtual {p0}, Lfd/o;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lsc/i0;->j()Lua/nav/geo/c;

    move-result-object p0

    invoke-virtual {p0}, Lua/nav/geo/c;->e()V

    :cond_0
    return-object v0

    :pswitch_0
    sget-object p0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->n()Lfd/o;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0}, Lfd/o;->g()Lorg/maplibre/android/offline/OfflineManager;

    move-result-object p1

    new-instance v1, Lfd/i;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-wide/32 v2, 0xc800000

    invoke-virtual {p1, v2, v3, v1}, Lorg/maplibre/android/offline/OfflineManager;->setMaximumAmbientCacheSize(JLorg/maplibre/android/offline/OfflineManager$FileSourceCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lfd/o;->j(Z)V

    return-object v0

    :pswitch_1
    sget-object p0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
