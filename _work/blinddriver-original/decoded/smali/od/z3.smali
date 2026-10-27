.class public final Lod/z3;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILr0/u0;Lr0/u0;Ly8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lod/z3;->l:I

    .line 1
    iput p1, p0, Lod/z3;->o:I

    iput-object p2, p0, Lod/z3;->p:Ljava/lang/Object;

    iput-object p3, p0, Lod/z3;->q:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Lua/nav/c;Ly8/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lod/z3;->l:I

    .line 2
    iput-object p1, p0, Lod/z3;->q:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    iget p1, p0, Lod/z3;->l:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lod/z3;

    iget-object p0, p0, Lod/z3;->q:Ljava/lang/Object;

    check-cast p0, Lua/nav/c;

    invoke-direct {p1, p0, p2}, Lod/z3;-><init>(Lua/nav/c;Ly8/c;)V

    return-object p1

    :pswitch_0
    new-instance p1, Lod/z3;

    iget v0, p0, Lod/z3;->o:I

    iget-object v1, p0, Lod/z3;->p:Ljava/lang/Object;

    check-cast v1, Lr0/u0;

    iget-object p0, p0, Lod/z3;->q:Ljava/lang/Object;

    check-cast p0, Lr0/u0;

    invoke-direct {p1, v0, v1, p0, p2}, Lod/z3;-><init>(ILr0/u0;Lr0/u0;Ly8/c;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lod/z3;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lod/z3;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/z3;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/z3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lod/z3;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/z3;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/z3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    iget v1, v0, Lod/z3;->l:I

    const/4 v2, 0x0

    iget-object v3, v0, Lod/z3;->q:Ljava/lang/Object;

    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v6, v0, Lod/z3;->o:I

    if-eqz v6, :cond_1

    if-ne v6, v5, :cond_0

    iget v2, v0, Lod/z3;->n:I

    iget v3, v0, Lod/z3;->m:I

    iget-object v4, v0, Lod/z3;->p:Ljava/lang/Object;

    check-cast v4, Lua/nav/c;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    check-cast v3, Lua/nav/c;

    const/16 v4, 0x78

    move/from16 v25, v4

    move-object v4, v3

    move/from16 v3, v25

    :goto_0
    if-ge v2, v3, :cond_c

    iget-object v6, v4, Lua/nav/c;->q:Lx9/l0;

    invoke-virtual {v6}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsc/q0;

    iget-object v7, v7, Lsc/q0;->a:Lua/nav/routing/GeoPoint;

    if-eqz v7, :cond_2

    goto/16 :goto_4

    :cond_2
    sget-object v7, Lsc/d;->l:Lsc/d;

    invoke-virtual {v4, v7}, Lua/nav/c;->Y(Lsc/d;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    invoke-virtual {v6}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lsc/q0;

    sget-object v13, Lsc/d;->m:Lsc/d;

    const/16 v23, 0x0

    const v24, 0xffdf

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v7 .. v24}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_4

    :cond_4
    const/4 v8, 0x5

    if-ne v2, v8, :cond_7

    invoke-virtual {v4}, Lua/nav/c;->J()Lua/nav/routing/GeoPoint;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-wide v9, v8, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v11, v8, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v9, v10, v11, v12}, Ldd/w0;->a(DD)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_7

    invoke-virtual {v4, v7, v8}, Lua/nav/c;->S(Lsc/d;Lua/nav/routing/GeoPoint;)V

    :cond_6
    invoke-virtual {v6}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lsc/q0;

    sget-object v13, Lsc/d;->m:Lsc/d;

    const/16 v23, 0x0

    const v24, 0xffdf

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v7 .. v24}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_4

    :cond_7
    const/16 v8, 0x8

    if-ne v2, v8, :cond_a

    sget-object v8, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->e()Ldd/i;

    move-result-object v8

    invoke-virtual {v8}, Ldd/i;->b()Lid/h1;

    move-result-object v8

    if-eqz v8, :cond_a

    iget-wide v0, v8, Lid/h1;->b:D

    invoke-static {v0, v1}, Ll9/a;->y(D)I

    move-result v0

    if-ge v0, v5, :cond_8

    goto :goto_2

    :cond_8
    move v5, v0

    :goto_2
    const-string v0, "\u041f\u0440\u0438\u0431\u043b\u0438\u0437\u043d\u043e \u0437\u0430 \u0432\u0438\u0448\u043a\u043e\u044e \u0437\u0432\'\u044f\u0437\u043a\u0443 (\u00b1"

    const-string v1, " \u043a\u043c)"

    invoke-static {v5, v0, v1}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v4, Lua/nav/c;->c:Ldd/k0;

    const-string v2, "start_cell_area reason=no_position"

    invoke-virtual {v1, v2}, Ldd/k0;->n(Ljava/lang/String;)V

    iget-object v1, v8, Lid/h1;->a:Lua/nav/routing/GeoPoint;

    invoke-virtual {v4, v7, v1, v0}, Lua/nav/c;->U(Lsc/d;Lua/nav/routing/GeoPoint;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v6}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lsc/q0;

    sget-object v13, Lsc/d;->m:Lsc/d;

    const/16 v23, 0x0

    const v24, 0xffdf

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v7 .. v24}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_a
    iput-object v4, v0, Lod/z3;->p:Ljava/lang/Object;

    iput v3, v0, Lod/z3;->m:I

    iput v2, v0, Lod/z3;->n:I

    iput v5, v0, Lod/z3;->o:I

    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7, v0}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_b

    goto :goto_5

    :cond_b
    :goto_3
    add-int/2addr v2, v5

    goto/16 :goto_0

    :cond_c
    :goto_4
    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_5
    return-object v1

    :pswitch_0
    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v6, v0, Lod/z3;->n:I

    if-eqz v6, :cond_e

    if-ne v6, v5, :cond_d

    iget v2, v0, Lod/z3;->m:I

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    :goto_6
    const/16 v4, 0x14

    const/16 v6, 0xc

    const/4 v7, 0x6

    if-ge v2, v7, :cond_f

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    goto :goto_7

    :cond_f
    if-ge v2, v6, :cond_10

    const-wide/high16 v8, 0x4069000000000000L    # 200.0

    goto :goto_7

    :cond_10
    if-ge v2, v4, :cond_11

    const-wide v8, 0x407f400000000000L    # 500.0

    goto :goto_7

    :cond_11
    const-wide v8, 0x408f400000000000L    # 1000.0

    :goto_7
    iget v10, v0, Lod/z3;->o:I

    int-to-double v10, v10

    mul-double/2addr v8, v10

    iget-object v10, v0, Lod/z3;->p:Ljava/lang/Object;

    check-cast v10, Lr0/u0;

    sget v11, Lod/e4;->c:I

    invoke-interface {v10}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Li9/c;

    new-instance v11, Ljava/lang/Double;

    invoke-direct {v11, v8, v9}, Ljava/lang/Double;-><init>(D)V

    invoke-interface {v10, v11}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v3

    check-cast v10, Lr0/u0;

    invoke-interface {v10}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    add-double/2addr v11, v8

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v10, v8}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    if-nez v2, :cond_12

    const-wide/16 v6, 0x1c2

    goto :goto_9

    :cond_12
    const-wide/16 v8, 0xfa

    if-ge v2, v7, :cond_13

    :goto_8
    move-wide v6, v8

    goto :goto_9

    :cond_13
    if-ge v2, v6, :cond_14

    const-wide/16 v6, 0xc8

    goto :goto_9

    :cond_14
    if-ge v2, v4, :cond_15

    goto :goto_8

    :cond_15
    const-wide/16 v6, 0x12c

    :goto_9
    iput v2, v0, Lod/z3;->m:I

    iput v5, v0, Lod/z3;->n:I

    invoke-static {v6, v7, v0}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_16

    return-object v1

    :cond_16
    :goto_a
    add-int/2addr v2, v5

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
