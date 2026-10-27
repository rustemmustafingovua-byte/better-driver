.class public final synthetic Lod/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lua/nav/c;


# direct methods
.method public synthetic constructor <init>(Lua/nav/c;I)V
    .locals 0

    iput p2, p0, Lod/m0;->l:I

    iput-object p1, p0, Lod/m0;->m:Lua/nav/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    move-object/from16 v0, p0

    iget v1, v0, Lod/m0;->l:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lod/m0;->m:Lua/nav/c;

    iget-object v0, v0, Lua/nav/c;->c:Ldd/k0;

    invoke-virtual {v0, v1}, Ldd/k0;->n(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Lua/nav/routing/Route;

    const-string v2, "r"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lod/m0;->m:Lua/nav/c;

    iget-object v3, v2, Lua/nav/c;->q:Lx9/l0;

    :cond_0
    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lsc/q0;

    invoke-static {v1}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v20, 0x0

    const v21, 0xf3ff

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v4 .. v21}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lua/nav/c;->G()V

    goto :goto_0

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget-object v1, v0, Lod/m0;->m:Lua/nav/c;

    iget-object v0, v1, Lua/nav/c;->q:Lx9/l0;

    :goto_1
    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    move-object v2, v3

    check-cast v2, Lsc/q0;

    const/16 v18, 0x0

    const v19, 0xf7ff

    move-object v4, v3

    const/4 v3, 0x0

    move-object v5, v4

    const/4 v4, 0x0

    move-object v6, v5

    const/4 v5, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    move-object v8, v7

    const/4 v7, 0x0

    move-object v9, v8

    const/4 v8, 0x0

    move-object v10, v9

    const/4 v9, 0x0

    move-object v11, v10

    const/4 v10, 0x0

    move-object v12, v11

    const/4 v11, 0x0

    move-object v13, v12

    const/4 v12, 0x0

    move-object v15, v13

    const/4 v13, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x0

    move-object/from16 v17, v16

    const/16 v16, 0x0

    move-object/from16 v20, v17

    const/16 v17, 0x0

    move-object/from16 v21, v1

    move-object/from16 v1, v20

    invoke-static/range {v2 .. v19}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {v21 .. v21}, Lua/nav/c;->G()V

    goto/16 :goto_0

    :cond_1
    move-object/from16 v1, v21

    goto :goto_1

    :pswitch_2
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Lod/m0;->m:Lua/nav/c;

    invoke-virtual {v0, v1}, Lua/nav/c;->T(I)V

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget-object v0, v0, Lod/m0;->m:Lua/nav/c;

    iget-object v0, v0, Lua/nav/c;->d:Lad/j0;

    invoke-virtual {v0, v1, v2}, Lad/j0;->w(D)V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lod/m0;->m:Lua/nav/c;

    iget-object v0, v0, Lua/nav/c;->F:Lx9/l0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    const-string v2, "ids"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lod/m0;->m:Lua/nav/c;

    invoke-static {v0}, Landroidx/lifecycle/t0;->h(Landroidx/lifecycle/z0;)Lf4/a;

    move-result-object v0

    new-instance v2, Lad/w;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v3}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    const/4 v1, 0x3

    invoke-static {v0, v4, v4, v2, v1}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Lod/m0;->m:Lua/nav/c;

    invoke-virtual {v0, v1}, Lua/nav/c;->T(I)V

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget-object v0, v0, Lod/m0;->m:Lua/nav/c;

    iget-object v0, v0, Lua/nav/c;->d:Lad/j0;

    invoke-virtual {v0, v1, v2}, Lad/j0;->w(D)V

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget-object v0, v0, Lod/m0;->m:Lua/nav/c;

    iget-object v0, v0, Lua/nav/c;->d:Lad/j0;

    invoke-virtual {v0, v1, v2}, Lad/j0;->w(D)V

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v9, p1

    check-cast v9, Ljava/lang/String;

    const-string v1, "it"

    invoke-static {v9, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lod/m0;->m:Lua/nav/c;

    iget-object v1, v0, Lua/nav/c;->q:Lx9/l0;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_2

    invoke-static {v9}, Lzc/s;->a(Ljava/lang/String;)Lzc/r;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Lua/nav/c;->K(Lzc/r;)V

    goto/16 :goto_3

    :cond_2
    :goto_2
    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    move-object v1, v2

    check-cast v1, Lsc/q0;

    const/16 v17, 0x0

    const v18, 0xff7f

    move-object v4, v2

    const/4 v2, 0x0

    move-object v5, v3

    const/4 v3, 0x0

    move-object v6, v4

    const/4 v4, 0x0

    move-object v7, v5

    const/4 v5, 0x0

    move-object v8, v6

    const/4 v6, 0x0

    move-object v10, v7

    const/4 v7, 0x0

    move-object v11, v8

    const/4 v8, 0x0

    move-object v12, v10

    const/4 v10, 0x0

    move-object v13, v11

    const/4 v11, 0x0

    move-object v14, v12

    const/4 v12, 0x0

    move-object v15, v13

    const/4 v13, 0x0

    move-object/from16 v16, v14

    const/4 v14, 0x0

    move-object/from16 v19, v15

    const/4 v15, 0x0

    move-object/from16 v20, v16

    const/16 v16, 0x0

    move-object/from16 v21, v0

    move-object/from16 v22, v19

    move-object/from16 v0, v20

    invoke-static/range {v1 .. v18}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v1

    move-object/from16 v15, v22

    invoke-virtual {v0, v15, v1}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v1, v21

    iget-object v2, v1, Lua/nav/c;->t:Lu9/j1;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2, v3}, Lu9/c1;->c(Ljava/util/concurrent/CancellationException;)V

    :cond_3
    invoke-static {v9}, Lzc/p;->h(Ljava/lang/String;)Lua/nav/routing/GeoPoint;

    move-result-object v13

    if-eqz v13, :cond_5

    :cond_4
    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lsc/q0;

    new-instance v10, Lua/nav/geocoding/Place;

    invoke-static {v13}, Lzc/g;->b(Lua/nav/routing/GeoPoint;)Ljava/lang/String;

    move-result-object v11

    const/16 v16, 0x0

    const/16 v17, 0x78

    const-string v12, "\u041a\u043e\u043e\u0440\u0434\u0438\u043d\u0430\u0442\u0438"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v17}, Lua/nav/geocoding/Place;-><init>(Ljava/lang/String;Ljava/lang/String;Lua/nav/routing/GeoPoint;ZLjava/lang/String;ZI)V

    invoke-static {v10}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v23

    const/16 v30, 0x0

    const v31, 0xfcff

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object v14, v2

    invoke-static/range {v14 .. v31}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_5
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x3

    if-ge v2, v4, :cond_7

    :cond_6
    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lsc/q0;

    const/16 v18, 0x0

    const v19, 0xfcff

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Lu8/r;->l:Lu8/r;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v2 .. v19}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_7
    invoke-static {v1}, Landroidx/lifecycle/t0;->h(Landroidx/lifecycle/z0;)Lf4/a;

    move-result-object v0

    new-instance v2, Lsc/p0;

    invoke-direct {v2, v1, v9, v3}, Lsc/p0;-><init>(Lua/nav/c;Ljava/lang/String;Ly8/c;)V

    invoke-static {v0, v3, v3, v2, v4}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object v0

    iput-object v0, v1, Lua/nav/c;->t:Lu9/j1;

    :goto_3
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :cond_8
    move-object v1, v0

    move-object/from16 v0, v21

    goto/16 :goto_2

    :pswitch_a
    move-object v1, v0

    move-object/from16 v0, p1

    check-cast v0, Lk1/y;

    const-string v2, "it"

    invoke-static {v0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lk1/z;

    invoke-virtual {v0}, Lk1/z;->b()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v1, Lod/m0;->m:Lua/nav/c;

    invoke-virtual {v0}, Lua/nav/c;->l()V

    :cond_9
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_b
    move-object v1, v0

    move-object/from16 v0, p1

    check-cast v0, Lua/nav/routing/SavedAddress;

    const-string v2, "it"

    invoke-static {v0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v2, v0, Lua/nav/routing/SavedAddress;->a:J

    iget-object v0, v1, Lod/m0;->m:Lua/nav/c;

    invoke-static {v0}, Landroidx/lifecycle/t0;->h(Landroidx/lifecycle/z0;)Lf4/a;

    move-result-object v0

    new-instance v1, Lsc/l0;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5, v4}, Lsc/l0;-><init>(JLy8/c;I)V

    const/4 v2, 0x3

    invoke-static {v0, v5, v5, v1, v2}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    goto/16 :goto_0

    :pswitch_c
    move-object v1, v0

    move-object/from16 v0, p1

    check-cast v0, Lua/nav/routing/SavedRoute;

    const-string v2, "it"

    invoke-static {v0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v2, v0, Lua/nav/routing/SavedRoute;->a:J

    iget-object v0, v1, Lod/m0;->m:Lua/nav/c;

    invoke-static {v0}, Landroidx/lifecycle/t0;->h(Landroidx/lifecycle/z0;)Lf4/a;

    move-result-object v0

    new-instance v1, Lsc/l0;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5, v4}, Lsc/l0;-><init>(JLy8/c;I)V

    const/4 v2, 0x3

    invoke-static {v0, v5, v5, v1, v2}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    goto/16 :goto_0

    nop

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
