.class public final Lod/o2;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public final synthetic n:Lua/nav/routing/GeoPoint;

.field public final synthetic o:Lua/nav/c;

.field public final synthetic p:Lsc/d;


# direct methods
.method public constructor <init>(Lua/nav/c;Lua/nav/routing/GeoPoint;Lsc/d;Ly8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lod/o2;->l:I

    .line 1
    iput-object p1, p0, Lod/o2;->o:Lua/nav/c;

    iput-object p2, p0, Lod/o2;->n:Lua/nav/routing/GeoPoint;

    iput-object p3, p0, Lod/o2;->p:Lsc/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Lua/nav/routing/GeoPoint;Lua/nav/c;Lsc/d;Ly8/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lod/o2;->l:I

    .line 2
    iput-object p1, p0, Lod/o2;->n:Lua/nav/routing/GeoPoint;

    iput-object p2, p0, Lod/o2;->o:Lua/nav/c;

    iput-object p3, p0, Lod/o2;->p:Lsc/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    iget p1, p0, Lod/o2;->l:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lod/o2;

    iget-object v0, p0, Lod/o2;->o:Lua/nav/c;

    iget-object v1, p0, Lod/o2;->p:Lsc/d;

    iget-object p0, p0, Lod/o2;->n:Lua/nav/routing/GeoPoint;

    invoke-direct {p1, p0, v0, v1, p2}, Lod/o2;-><init>(Lua/nav/routing/GeoPoint;Lua/nav/c;Lsc/d;Ly8/c;)V

    return-object p1

    :pswitch_0
    new-instance p1, Lod/o2;

    iget-object v0, p0, Lod/o2;->n:Lua/nav/routing/GeoPoint;

    iget-object v1, p0, Lod/o2;->p:Lsc/d;

    iget-object p0, p0, Lod/o2;->o:Lua/nav/c;

    invoke-direct {p1, p0, v0, v1, p2}, Lod/o2;-><init>(Lua/nav/c;Lua/nav/routing/GeoPoint;Lsc/d;Ly8/c;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lod/o2;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lod/o2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/o2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/o2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lod/o2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/o2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/o2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    iget v1, v0, Lod/o2;->l:I

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lod/o2;->m:I

    const/4 v3, 0x1

    iget-object v4, v0, Lod/o2;->n:Lua/nav/routing/GeoPoint;

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object v2, Lzc/f;->a:Lzc/f;

    iput v3, v0, Lod/o2;->m:I

    invoke-virtual {v2, v4, v0}, Lzc/f;->c(Lua/nav/routing/GeoPoint;La9/c;)Ljava/io/Serializable;

    move-result-object v2

    if-ne v2, v1, :cond_2

    goto/16 :goto_2

    :cond_2
    :goto_0
    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_3

    iget-wide v1, v4, Lua/nav/routing/GeoPoint;->a:D

    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, v1, v2}, Ljava/lang/Double;-><init>(D)V

    iget-wide v1, v4, Lua/nav/routing/GeoPoint;->b:D

    new-instance v5, Ljava/lang/Double;

    invoke-direct {v5, v1, v2}, Ljava/lang/Double;-><init>(D)V

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.5f, %.5f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    move-object v7, v2

    iget-object v1, v0, Lod/o2;->o:Lua/nav/c;

    iget-object v2, v1, Lua/nav/c;->q:Lx9/l0;

    :cond_4
    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lsc/q0;

    sget-object v6, Lsc/d;->l:Lsc/d;

    iget-object v8, v0, Lod/o2;->p:Lsc/d;

    if-ne v8, v6, :cond_5

    iget-object v6, v5, Lsc/q0;->a:Lua/nav/routing/GeoPoint;

    invoke-static {v6, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v21, 0x0

    const v22, 0xfffd

    const/4 v6, 0x0

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

    invoke-static/range {v5 .. v22}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v5

    goto :goto_1

    :cond_5
    sget-object v6, Lsc/d;->m:Lsc/d;

    if-ne v8, v6, :cond_6

    iget-object v6, v5, Lsc/q0;->c:Lua/nav/routing/GeoPoint;

    invoke-static {v6, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v21, 0x0

    const v22, 0xfff7

    const/4 v6, 0x0

    move-object v9, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

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

    invoke-static/range {v5 .. v22}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v5

    move-object v7, v9

    :cond_6
    :goto_1
    invoke-virtual {v2, v3, v5}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lua/nav/c;->G()V

    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_2
    return-object v1

    :pswitch_0
    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lod/o2;->m:I

    iget-object v3, v0, Lod/o2;->o:Lua/nav/c;

    const/4 v4, 0x1

    if-eqz v2, :cond_8

    if-ne v2, v4, :cond_7

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iput v4, v0, Lod/o2;->m:I

    iget-object v2, v0, Lod/o2;->n:Lua/nav/routing/GeoPoint;

    invoke-virtual {v3, v2, v0}, Lua/nav/c;->h(Lua/nav/routing/GeoPoint;La9/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_9

    goto :goto_6

    :cond_9
    :goto_3
    check-cast v2, Lua/nav/routing/GeoPoint;

    sget-object v1, Lt8/z;->a:Lt8/z;

    if-nez v2, :cond_a

    goto :goto_6

    :cond_a
    iget-object v4, v3, Lua/nav/c;->q:Lx9/l0;

    const-string v5, "ep"

    iget-object v0, v0, Lod/o2;->p:Lsc/d;

    invoke-static {v0, v5}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lsc/d;->l:Lsc/d;

    invoke-virtual {v4}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsc/q0;

    if-ne v0, v5, :cond_b

    iget-object v6, v6, Lsc/q0;->a:Lua/nav/routing/GeoPoint;

    goto :goto_4

    :cond_b
    iget-object v6, v6, Lsc/q0;->c:Lua/nav/routing/GeoPoint;

    :goto_4
    if-eqz v6, :cond_c

    sget-object v7, Ldd/t0;->Companion:Ldd/s0;

    iget-wide v8, v6, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v10, v6, Lua/nav/routing/GeoPoint;->b:D

    iget-wide v12, v2, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v14, v2, Lua/nav/routing/GeoPoint;->b:D

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v8 .. v15}, Ldd/s0;->a(DDDD)D

    move-result-wide v6

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {v4}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsc/q0;

    if-ne v0, v5, :cond_d

    iget-object v4, v4, Lsc/q0;->b:Ljava/lang/String;

    goto :goto_5

    :cond_d
    iget-object v4, v4, Lsc/q0;->d:Ljava/lang/String;

    :goto_5
    invoke-static {v4}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v4, 0x0

    :cond_e
    invoke-virtual {v3, v0, v2, v4}, Lua/nav/c;->U(Lsc/d;Lua/nav/routing/GeoPoint;Ljava/lang/String;)V

    sget-object v2, Lsc/d;->m:Lsc/d;

    if-ne v0, v2, :cond_f

    invoke-virtual {v3}, Lua/nav/c;->j()V

    :cond_f
    :goto_6
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
