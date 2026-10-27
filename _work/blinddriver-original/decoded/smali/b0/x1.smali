.class public final Lb0/x1;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V
    .locals 0

    .line 1
    iput p5, p0, Lb0/x1;->l:I

    iput-object p1, p0, Lb0/x1;->m:Ljava/lang/Object;

    iput-object p2, p0, Lb0/x1;->n:Ljava/lang/Object;

    iput-object p3, p0, Lb0/x1;->o:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V
    .locals 0

    .line 2
    iput p4, p0, Lb0/x1;->l:I

    iput-object p1, p0, Lb0/x1;->n:Ljava/lang/Object;

    iput-object p2, p0, Lb0/x1;->o:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 8

    iget v0, p0, Lb0/x1;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v1, Lb0/x1;

    iget-object p1, p0, Lb0/x1;->m:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Ld1/v;

    iget-object p1, p0, Lb0/x1;->n:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Ljava/util/List;

    iget-object p0, p0, Lb0/x1;->o:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Lr0/u0;

    const/4 v6, 0x5

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lb0/x1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object v1

    :pswitch_0
    move-object v6, p2

    new-instance v2, Lb0/x1;

    iget-object p1, p0, Lb0/x1;->m:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Landroid/content/Context;

    iget-object p1, p0, Lb0/x1;->n:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Li9/a;

    iget-object p0, p0, Lb0/x1;->o:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Lr0/u0;

    const/4 v7, 0x4

    invoke-direct/range {v2 .. v7}, Lb0/x1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object v2

    :pswitch_1
    move-object v6, p2

    new-instance v2, Lb0/x1;

    iget-object p1, p0, Lb0/x1;->m:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lr0/u0;

    iget-object p1, p0, Lb0/x1;->n:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Landroid/content/Context;

    iget-object p0, p0, Lb0/x1;->o:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Lua/nav/c;

    const/4 v7, 0x3

    invoke-direct/range {v2 .. v7}, Lb0/x1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object v2

    :pswitch_2
    move-object v6, p2

    new-instance p2, Lb0/x1;

    iget-object v0, p0, Lb0/x1;->n:Ljava/lang/Object;

    check-cast v0, Lua/nav/stats/a;

    iget-object p0, p0, Lb0/x1;->o:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-direct {p2, v0, p0, v6, v1}, Lb0/x1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, p2, Lb0/x1;->m:Ljava/lang/Object;

    return-object p2

    :pswitch_3
    move-object v6, p2

    new-instance p2, Lb0/x1;

    iget-object v0, p0, Lb0/x1;->n:Ljava/lang/Object;

    check-cast v0, Lsc/j;

    iget-object p0, p0, Lb0/x1;->o:Ljava/lang/Object;

    check-cast p0, Lbd/i;

    const/4 v1, 0x1

    invoke-direct {p2, v0, p0, v6, v1}, Lb0/x1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, p2, Lb0/x1;->m:Ljava/lang/Object;

    return-object p2

    :pswitch_4
    move-object v6, p2

    new-instance p2, Lb0/x1;

    iget-object v0, p0, Lb0/x1;->n:Ljava/lang/Object;

    check-cast v0, Ly1/x;

    iget-object p0, p0, Lb0/x1;->o:Ljava/lang/Object;

    check-cast p0, Lb0/c2;

    const/4 v1, 0x0

    invoke-direct {p2, v0, p0, v6, v1}, Lb0/x1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, p2, Lb0/x1;->m:Ljava/lang/Object;

    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lb0/x1;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lb0/x1;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lb0/x1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lb0/x1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lb0/x1;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lb0/x1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lb0/x1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lb0/x1;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lb0/x1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lb0/x1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lb0/x1;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lb0/x1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lb0/x1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lb0/x1;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lb0/x1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lb0/x1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lb0/x1;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lb0/x1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lb0/x1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    iget v1, v0, Lb0/x1;->l:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v5, Lt8/z;->a:Lt8/z;

    iget-object v6, v0, Lb0/x1;->n:Ljava/lang/Object;

    iget-object v7, v0, Lb0/x1;->o:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    iget-object v0, v0, Lb0/x1;->m:Ljava/lang/Object;

    check-cast v0, Ld1/v;

    sget-object v1, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    check-cast v7, Lr0/u0;

    sget-object v1, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v7}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-gez v1, :cond_0

    invoke-virtual {v0}, Ld1/v;->clear()V

    check-cast v6, Ljava/util/List;

    invoke-virtual {v0, v6}, Ld1/v;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v5

    :pswitch_0
    sget-object v1, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    check-cast v7, Lr0/u0;

    invoke-static {v7}, Lod/g3;->o(Lr0/u0;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lb0/x1;->m:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const-string v1, "ctx"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "onboarding"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "rationale_shown"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast v6, Li9/a;

    invoke-interface {v6}, Li9/a;->invoke()Ljava/lang/Object;

    :cond_1
    return-object v5

    :pswitch_1
    sget-object v1, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v0, v0, Lb0/x1;->m:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    sget-object v1, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsc/q0;

    iget-object v0, v0, Lsc/q0;->p:Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast v6, Landroid/content/Context;

    check-cast v7, Lua/nav/c;

    invoke-static {v6, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, v7, Lua/nav/c;->q:Lx9/l0;

    :cond_2
    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lsc/q0;

    const/16 v22, 0x0

    const/16 v23, 0x7fff

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v6 .. v23}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_3
    return-object v5

    :pswitch_2
    iget-object v0, v0, Lb0/x1;->m:Ljava/lang/Object;

    check-cast v0, Lu9/t;

    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    check-cast v6, Lua/nav/stats/a;

    check-cast v7, Ljava/lang/String;

    :try_start_0
    iget-object v0, v6, Lua/nav/stats/a;->b:Ljava/io/File;

    invoke-static {v0, v7}, Lf9/j;->B(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_0
    return-object v5

    :pswitch_3
    iget-object v0, v0, Lb0/x1;->m:Ljava/lang/Object;

    check-cast v0, Lu9/t;

    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    const-string v0, "road_objects_ua.json"

    invoke-static {v0}, Lsc/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v7, Lbd/i;

    iget-object v0, v7, Lbd/i;->c:Ljava/io/File;

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-static {v0, v5}, Lf9/j;->z(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_4
    move-object v0, v2

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_1
    instance-of v5, v0, Lt8/l;

    if-eqz v5, :cond_5

    move-object v0, v2

    :cond_5
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v5, Lbd/i;->Companion:Lbd/g;

    invoke-static {v0}, Lbd/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lbd/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    invoke-virtual {v6, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_6

    move v11, v4

    goto :goto_2

    :cond_6
    move v11, v3

    :goto_2
    iget-object v3, v7, Lbd/i;->e:Lx9/l0;

    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lbd/f;

    const/4 v14, 0x0

    const/16 v15, 0x3b

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v15}, Lbd/f;->a(Lbd/f;Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;I)Lbd/f;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v2, v4}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz v11, :cond_7

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_7
    return-object v1

    :pswitch_4
    sget-object v1, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v0, v0, Lb0/x1;->m:Ljava/lang/Object;

    check-cast v0, Lu9/t;

    sget-object v1, Lu9/u;->o:Lu9/u;

    new-instance v3, Lb0/y0;

    check-cast v6, Ly1/x;

    check-cast v7, Lb0/c2;

    invoke-direct {v3, v6, v7, v2, v4}, Lb0/y0;-><init>(Ly1/x;Lb0/c2;Ly8/c;I)V

    invoke-static {v0, v2, v1, v3, v4}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    new-instance v3, Lb0/y0;

    const/4 v5, 0x2

    invoke-direct {v3, v6, v7, v2, v5}, Lb0/y0;-><init>(Ly1/x;Lb0/c2;Ly8/c;I)V

    invoke-static {v0, v2, v1, v3, v4}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
