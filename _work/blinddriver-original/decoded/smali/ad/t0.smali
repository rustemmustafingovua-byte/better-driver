.class public final Lad/t0;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V
    .locals 0

    .line 1
    iput p4, p0, Lad/t0;->l:I

    iput-object p1, p0, Lad/t0;->m:Ljava/lang/Object;

    iput-object p2, p0, Lad/t0;->n:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ly8/c;I)V
    .locals 0

    .line 2
    iput p3, p0, Lad/t0;->l:I

    iput-object p1, p0, Lad/t0;->n:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    iget v0, p0, Lad/t0;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lad/t0;

    iget-object p0, p0, Lad/t0;->n:Ljava/lang/Object;

    check-cast p0, Lr0/w0;

    const/16 v1, 0xc

    invoke-direct {v0, p0, p2, v1}, Lad/t0;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v0, Lad/t0;->m:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    new-instance p1, Lad/t0;

    iget-object v0, p0, Lad/t0;->m:Ljava/lang/Object;

    check-cast v0, Ltc/e;

    iget-object p0, p0, Lad/t0;->n:Ljava/lang/Object;

    check-cast p0, Lua/nav/routing/GeoPoint;

    const/16 v1, 0xb

    invoke-direct {p1, v0, p0, p2, v1}, Lad/t0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_1
    new-instance v0, Lad/t0;

    iget-object p0, p0, Lad/t0;->n:Ljava/lang/Object;

    check-cast p0, Lua/nav/update/a;

    const/16 v1, 0xa

    invoke-direct {v0, p0, p2, v1}, Lad/t0;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v0, Lad/t0;->m:Ljava/lang/Object;

    return-object v0

    :pswitch_2
    new-instance p1, Lad/t0;

    iget-object v0, p0, Lad/t0;->m:Ljava/lang/Object;

    check-cast v0, Lua/nav/c;

    iget-object p0, p0, Lad/t0;->n:Ljava/lang/Object;

    check-cast p0, Lr0/u0;

    const/16 v1, 0x9

    invoke-direct {p1, v0, p0, p2, v1}, Lad/t0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_3
    new-instance p1, Lad/t0;

    iget-object v0, p0, Lad/t0;->m:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    iget-object p0, p0, Lad/t0;->n:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    const/16 v1, 0x8

    invoke-direct {p1, v0, p0, p2, v1}, Lad/t0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_4
    new-instance p1, Lad/t0;

    iget-object v0, p0, Lad/t0;->m:Ljava/lang/Object;

    check-cast v0, Lua/nav/c;

    iget-object p0, p0, Lad/t0;->n:Ljava/lang/Object;

    check-cast p0, Lod/e7;

    const/4 v1, 0x7

    invoke-direct {p1, v0, p0, p2, v1}, Lad/t0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_5
    new-instance p1, Lad/t0;

    iget-object v0, p0, Lad/t0;->m:Ljava/lang/Object;

    check-cast v0, Lua/nav/c;

    iget-object p0, p0, Lad/t0;->n:Ljava/lang/Object;

    check-cast p0, Lua/nav/routing/Route;

    const/4 v1, 0x6

    invoke-direct {p1, v0, p0, p2, v1}, Lad/t0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_6
    new-instance v0, Lad/t0;

    iget-object p0, p0, Lad/t0;->n:Ljava/lang/Object;

    check-cast p0, Lk0/h;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p2, v1}, Lad/t0;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v0, Lad/t0;->m:Ljava/lang/Object;

    return-object v0

    :pswitch_7
    new-instance v0, Lad/t0;

    iget-object p0, p0, Lad/t0;->n:Ljava/lang/Object;

    check-cast p0, Lid/d0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p2, v1}, Lad/t0;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v0, Lad/t0;->m:Ljava/lang/Object;

    return-object v0

    :pswitch_8
    new-instance p1, Lad/t0;

    iget-object v0, p0, Lad/t0;->m:Ljava/lang/Object;

    check-cast v0, Lid/e;

    iget-object p0, p0, Lad/t0;->n:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    const/4 v1, 0x3

    invoke-direct {p1, v0, p0, p2, v1}, Lad/t0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_9
    new-instance p1, Lad/t0;

    iget-object v0, p0, Lad/t0;->m:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/a1;

    iget-object p0, p0, Lad/t0;->n:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-direct {p1, v0, p0, p2, v1}, Lad/t0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_a
    new-instance v0, Lad/t0;

    iget-object p0, p0, Lad/t0;->n:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/a1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lad/t0;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v0, Lad/t0;->m:Ljava/lang/Object;

    return-object v0

    :pswitch_b
    new-instance v0, Lad/t0;

    iget-object p0, p0, Lad/t0;->n:Ljava/lang/Object;

    check-cast p0, Lua/nav/guidance/NavService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lad/t0;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v0, Lad/t0;->m:Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lad/t0;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/t0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/t0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/t0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/t0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/t0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/t0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/t0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/t0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/t0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/t0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/t0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/t0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_3
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/t0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/t0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/t0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_4
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/t0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/t0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/t0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/t0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/t0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/t0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/t0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/t0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/t0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/t0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/t0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/t0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/t0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/t0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/t0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/t0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/t0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/t0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_a
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/t0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/t0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/t0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_b
    check-cast p1, Lad/a0;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/t0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/t0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/t0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 49

    move-object/from16 v0, p0

    iget v1, v0, Lad/t0;->l:I

    const/16 v6, 0xa

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v0, Lad/t0;->m:Ljava/lang/Object;

    check-cast v1, Lu9/t;

    invoke-interface {v1}, Lu9/t;->C()Ly8/h;

    move-result-object v1

    iget-object v0, v0, Lad/t0;->n:Ljava/lang/Object;

    check-cast v0, Lr0/w0;

    :try_start_0
    new-instance v2, Lu9/o1;

    invoke-direct {v2}, Lu9/o1;-><init>()V

    invoke-static {v1}, Lu9/v;->n(Ly8/h;)Lu9/v0;

    move-result-object v1

    invoke-static {v1, v11, v2}, Lu9/v;->q(Lu9/v0;ZLu9/y0;)Lu9/g0;

    move-result-object v1

    iput-object v1, v2, Lu9/o1;->q:Lu9/g0;

    sget-object v1, Lu9/o1;->r:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_2

    if-eq v3, v8, :cond_3

    if-ne v3, v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lu9/o1;->n(I)V

    throw v9

    :cond_2
    invoke-virtual {v1, v2, v3, v10}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    :cond_3
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lr0/w0;->invoke()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Lu9/o1;->m()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lu9/o1;->m()V

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "Blocking call was interrupted due to parent cancellation"

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :pswitch_0
    sget-object v1, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v0, Lad/t0;->m:Ljava/lang/Object;

    check-cast v1, Ltc/e;

    iget-object v0, v0, Lad/t0;->n:Ljava/lang/Object;

    check-cast v0, Lua/nav/routing/GeoPoint;

    iget-object v7, v1, Ltc/e;->m:Lua/nav/routing/GeoPoint;

    iget-object v12, v1, Ltc/e;->l:Ltc/i;

    if-eqz v12, :cond_4

    if-eqz v7, :cond_4

    sget-object v12, Ldd/t0;->Companion:Ldd/s0;

    iget-wide v13, v7, Lua/nav/routing/GeoPoint;->a:D

    const-wide v21, 0x40fafcc000000000L    # 110540.0

    iget-wide v2, v7, Lua/nav/routing/GeoPoint;->b:D

    const-wide v23, 0x40fb2d8000000000L    # 111320.0

    iget-wide v4, v0, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v9, v0, Lua/nav/routing/GeoPoint;->b:D

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide v15, v2

    move-wide/from16 v17, v4

    move-wide/from16 v19, v9

    invoke-static/range {v13 .. v20}, Ldd/s0;->a(DDDD)D

    move-result-wide v2

    const-wide v4, 0x407f400000000000L    # 500.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_5

    iget-object v0, v1, Ltc/e;->l:Ltc/i;

    goto/16 :goto_17

    :cond_4
    const-wide v21, 0x40fafcc000000000L    # 110540.0

    const-wide v23, 0x40fb2d8000000000L    # 111320.0

    :cond_5
    iget-object v2, v1, Ltc/e;->k:Ltc/l;

    if-nez v2, :cond_a

    iget-object v2, v1, Ltc/e;->a:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "raions_ua.json"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "open(...)"

    invoke-static {v2, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lr9/a;->a:Ljava/nio/charset/Charset;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v2, Ljava/io/BufferedReader;

    const/16 v3, 0x2000

    invoke-direct {v2, v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :try_start_3
    invoke-static {v2}, Lr5/h1;->B(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    sget-object v2, Lia/c;->d:Lia/b;

    invoke-virtual {v2, v3}, Lia/c;->c(Ljava/lang/String;)Lia/l;

    move-result-object v2

    invoke-static {v2}, Lia/m;->e(Lia/l;)Lia/y;

    move-result-object v2

    const-string v3, "raions"

    invoke-virtual {v2, v3}, Lia/y;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast v2, Lia/l;

    invoke-static {v2}, Lia/m;->d(Lia/l;)Lia/e;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v6}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, v2, Lia/e;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lia/l;

    invoke-static {v4}, Lia/m;->e(Lia/l;)Lia/y;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lia/y;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast v5, Lia/l;

    invoke-static {v5}, Lia/m;->f(Lia/l;)Lia/d0;

    move-result-object v5

    invoke-virtual {v5}, Lia/d0;->a()Ljava/lang/String;

    move-result-object v5

    const-string v7, "oblast"

    invoke-virtual {v4, v7}, Lia/y;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast v7, Lia/l;

    invoke-static {v7}, Lia/m;->f(Lia/l;)Lia/d0;

    move-result-object v7

    invoke-virtual {v7}, Lia/d0;->a()Ljava/lang/String;

    move-result-object v7

    const-string v9, "rings"

    invoke-virtual {v4, v9}, Lia/y;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast v4, Lia/l;

    invoke-static {v4}, Lia/m;->d(Lia/l;)Lia/e;

    move-result-object v4

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v4, v6}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, v4, Lia/e;->l:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lia/l;

    invoke-static {v10}, Lia/m;->d(Lia/l;)Lia/e;

    move-result-object v10

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v10, v6}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v10, v10, Lia/e;->l:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lia/l;

    invoke-static {v13}, Lia/m;->f(Lia/l;)Lia/d0;

    move-result-object v13

    invoke-virtual {v13}, Lia/d0;->a()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [D

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v13, :cond_7

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v15, v15, 0x1

    check-cast v16, Ljava/lang/Number;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v16

    add-int/lit8 v18, v14, 0x1

    aput-wide v16, v10, v14

    move/from16 v14, v18

    goto :goto_4

    :cond_7
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    new-instance v4, Ltc/j;

    invoke-direct {v4, v5, v7, v9}, Ltc/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    new-instance v2, Ltc/l;

    invoke-direct {v2, v3}, Ltc/l;-><init>(Ljava/util/ArrayList;)V

    iput-object v2, v1, Ltc/e;->k:Ltc/l;

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v2, v1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_a
    :goto_5
    iget-wide v3, v0, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v9, v0, Lua/nav/routing/GeoPoint;->b:D

    iget-object v2, v2, Ltc/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v5, :cond_13

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v7, v7, 0x1

    move-object v13, v12

    check-cast v13, Ltc/j;

    iget-wide v14, v13, Ltc/j;->f:D

    cmpg-double v14, v3, v14

    if-ltz v14, :cond_c

    iget-wide v14, v13, Ltc/j;->g:D

    cmpl-double v14, v3, v14

    if-gtz v14, :cond_c

    iget-wide v14, v13, Ltc/j;->d:D

    cmpg-double v14, v9, v14

    if-ltz v14, :cond_c

    iget-wide v14, v13, Ltc/j;->e:D

    cmpl-double v14, v9, v14

    if-lez v14, :cond_b

    goto :goto_7

    :cond_b
    iget-object v13, v13, Ltc/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_d

    :cond_c
    :goto_7
    move-wide/from16 p0, v3

    move/from16 v17, v11

    goto/16 :goto_c

    :cond_d
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_8
    if-ge v15, v14, :cond_c

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v15, v15, 0x1

    move/from16 v17, v11

    move-object/from16 v11, v16

    check-cast v11, [D

    sget-object v16, Ltc/l;->Companion:Ltc/k;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "r"

    invoke-static {v11, v6}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v6, v11

    sub-int/2addr v6, v8

    move/from16 v18, v6

    const/4 v6, 0x0

    const/16 v19, 0x0

    :goto_9
    array-length v8, v11

    if-ge v6, v8, :cond_11

    aget-wide v26, v11, v6

    add-int/lit8 v8, v6, 0x1

    aget-wide v28, v11, v8

    aget-wide v30, v11, v18

    add-int/lit8 v18, v18, 0x1

    aget-wide v32, v11, v18

    cmpl-double v8, v28, v3

    if-lez v8, :cond_e

    move/from16 v8, v17

    goto :goto_a

    :cond_e
    const/4 v8, 0x0

    :goto_a
    cmpl-double v18, v32, v3

    move-wide/from16 p0, v3

    if-lez v18, :cond_f

    move/from16 v3, v17

    goto :goto_b

    :cond_f
    const/4 v3, 0x0

    :goto_b
    if-eq v8, v3, :cond_10

    sub-double v30, v30, v26

    sub-double v3, p0, v28

    mul-double v3, v3, v30

    sub-double v32, v32, v28

    div-double v3, v3, v32

    add-double v3, v3, v26

    cmpg-double v3, v9, v3

    if-gez v3, :cond_10

    xor-int/lit8 v19, v19, 0x1

    :cond_10
    add-int/lit8 v3, v6, 0x2

    move/from16 v18, v6

    move v6, v3

    move-wide/from16 v3, p0

    goto :goto_9

    :cond_11
    move-wide/from16 p0, v3

    if-eqz v19, :cond_12

    goto :goto_d

    :cond_12
    move-wide/from16 v3, p0

    move/from16 v11, v17

    const/16 v6, 0xa

    const/4 v8, 0x2

    goto :goto_8

    :goto_c
    move-wide/from16 v3, p0

    move/from16 v11, v17

    const/16 v6, 0xa

    const/4 v8, 0x2

    goto/16 :goto_6

    :cond_13
    const/4 v12, 0x0

    :goto_d
    check-cast v12, Ltc/j;

    if-nez v12, :cond_14

    const/4 v9, 0x0

    goto/16 :goto_16

    :cond_14
    iget-wide v3, v12, Ltc/j;->f:D

    new-instance v9, Ltc/i;

    iget-object v5, v12, Ltc/j;->a:Ljava/lang/String;

    iget-object v6, v12, Ltc/j;->b:Ljava/lang/String;

    iget-wide v7, v12, Ltc/j;->g:D

    add-double v10, v3, v7

    const/4 v13, 0x2

    int-to-double v13, v13

    div-double/2addr v10, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double v13, v13, v23

    const-wide v17, 0x4097700000000000L    # 1500.0

    div-double v13, v17, v13

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-wide/from16 v19, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_1c

    move/from16 p0, v3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v26, v2

    move-object v2, v3

    check-cast v2, Ltc/j;

    if-eq v2, v12, :cond_1b

    move-wide/from16 v27, v7

    iget-wide v7, v2, Ltc/j;->e:D

    move-wide/from16 v29, v7

    iget-wide v7, v12, Ltc/j;->d:D

    sub-double/2addr v7, v13

    cmpl-double v7, v29, v7

    if-ltz v7, :cond_1a

    iget-wide v7, v2, Ltc/j;->d:D

    move-wide/from16 v29, v7

    iget-wide v7, v12, Ltc/j;->e:D

    add-double/2addr v7, v13

    cmpg-double v7, v29, v7

    if-gtz v7, :cond_1a

    iget-wide v7, v2, Ltc/j;->g:D

    const-wide v29, 0x3f8bca74d06e6c1bL    # 0.013569748507327664

    sub-double v31, v19, v29

    cmpl-double v7, v7, v31

    if-ltz v7, :cond_1a

    iget-wide v7, v2, Ltc/j;->f:D

    add-double v29, v27, v29

    cmpg-double v7, v7, v29

    if-gtz v7, :cond_1a

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v7, v7, v23

    move/from16 p1, v4

    iget-object v4, v12, Ltc/j;->c:Ljava/util/ArrayList;

    move-wide/from16 v29, v7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_f
    if-ge v8, v7, :cond_19

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v31, v4

    move-object/from16 v4, v25

    check-cast v4, [D

    move/from16 v25, v7

    move/from16 v32, v8

    const/4 v7, 0x0

    :goto_10
    array-length v8, v4

    if-ge v7, v8, :cond_18

    aget-wide v33, v4, v7

    add-int/lit8 v8, v7, 0x1

    aget-wide v35, v4, v8

    iget-object v8, v2, Ltc/j;->c:Ljava/util/ArrayList;

    move-object/from16 v37, v2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v38, v4

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v2, :cond_17

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    add-int/lit8 v4, v4, 0x1

    move/from16 v40, v2

    move-object/from16 v2, v39

    check-cast v2, [D

    move/from16 v39, v4

    move/from16 v41, v7

    const/4 v4, 0x0

    :goto_12
    array-length v7, v2

    if-ge v4, v7, :cond_16

    aget-wide v42, v2, v4

    sub-double v42, v42, v33

    move-object/from16 v44, v8

    mul-double v7, v42, v29

    add-int/lit8 v42, v4, 0x1

    aget-wide v42, v2, v42

    sub-double v42, v42, v35

    move-wide/from16 v45, v10

    mul-double v10, v42, v21

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    cmpg-double v7, v7, v17

    if-gez v7, :cond_15

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_13
    move/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v2, v26

    move-wide/from16 v7, v27

    move-wide/from16 v10, v45

    goto/16 :goto_e

    :cond_15
    add-int/lit8 v4, v4, 0x2

    move-object/from16 v8, v44

    move-wide/from16 v10, v45

    goto :goto_12

    :cond_16
    move/from16 v4, v39

    move/from16 v2, v40

    move/from16 v7, v41

    goto :goto_11

    :cond_17
    move/from16 v41, v7

    move-wide/from16 v45, v10

    add-int/lit8 v7, v41, 0x2

    move-object/from16 v2, v37

    move-object/from16 v4, v38

    goto :goto_10

    :cond_18
    move/from16 v7, v25

    move-object/from16 v4, v31

    move/from16 v8, v32

    goto/16 :goto_f

    :cond_19
    :goto_14
    move-wide/from16 v45, v10

    goto :goto_13

    :cond_1a
    move/from16 p1, v4

    goto :goto_14

    :cond_1b
    move/from16 p1, v4

    move-wide/from16 v27, v7

    goto :goto_14

    :cond_1c
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v15, v3}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v10, 0x0

    :goto_15
    if-ge v10, v3, :cond_1d

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v10, v10, 0x1

    check-cast v4, Ltc/j;

    iget-object v7, v4, Ltc/j;->a:Ljava/lang/String;

    iget-object v4, v4, Ltc/j;->b:Ljava/lang/String;

    new-instance v8, Lt8/j;

    invoke-direct {v8, v7, v4}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_1d
    invoke-direct {v9, v5, v6, v2}, Ltc/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_16
    iput-object v9, v1, Ltc/e;->l:Ltc/i;

    iput-object v0, v1, Ltc/e;->m:Lua/nav/routing/GeoPoint;

    move-object v0, v9

    :goto_17
    return-object v0

    :pswitch_1
    const-string v1, "HTTP "

    iget-object v2, v0, Lad/t0;->m:Ljava/lang/Object;

    check-cast v2, Lu9/t;

    sget-object v2, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    new-instance v2, Landroidx/lifecycle/a1;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroidx/lifecycle/a1;-><init>(I)V

    const-string v3, "https://github.com/chatmag/blinddriver-releases/releases/latest/download/release.json"

    invoke-virtual {v2, v3}, Landroidx/lifecycle/a1;->G(Ljava/lang/String;)V

    const-string v3, "Cache-Control"

    const-string v4, "no-cache"

    invoke-virtual {v2, v3, v4}, Landroidx/lifecycle/a1;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lg7/c;

    invoke-direct {v3, v2}, Lg7/c;-><init>(Landroidx/lifecycle/a1;)V

    iget-object v0, v0, Lad/t0;->n:Ljava/lang/Object;

    check-cast v0, Lua/nav/update/a;

    iget-object v0, v0, Lua/nav/update/a;->l:Lt8/o;

    invoke-virtual {v0}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lla/v;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lpa/p;

    invoke-direct {v2, v0, v3}, Lpa/p;-><init>(Lla/v;Lg7/c;)V

    invoke-virtual {v2}, Lpa/p;->i()Lla/c0;

    move-result-object v2

    iget v0, v2, Lla/c0;->o:I

    const/16 v3, 0x194

    if-eq v0, v3, :cond_22

    :try_start_5
    iget-boolean v3, v2, Lla/c0;->z:Z

    if-eqz v3, :cond_21

    const-string v0, "Date"

    iget-object v1, v2, Lla/c0;->q:Lla/p;

    invoke-virtual {v1, v0}, Lla/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-nez v0, :cond_1e

    const/4 v0, 0x0

    :cond_1e
    if-eqz v0, :cond_20

    :try_start_6
    sget-object v1, Ljava/time/format/DateTimeFormatter;->RFC_1123_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-static {v0, v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-interface {v0}, Ljava/time/chrono/ChronoZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v0, v1}, Ljava/lang/Long;-><init>(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_18

    :catchall_3
    move-exception v0

    :try_start_7
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v3

    :goto_18
    instance-of v0, v3, Lt8/l;

    if-eqz v0, :cond_1f

    const/4 v9, 0x0

    goto :goto_19

    :cond_1f
    move-object v9, v3

    :goto_19
    check-cast v9, Ljava/lang/Long;

    goto :goto_1a

    :catchall_4
    move-exception v0

    move-object v1, v0

    goto :goto_1b

    :cond_20
    const/4 v9, 0x0

    :goto_1a
    new-instance v0, Lqd/s;

    iget-object v1, v2, Lla/c0;->r:Lla/e0;

    invoke-virtual {v1}, Lla/e0;->k()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v9}, Lqd/s;-><init>(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    invoke-virtual {v2}, Lla/c0;->close()V

    return-object v0

    :cond_21
    :try_start_8
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_22
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u0406\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0456\u0457 \u043f\u0440\u043e \u0432\u0438\u043f\u0443\u0441\u043a\u0438 \u043f\u043e\u043a\u0438 \u043d\u0435\u043c\u0430\u0454"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :goto_1b
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception v0

    invoke-static {v2, v1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_2
    move/from16 v17, v11

    sget-object v1, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v0, Lad/t0;->n:Ljava/lang/Object;

    check-cast v1, Lr0/u0;

    sget-object v2, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, v0, Lad/t0;->m:Ljava/lang/Object;

    check-cast v1, Lua/nav/c;

    iget-object v1, v1, Lua/nav/c;->c:Ldd/k0;

    invoke-virtual {v1}, Ldd/k0;->k()V

    iget-object v0, v0, Lad/t0;->m:Ljava/lang/Object;

    check-cast v0, Lua/nav/c;

    sget-object v1, Lsc/i0;->a:Lsc/i0;

    sget-boolean v1, Lsc/i0;->B:Z

    if-eqz v1, :cond_23

    goto :goto_1c

    :cond_23
    sput-boolean v17, Lsc/i0;->B:Z

    invoke-static {}, Lsc/i0;->r()Lua/nav/a;

    move-result-object v1

    iget-object v1, v1, Lua/nav/a;->m:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_24

    goto :goto_1c

    :cond_24
    iget-object v1, v0, Lua/nav/c;->c:Ldd/k0;

    iget-object v1, v1, Ldd/k0;->j:Ldd/m;

    iget-object v1, v1, Ldd/m;->h:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldd/n;

    iget-boolean v1, v1, Ldd/n;->l:Z

    if-nez v1, :cond_25

    iget-object v0, v0, Lua/nav/c;->c:Ldd/k0;

    invoke-virtual {v0}, Ldd/k0;->l()V

    :cond_25
    :goto_1c
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_3
    move/from16 v17, v11

    sget-object v1, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v0, Lad/t0;->m:Ljava/lang/Object;

    check-cast v1, Lr0/u0;

    sget-object v2, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsc/q0;

    iget-object v1, v1, Lsc/q0;->n:Ljava/lang/String;

    if-eqz v1, :cond_26

    iget-object v0, v0, Lad/t0;->n:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_26
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_4
    sget-object v1, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v0, Lad/t0;->m:Ljava/lang/Object;

    check-cast v1, Lua/nav/c;

    iget-object v1, v1, Lua/nav/c;->o:Lbd/l;

    iget-object v0, v0, Lad/t0;->n:Ljava/lang/Object;

    check-cast v0, Lod/e7;

    iget-wide v3, v0, Lod/e7;->a:D

    iget-wide v5, v0, Lod/e7;->b:D

    iget-wide v7, v0, Lod/e7;->c:D

    iget-wide v9, v0, Lod/e7;->d:D

    iget-object v2, v1, Lbd/l;->b:Lbd/e;

    invoke-static/range {v2 .. v10}, Lbd/e;->a(Lbd/e;DDDD)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :pswitch_5
    const-wide v21, 0x40fafcc000000000L    # 110540.0

    const-wide v23, 0x40fb2d8000000000L    # 111320.0

    sget-object v1, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v0, Lad/t0;->m:Ljava/lang/Object;

    check-cast v1, Lua/nav/c;

    iget-object v1, v1, Lua/nav/c;->o:Lbd/l;

    iget-object v0, v0, Lad/t0;->n:Ljava/lang/Object;

    check-cast v0, Lua/nav/routing/Route;

    iget-object v0, v0, Lua/nav/routing/Route;->e:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "geometry"

    invoke-static {v0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Lbd/l;->b:Lbd/e;

    iget-object v1, v1, Lbd/e;->a:Ljava/lang/Object;

    sget-object v2, Lu8/r;->l:Lu8/r;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_27

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v13, 0x2

    if-ge v3, v13, :cond_28

    :cond_27
    move-object/from16 v16, v2

    goto/16 :goto_23

    :cond_28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide v4, -0x10000000000001L

    move-wide v8, v4

    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :cond_29
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lua/nav/routing/GeoPoint;

    iget-wide v6, v14, Lua/nav/routing/GeoPoint;->a:D

    cmpg-double v15, v6, v10

    if-gez v15, :cond_2a

    move-wide v10, v6

    :cond_2a
    cmpl-double v15, v6, v4

    if-lez v15, :cond_2b

    move-wide v4, v6

    :cond_2b
    iget-wide v6, v14, Lua/nav/routing/GeoPoint;->b:D

    cmpg-double v14, v6, v12

    if-gez v14, :cond_2c

    move-wide v12, v6

    :cond_2c
    cmpl-double v14, v6, v8

    if-lez v14, :cond_29

    move-wide v8, v6

    goto :goto_1d

    :cond_2d
    add-double v6, v10, v4

    const/4 v3, 0x2

    int-to-double v14, v3

    div-double/2addr v6, v14

    invoke-static {v6, v7}, Lsc/c;->c(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v6, v6, v23

    const-wide/high16 v14, 0x4034000000000000L    # 20.0

    div-double v6, v14, v6

    const-wide/high16 v18, 0x3ff8000000000000L    # 1.5

    mul-double v6, v6, v18

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2f

    move-wide/from16 v18, v14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Lbd/j;

    const-wide v26, 0x3f31c940856563e8L    # 2.7139497014655326E-4

    sub-double v28, v10, v26

    add-double v26, v4, v26

    move-object/from16 v20, v1

    move-object/from16 v16, v2

    iget-wide v1, v15, Lbd/j;->a:D

    cmpg-double v25, v28, v1

    if-gtz v25, :cond_2e

    cmpg-double v1, v1, v26

    if-gtz v1, :cond_2e

    sub-double v1, v12, v6

    add-double v26, v8, v6

    move-wide/from16 v28, v1

    iget-wide v1, v15, Lbd/j;->b:D

    cmpg-double v15, v28, v1

    if-gtz v15, :cond_2e

    cmpg-double v1, v1, v26

    if-gtz v1, :cond_2e

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    move-object/from16 v2, v16

    move-wide/from16 v14, v18

    move-object/from16 v1, v20

    goto :goto_1e

    :cond_2f
    move-object/from16 v16, v2

    move-wide/from16 v18, v14

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_30

    goto/16 :goto_23

    :cond_30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_1f
    if-ge v4, v1, :cond_39

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lbd/j;

    iget-wide v6, v5, Lbd/j;->a:D

    iget-wide v8, v5, Lbd/j;->b:D

    invoke-static {v6, v7}, Lsc/c;->c(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double v10, v10, v23

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    const/16 v17, 0x1

    add-int/lit8 v12, v12, -0x1

    const/4 v13, 0x0

    const-wide v14, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_20
    if-ge v13, v12, :cond_37

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v20, v1

    move-object/from16 v1, v16

    check-cast v1, Lua/nav/routing/GeoPoint;

    move-object/from16 v25, v3

    move/from16 v16, v4

    iget-wide v3, v1, Lua/nav/routing/GeoPoint;->b:D

    sub-double/2addr v3, v8

    mul-double/2addr v3, v10

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lua/nav/routing/GeoPoint;

    move-wide/from16 v26, v6

    iget-wide v6, v1, Lua/nav/routing/GeoPoint;->a:D

    sub-double v6, v6, v26

    mul-double v6, v6, v21

    add-int/lit8 v13, v13, 0x1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lua/nav/routing/GeoPoint;

    move-wide/from16 v28, v6

    iget-wide v6, v1, Lua/nav/routing/GeoPoint;->b:D

    sub-double/2addr v6, v8

    mul-double/2addr v6, v10

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lua/nav/routing/GeoPoint;

    move-object/from16 v30, v0

    iget-wide v0, v1, Lua/nav/routing/GeoPoint;->a:D

    sub-double v0, v0, v26

    mul-double v0, v0, v21

    cmpl-double v31, v3, v18

    if-lez v31, :cond_31

    cmpl-double v31, v6, v18

    if-gtz v31, :cond_36

    :cond_31
    const-wide/high16 v31, -0x3fcc000000000000L    # -20.0

    cmpg-double v33, v3, v31

    if-gez v33, :cond_32

    cmpg-double v33, v6, v31

    if-ltz v33, :cond_36

    :cond_32
    cmpl-double v33, v28, v18

    if-lez v33, :cond_33

    cmpl-double v33, v0, v18

    if-gtz v33, :cond_36

    :cond_33
    cmpg-double v33, v28, v31

    if-gez v33, :cond_34

    cmpg-double v31, v0, v31

    if-gez v31, :cond_34

    goto :goto_22

    :cond_34
    sub-double/2addr v6, v3

    sub-double v0, v0, v28

    mul-double v31, v6, v6

    mul-double v33, v0, v0

    add-double v33, v33, v31

    const-wide v31, 0x3e112e0be826d695L    # 1.0E-9

    cmpg-double v31, v33, v31

    if-gez v31, :cond_35

    const-wide/16 v31, 0x0

    move-wide/from16 v47, v31

    move-wide/from16 v31, v0

    move-wide/from16 v0, v47

    goto :goto_21

    :cond_35
    move-wide/from16 v31, v0

    neg-double v0, v3

    mul-double/2addr v0, v6

    mul-double v35, v28, v31

    sub-double v0, v0, v35

    div-double v35, v0, v33

    const-wide/16 v37, 0x0

    const-wide/high16 v39, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v35 .. v40}, Lg6/c1;->d(DDD)D

    move-result-wide v0

    :goto_21
    mul-double/2addr v6, v0

    add-double/2addr v6, v3

    mul-double v0, v0, v31

    add-double v0, v0, v28

    mul-double/2addr v6, v6

    mul-double/2addr v0, v0

    add-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    cmpg-double v3, v0, v14

    if-gez v3, :cond_36

    move-wide v14, v0

    :cond_36
    :goto_22
    move/from16 v4, v16

    move/from16 v1, v20

    move-object/from16 v3, v25

    move-wide/from16 v6, v26

    move-object/from16 v0, v30

    goto/16 :goto_20

    :cond_37
    move-object/from16 v30, v0

    move/from16 v20, v1

    move-object/from16 v25, v3

    move/from16 v16, v4

    cmpg-double v0, v14, v18

    if-gtz v0, :cond_38

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    move/from16 v4, v16

    move/from16 v1, v20

    move-object/from16 v3, v25

    move-object/from16 v0, v30

    goto/16 :goto_1f

    :goto_23
    move-object/from16 v2, v16

    :cond_39
    return-object v2

    :pswitch_6
    sget-object v1, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v0, Lad/t0;->m:Ljava/lang/Object;

    check-cast v1, Lu9/t;

    iget-object v0, v0, Lad/t0;->n:Ljava/lang/Object;

    check-cast v0, Lk0/h;

    iget-object v2, v0, Lk0/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu9/v0;

    iget-object v4, v0, Lk0/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v5, Landroidx/lifecycle/i0;

    const/16 v6, 0xe

    invoke-direct {v5, v2, v0, v3, v6}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v1, v3, v3, v5, v7}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object v1

    :cond_3a
    invoke-virtual {v4, v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v10, 0x1

    goto :goto_24

    :cond_3b
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3a

    const/4 v10, 0x0

    :goto_24
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_7
    move-object v3, v9

    iget-object v1, v0, Lad/t0;->m:Ljava/lang/Object;

    check-cast v1, Lu9/t;

    sget-object v1, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v0, v0, Lad/t0;->n:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lid/d0;

    :try_start_a
    iget-object v0, v1, Lid/d0;->d:Lid/e;

    invoke-virtual {v0}, Lid/e;->b()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-virtual {v0}, Lid/e;->d()Lcom/graphhopper/GraphHopper;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_25

    :cond_3c
    move-object v0, v3

    goto :goto_25

    :catchall_6
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_25
    invoke-static {v0}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3e

    iget-object v1, v1, Lid/d0;->a:Ldd/k0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3d

    const/16 v5, 0xa0

    invoke-static {v5, v2}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_26

    :cond_3d
    move-object v2, v3

    :goto_26
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pf_graph_error "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldd/k0;->n(Ljava/lang/String;)V

    :cond_3e
    instance-of v1, v0, Lt8/l;

    if-eqz v1, :cond_3f

    move-object v9, v3

    goto :goto_27

    :cond_3f
    move-object v9, v0

    :goto_27
    return-object v9

    :pswitch_8
    sget-object v1, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v0, Lad/t0;->m:Ljava/lang/Object;

    check-cast v1, Lid/e;

    iget-boolean v2, v1, Lid/e;->a:Z

    if-nez v2, :cond_44

    invoke-virtual {v1}, Lid/e;->d()Lcom/graphhopper/GraphHopper;

    move-result-object v2

    iget-object v0, v0, Lad/t0;->n:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lua/nav/routing/GeoPoint;

    new-instance v5, Lcom/graphhopper/util/shapes/GHPoint;

    iget-wide v6, v4, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v8, v4, Lua/nav/routing/GeoPoint;->b:D

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/graphhopper/util/shapes/GHPoint;-><init>(DD)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_40
    new-instance v0, Lcom/graphhopper/GHRequest;

    invoke-direct {v0, v3}, Lcom/graphhopper/GHRequest;-><init>(Ljava/util/List;)V

    const-string v3, "car"

    invoke-virtual {v0, v3}, Lcom/graphhopper/GHRequest;->setProfile(Ljava/lang/String;)Lcom/graphhopper/GHRequest;

    move-result-object v0

    const-string v3, "max_speed"

    invoke-static {v3}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/graphhopper/GHRequest;->setPathDetails(Ljava/util/List;)Lcom/graphhopper/GHRequest;

    const-string v3, "bridge"

    const-string v4, "ferry"

    const-string v5, "tunnel"

    filled-new-array {v5, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/graphhopper/GHRequest;->setSnapPreventions(Ljava/util/List;)Lcom/graphhopper/GHRequest;

    invoke-virtual {v2, v0}, Lcom/graphhopper/GraphHopper;->route(Lcom/graphhopper/GHRequest;)Lcom/graphhopper/GHResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/graphhopper/GHResponse;->hasErrors()Z

    move-result v2

    if-eqz v2, :cond_42

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/graphhopper/GHResponse;->getErrors()Ljava/util/List;

    move-result-object v0

    const-string v2, "getErrors(...)"

    invoke-static {v0, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_41

    const-string v0, "\u043c\u0430\u0440\u0448\u0440\u0443\u0442 \u043d\u0435 \u0437\u043d\u0430\u0439\u0434\u0435\u043d\u043e"

    :cond_41
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_42
    invoke-virtual {v0}, Lcom/graphhopper/GHResponse;->getAll()Ljava/util/List;

    move-result-object v0

    const-string v2, "getAll(...)"

    invoke-static {v0, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/graphhopper/ResponsePath;

    invoke-static {v3}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "\u041e\u0444\u043b\u0430\u0439\u043d"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lid/e;->e(Lcom/graphhopper/ResponsePath;Ljava/lang/String;Z)Lua/nav/routing/Route;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_43
    return-object v2

    :cond_44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u0434\u043b\u044f \u0432\u0430\u043d\u0442\u0430\u0436\u0456\u0432\u043a\u0438 \u2014 routeTruck"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_9
    sget-object v1, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v0, Lad/t0;->m:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/a1;

    iget-object v1, v1, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    check-cast v1, Ljava/io/OutputStream;

    if-eqz v1, :cond_45

    iget-object v0, v0, Lad/t0;->n:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lr9/a;->d:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v2, "getBytes(...)"

    invoke-static {v0, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :cond_45
    new-instance v0, Lhd/b;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lhd/b;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_a
    move-object v3, v9

    move v5, v10

    iget-object v1, v0, Lad/t0;->m:Ljava/lang/Object;

    check-cast v1, Lu9/t;

    sget-object v1, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v0, v0, Lad/t0;->n:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/lifecycle/a1;

    iget-object v0, v1, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    check-cast v0, Landroid/app/Application;

    const-class v2, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_4c

    iget-object v2, v1, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    :try_start_b
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_2a

    :catchall_7
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_2a
    move-object v0, v3

    move v10, v5

    :goto_2b
    if-ge v10, v7, :cond_49

    if-eqz v10, :cond_47

    const/4 v4, 0x1

    if-eq v10, v4, :cond_46

    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "createRfcommSocket"

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-instance v5, Ljava/lang/Integer;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type android.bluetooth.BluetoothSocket"

    invoke-static {v4, v5}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/bluetooth/BluetoothSocket;

    goto :goto_2c

    :catchall_8
    move-exception v0

    move-object v4, v0

    move-object v0, v3

    goto :goto_2d

    :cond_46
    sget-object v4, Lhd/e;->Companion:Lhd/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lhd/e;->j:Ljava/util/UUID;

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v4

    goto :goto_2c

    :cond_47
    sget-object v4, Lhd/e;->Companion:Lhd/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lhd/e;->j:Ljava/util/UUID;

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    :goto_2c
    :try_start_d
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    move-object v9, v4

    goto :goto_2f

    :catchall_9
    move-exception v0

    move-object/from16 v47, v4

    move-object v4, v0

    move-object/from16 v0, v47

    :goto_2d
    if-eqz v0, :cond_48

    :try_start_e
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    goto :goto_2e

    :catchall_a
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :cond_48
    :goto_2e
    add-int/lit8 v10, v10, 0x1

    move-object v0, v4

    goto :goto_2b

    :cond_49
    move-object v9, v3

    :goto_2f
    if-nez v9, :cond_4b

    if-nez v0, :cond_4a

    new-instance v0, Lhd/b;

    const-string v1, "connect"

    invoke-direct {v0, v1}, Lhd/b;-><init>(Ljava/lang/String;)V

    :cond_4a
    throw v0

    :cond_4b
    iput-object v9, v1, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v1, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, v1, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :cond_4c
    new-instance v0, Lhd/b;

    const-string v1, "no_bluetooth"

    invoke-direct {v0, v1}, Lhd/b;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_b
    sget-object v1, Lcd/j;->a:Lcd/j;

    sget-object v2, Lt8/z;->a:Lt8/z;

    iget-object v3, v0, Lad/t0;->n:Ljava/lang/Object;

    check-cast v3, Lua/nav/guidance/NavService;

    iget-object v0, v0, Lad/t0;->m:Ljava/lang/Object;

    check-cast v0, Lad/a0;

    sget-object v4, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-boolean v4, v0, Lad/a0;->a:Z

    const-class v5, Landroid/app/NotificationManager;

    if-nez v4, :cond_4d

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v1, "\u0412\u0456\u0434\u0441\u0442\u0435\u0436\u0435\u043d\u043d\u044f \u043f\u043e\u0437\u0438\u0446\u0456\u0457"

    invoke-static {v1}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "\u041f\u043e\u0437\u0438\u0446\u0456\u044f \u043d\u0430 \u043a\u0430\u0440\u0442\u0456 \u0431\u0435\u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443"

    invoke-static {v4}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lua/nav/guidance/NavService;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_31

    :cond_4d
    iget-object v4, v0, Lad/a0;->f:Lua/nav/routing/Step;

    if-eqz v4, :cond_4e

    iget-wide v6, v0, Lad/a0;->h:D

    invoke-virtual {v1, v6, v7}, Lcd/j;->b(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lua/nav/routing/Step;->b()Ljava/lang/String;

    move-result-object v4

    const-string v7, " \u00b7 "

    invoke-static {v6, v7, v4}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4f

    :cond_4e
    const-string v4, "\u0412\u0435\u0434\u0435\u043d\u043d\u044f \u043f\u043e \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443"

    invoke-static {v4}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_4f
    iget-wide v6, v0, Lad/a0;->j:D

    invoke-virtual {v1, v6, v7}, Lcd/j;->b(D)Ljava/lang/String;

    move-result-object v1

    iget-wide v6, v0, Lad/a0;->k:D

    invoke-static {v6, v7}, Lod/m;->I(D)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u0417\u0430\u043b\u0438\u0448\u0438\u043b\u043e\u0441\u044c "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcd/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v0, Lad/a0;->n:Z

    if-eqz v0, :cond_50

    const-string v0, " \u00b7 \u0437\u0456\u0439\u0448\u043b\u0438 \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443"

    invoke-static {v0}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    :cond_50
    const-string v0, ""

    :goto_30
    invoke-static {v1, v0}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {v3, v4, v0}, Lua/nav/guidance/NavService;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_31
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
