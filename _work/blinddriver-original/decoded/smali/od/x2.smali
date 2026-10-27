.class public final Lod/x2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lod/x2;->l:I

    iput-object p2, p0, Lod/x2;->m:Ljava/lang/Object;

    iput-object p3, p0, Lod/x2;->n:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 2
    iput p1, p0, Lod/x2;->l:I

    iput-object p2, p0, Lod/x2;->n:Ljava/lang/Object;

    iput-object p3, p0, Lod/x2;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    iget v1, v0, Lod/x2;->l:I

    const/4 v2, 0x1

    sget-object v3, Lt8/z;->a:Lt8/z;

    iget-object v4, v0, Lod/x2;->m:Ljava/lang/Object;

    iget-object v5, v0, Lod/x2;->n:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v5, Lsa/p;

    check-cast v4, Lsa/t;

    sget-object v1, Lsa/b;->p:Lsa/b;

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v4, v2, v0}, Lsa/t;->b(ZLod/x2;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v4, v2, v0}, Lsa/t;->b(ZLod/x2;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lsa/b;->n:Lsa/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lsa/b;->s:Lsa/b;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v5, v2, v0, v6}, Lsa/p;->b(Lsa/b;Lsa/b;Ljava/io/IOException;)V

    :goto_0
    invoke-static {v4}, Lma/c;->b(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v6, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v2, v1

    goto :goto_1

    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Required SETTINGS preface not received"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    :try_start_3
    sget-object v0, Lsa/b;->o:Lsa/b;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v5, v0, v0, v6}, Lsa/p;->b(Lsa/b;Lsa/b;Ljava/io/IOException;)V

    goto :goto_0

    :goto_2
    return-object v3

    :goto_3
    invoke-virtual {v5, v2, v1, v6}, Lsa/p;->b(Lsa/b;Lsa/b;Ljava/io/IOException;)V

    invoke-static {v4}, Lma/c;->b(Ljava/io/Closeable;)V

    throw v0

    :pswitch_0
    check-cast v4, Lr0/u0;

    invoke-interface {v4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    check-cast v5, Led/g;

    invoke-virtual {v5}, Led/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-virtual {v5}, Led/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ll7/a;->t(Ljava/util/Set;Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto :goto_4

    :cond_2
    invoke-interface {v4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-virtual {v5}, Led/g;->a()Ljava/lang/String;

    move-result-object v1

    const-string v5, "<this>"

    invoke-static {v0, v5}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v6

    add-int/2addr v6, v2

    invoke-static {v6}, Lu8/v;->J(I)I

    move-result v2

    invoke-direct {v5, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v5, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v5, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    :goto_4
    invoke-interface {v4, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v3

    :pswitch_1
    check-cast v4, Lua/nav/geocoding/Place;

    iget-object v0, v4, Lua/nav/geocoding/Place;->b:Ljava/lang/String;

    const-string v1, "\u041d\u0435\u0449\u043e\u0434\u0430\u0432\u043d\u043e"

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    check-cast v5, Lua/nav/c;

    iget-object v0, v5, Lua/nav/c;->B:Lua/nav/routing/b;

    iget-object v2, v4, Lua/nav/geocoding/Place;->c:Lua/nav/routing/GeoPoint;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "point"

    invoke-static {v2, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lua/nav/routing/b;->a()Ljava/util/List;

    move-result-object v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lua/nav/routing/RecentPlaces$Item;

    const-string v9, "a"

    invoke-static {v8, v9}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Ldd/t0;->Companion:Ldd/s0;

    iget-wide v10, v8, Lua/nav/routing/RecentPlaces$Item;->b:D

    iget-wide v12, v8, Lua/nav/routing/RecentPlaces$Item;->c:D

    iget-wide v14, v2, Lua/nav/routing/GeoPoint;->a:D

    move-object v8, v3

    move-object/from16 p0, v4

    iget-wide v3, v2, Lua/nav/routing/GeoPoint;->b:D

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v16, v3

    invoke-static/range {v10 .. v17}, Ldd/s0;->a(DDDD)D

    move-result-wide v3

    const-wide/high16 v9, 0x404e000000000000L    # 60.0

    cmpg-double v3, v3, v9

    if-gez v3, :cond_3

    :goto_6
    move-object/from16 v4, p0

    move-object v3, v8

    goto :goto_5

    :cond_3
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_4
    move-object v8, v3

    iget-object v3, v0, Lua/nav/routing/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    sget-object v4, Lgd/h;->c:Lia/r;

    iget-object v0, v0, Lua/nav/routing/b;->b:Lha/c;

    invoke-virtual {v4, v0, v6}, Lia/c;->b(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "items"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, v5, Lua/nav/c;->q:Lx9/l0;

    :cond_5
    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lsc/q0;

    iget-object v4, v9, Lsc/q0;->i:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lua/nav/geocoding/Place;

    iget-object v10, v7, Lua/nav/geocoding/Place;->b:Ljava/lang/String;

    invoke-static {v10, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v7, v7, Lua/nav/geocoding/Place;->c:Lua/nav/routing/GeoPoint;

    invoke-static {v7, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_7

    :cond_6
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_7
    const/16 v25, 0x0

    const v26, 0xfeff

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v18, v5

    invoke-static/range {v9 .. v26}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_8

    :cond_8
    move-object v8, v3

    :goto_8
    return-object v8

    :pswitch_2
    move-object v8, v3

    check-cast v4, Lr0/u0;

    sget-object v0, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    check-cast v5, Lr0/u0;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v5, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
