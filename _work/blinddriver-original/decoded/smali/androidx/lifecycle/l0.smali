.class public final Landroidx/lifecycle/l0;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public n:Ljava/lang/Object;

.field public o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/q;Lu9/t;Lb4/b;Ly8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/l0;->l:I

    sget-object v0, Landroidx/lifecycle/p;->l:Landroidx/lifecycle/p;

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/l0;->p:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/lifecycle/l0;->q:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/lifecycle/l0;->r:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V
    .locals 0

    .line 2
    iput p7, p0, Landroidx/lifecycle/l0;->l:I

    iput-object p1, p0, Landroidx/lifecycle/l0;->n:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/lifecycle/l0;->o:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/lifecycle/l0;->p:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/lifecycle/l0;->q:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/lifecycle/l0;->r:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V
    .locals 0

    .line 3
    iput p6, p0, Landroidx/lifecycle/l0;->l:I

    iput-object p1, p0, Landroidx/lifecycle/l0;->o:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/lifecycle/l0;->p:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/lifecycle/l0;->q:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/lifecycle/l0;->r:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Lr0/u1;Lr0/t1;Lf2/x0;Ly8/c;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Landroidx/lifecycle/l0;->l:I

    .line 4
    iput-object p1, p0, Landroidx/lifecycle/l0;->p:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/lifecycle/l0;->q:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/lifecycle/l0;->r:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Ly1/x;Li9/f;Li9/c;Lr/p1;Ly8/c;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Landroidx/lifecycle/l0;->l:I

    .line 5
    iput-object p1, p0, Landroidx/lifecycle/l0;->o:Ljava/lang/Object;

    check-cast p2, La9/i;

    iput-object p2, p0, Landroidx/lifecycle/l0;->p:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/lifecycle/l0;->q:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/lifecycle/l0;->r:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 13

    iget v0, p0, Landroidx/lifecycle/l0;->l:I

    iget-object v1, p0, Landroidx/lifecycle/l0;->r:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/lifecycle/l0;->q:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/lifecycle/l0;->p:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    new-instance v4, Landroidx/lifecycle/l0;

    iget-object p0, p0, Landroidx/lifecycle/l0;->o:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Lua/nav/c;

    move-object v6, v3

    check-cast v6, Lsc/q0;

    move-object v7, v2

    check-cast v7, Lua/nav/routing/GeoPoint;

    move-object v8, v1

    check-cast v8, Lua/nav/routing/GeoPoint;

    const/16 v10, 0x9

    move-object v9, p2

    invoke-direct/range {v4 .. v10}, Landroidx/lifecycle/l0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v4, Landroidx/lifecycle/l0;->n:Ljava/lang/Object;

    return-object v4

    :pswitch_0
    move-object v10, p2

    new-instance p0, Landroidx/lifecycle/l0;

    check-cast v3, Lr0/u1;

    check-cast v2, Lr0/t1;

    check-cast v1, Lf2/x0;

    invoke-direct {p0, v3, v2, v1, v10}, Landroidx/lifecycle/l0;-><init>(Lr0/u1;Lr0/t1;Lf2/x0;Ly8/c;)V

    iput-object p1, p0, Landroidx/lifecycle/l0;->o:Ljava/lang/Object;

    return-object p0

    :pswitch_1
    move-object v10, p2

    new-instance v5, Landroidx/lifecycle/l0;

    iget-object p0, p0, Landroidx/lifecycle/l0;->o:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Ly1/x;

    move-object v7, v3

    check-cast v7, La9/i;

    move-object v8, v2

    check-cast v8, Li9/c;

    move-object v9, v1

    check-cast v9, Lr/p1;

    invoke-direct/range {v5 .. v10}, Landroidx/lifecycle/l0;-><init>(Ly1/x;Li9/f;Li9/c;Lr/p1;Ly8/c;)V

    iput-object p1, v5, Landroidx/lifecycle/l0;->n:Ljava/lang/Object;

    return-object v5

    :pswitch_2
    move-object v10, p2

    new-instance v5, Landroidx/lifecycle/l0;

    iget-object p1, p0, Landroidx/lifecycle/l0;->n:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lua/nav/support/a;

    iget-object p0, p0, Landroidx/lifecycle/l0;->o:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, Li9/a;

    move-object v8, v3

    check-cast v8, Lr0/u0;

    move-object v9, v2

    check-cast v9, Lr0/u0;

    check-cast v1, Lr0/u0;

    const/4 v12, 0x6

    move-object v11, v10

    move-object v10, v1

    invoke-direct/range {v5 .. v12}, Landroidx/lifecycle/l0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object v5

    :pswitch_3
    move-object v10, p2

    new-instance v5, Landroidx/lifecycle/l0;

    iget-object p0, p0, Landroidx/lifecycle/l0;->o:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Landroid/content/Context;

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    move-object v8, v2

    check-cast v8, Lr0/u0;

    move-object v9, v1

    check-cast v9, Lr0/u0;

    const/4 v11, 0x5

    invoke-direct/range {v5 .. v11}, Landroidx/lifecycle/l0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object v5

    :pswitch_4
    move-object v10, p2

    new-instance v5, Landroidx/lifecycle/l0;

    iget-object p0, p0, Landroidx/lifecycle/l0;->o:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Landroidx/work/impl/WorkDatabase_Impl;

    move-object v7, v3

    check-cast v7, Lx9/h;

    move-object v8, v2

    check-cast v8, [Ljava/lang/String;

    move-object v9, v1

    check-cast v9, Lg5/p;

    const/4 v11, 0x4

    invoke-direct/range {v5 .. v11}, Landroidx/lifecycle/l0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v5, Landroidx/lifecycle/l0;->n:Ljava/lang/Object;

    return-object v5

    :pswitch_5
    move-object v10, p2

    new-instance v5, Landroidx/lifecycle/l0;

    iget-object p0, p0, Landroidx/lifecycle/l0;->o:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Lf2/q0;

    move-object v7, v3

    check-cast v7, Li9/c;

    move-object v8, v2

    check-cast v8, Lk0/b;

    move-object v9, v1

    check-cast v9, Lk0/n;

    const/4 v11, 0x3

    invoke-direct/range {v5 .. v11}, Landroidx/lifecycle/l0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v5, Landroidx/lifecycle/l0;->n:Ljava/lang/Object;

    return-object v5

    :pswitch_6
    move-object v10, p2

    new-instance v5, Landroidx/lifecycle/l0;

    iget-object p1, p0, Landroidx/lifecycle/l0;->n:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Ly/c;

    iget-object p0, p0, Landroidx/lifecycle/l0;->o:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, Lu2/x;

    move-object v8, v3

    check-cast v8, Lb0/r1;

    move-object v9, v2

    check-cast v9, Lb0/z2;

    check-cast v1, Lu2/q;

    const/4 v12, 0x2

    move-object v11, v10

    move-object v10, v1

    invoke-direct/range {v5 .. v12}, Landroidx/lifecycle/l0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object v5

    :pswitch_7
    move-object v10, p2

    new-instance v5, Landroidx/lifecycle/l0;

    iget-object p1, p0, Landroidx/lifecycle/l0;->n:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lb0/r1;

    iget-object p0, p0, Landroidx/lifecycle/l0;->o:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, Lr0/u0;

    move-object v8, v3

    check-cast v8, Lu2/y;

    move-object v9, v2

    check-cast v9, Lm0/v1;

    check-cast v1, Lu2/k;

    const/4 v12, 0x1

    move-object v11, v10

    move-object v10, v1

    invoke-direct/range {v5 .. v12}, Landroidx/lifecycle/l0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object v5

    :pswitch_8
    move-object v10, p2

    new-instance p0, Landroidx/lifecycle/l0;

    check-cast v3, Landroidx/lifecycle/q;

    sget-object p1, Landroidx/lifecycle/p;->l:Landroidx/lifecycle/p;

    check-cast v2, Lu9/t;

    check-cast v1, Lb4/b;

    invoke-direct {p0, v3, v2, v1, v10}, Landroidx/lifecycle/l0;-><init>(Landroidx/lifecycle/q;Lu9/t;Lb4/b;Ly8/c;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    iget v0, p0, Landroidx/lifecycle/l0;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/l0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/l0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/l0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/l0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/l0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/l0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/l0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/l0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/l0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/l0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/l0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/l0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/l0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/l0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/l0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/l0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/l0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/l0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/l0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/l0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/l0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0

    :pswitch_6
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/l0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/l0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/l0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/l0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/l0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/l0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/l0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/l0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/l0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
    .locals 41

    move-object/from16 v6, p0

    iget v0, v6, Landroidx/lifecycle/l0;->l:I

    const/4 v1, 0x7

    const/4 v3, 0x2

    const/4 v10, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, v6, Landroidx/lifecycle/l0;->q:Ljava/lang/Object;

    check-cast v0, Lua/nav/routing/GeoPoint;

    iget-object v1, v6, Landroidx/lifecycle/l0;->p:Ljava/lang/Object;

    check-cast v1, Lsc/q0;

    iget-object v4, v1, Lsc/q0;->e:Ljava/util/List;

    iget-object v5, v6, Landroidx/lifecycle/l0;->o:Ljava/lang/Object;

    move-object v11, v5

    check-cast v11, Lua/nav/c;

    iget-object v5, v6, Landroidx/lifecycle/l0;->n:Ljava/lang/Object;

    check-cast v5, Lu9/t;

    sget-object v12, Lz8/a;->l:Lz8/a;

    iget v5, v6, Landroidx/lifecycle/l0;->m:I

    if-eqz v5, :cond_2

    if-eq v5, v10, :cond_1

    if-ne v5, v3, :cond_0

    :try_start_0
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p1

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_1
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p1

    goto/16 :goto_3

    :cond_2
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    invoke-virtual {v11}, Lua/nav/c;->i()Lad/p1;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, v5, Lad/p1;->a:Ldd/l0;

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    iget-object v1, v1, Lsc/q0;->b:Ljava/lang/String;

    const-string v13, "\u041c\u043e\u0454 \u043c\u0456\u0441\u0446\u0435"

    invoke-static {v1, v13}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v5, :cond_4

    sget-object v1, Ldd/t0;->Companion:Ldd/s0;

    iget-wide v13, v0, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v7, v0, Lua/nav/routing/GeoPoint;->b:D

    iget-wide v9, v5, Ldd/l0;->d:D

    iget-wide v2, v5, Ldd/l0;->e:D

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v19, v2

    move-wide v15, v7

    move-wide/from16 v17, v9

    invoke-static/range {v13 .. v20}, Ldd/s0;->a(DDDD)D

    move-result-wide v1

    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    cmpg-double v1, v1, v7

    if-gtz v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v1, v11, Lua/nav/c;->d:Lad/j0;

    invoke-virtual {v1, v0}, Lad/j0;->F(Lua/nav/routing/GeoPoint;)Lad/o0;

    move-result-object v0

    :goto_2
    iget-object v1, v6, Landroidx/lifecycle/l0;->q:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lua/nav/routing/GeoPoint;

    iget-object v1, v6, Landroidx/lifecycle/l0;->r:Ljava/lang/Object;

    check-cast v1, Lua/nav/routing/GeoPoint;

    if-eqz v0, :cond_7

    move-object v3, v0

    :try_start_2
    sget-object v0, Lad/t1;->a:Lad/t1;

    move-object v5, v1

    iget-object v1, v11, Lua/nav/c;->f:Lid/d1;

    invoke-static {v5}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lu8/m;->p0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Lod/m0;

    const/16 v7, 0xd

    invoke-direct {v5, v11, v7}, Lod/m0;-><init>(Lua/nav/c;I)V

    const/4 v7, 0x0

    iput-object v7, v6, Landroidx/lifecycle/l0;->n:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v6, Landroidx/lifecycle/l0;->m:I

    move-object/from16 v40, v4

    move-object v4, v3

    move-object/from16 v3, v40

    invoke-virtual/range {v0 .. v6}, Lad/t1;->a(Lid/d1;Lua/nav/routing/GeoPoint;Ljava/util/ArrayList;Lad/o0;Li9/c;La9/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_6

    goto/16 :goto_13

    :cond_6
    :goto_3
    check-cast v0, Lad/r1;

    iget-object v0, v0, Lad/r1;->a:Ljava/util/List;

    goto :goto_5

    :cond_7
    move-object v5, v1

    iget-object v0, v11, Lua/nav/c;->f:Lid/d1;

    invoke-static {v2}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v4}, Lu8/m;->p0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v5}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lu8/m;->p0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v7, 0x0

    iput-object v7, v6, Landroidx/lifecycle/l0;->n:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, v6, Landroidx/lifecycle/l0;->m:I

    invoke-interface {v0, v1, v6}, Lid/d1;->d(Ljava/util/List;La9/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_8

    goto/16 :goto_13

    :cond_8
    :goto_4
    check-cast v0, Ljava/util/List;

    :goto_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lua/nav/routing/Route;

    iget-object v4, v3, Lua/nav/routing/Route;->e:Ljava/util/List;

    invoke-static {v4}, Ldd/w0;->g(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-wide v3, v3, Lua/nav/routing/Route;->b:D

    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_9

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :cond_a
    :goto_7
    move-object v0, v1

    goto :goto_9

    :goto_8
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v1

    goto :goto_7

    :goto_9
    instance-of v1, v0, Lt8/l;

    if-nez v1, :cond_b

    sget-object v2, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->h()Luc/f;

    move-result-object v2

    invoke-virtual {v2}, Luc/f;->f()J

    move-result-wide v3

    invoke-virtual {v2}, Luc/f;->j()I

    move-result v5

    const/16 v22, 0x1

    add-int/lit8 v5, v5, 0x1

    iget-object v6, v2, Luc/f;->a:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "build_day"

    sget-object v8, Luc/d;->a:Ljava/util/Set;

    invoke-static {}, Lsc/x0;->a()Ljava/time/ZoneId;

    move-result-object v8

    const-string v9, "zone"

    invoke-static {v8, v9}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "toString(...)"

    invoke-static {v3, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "build_count"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v3, v2, Luc/f;->i:Lx9/l0;

    invoke-virtual {v2}, Luc/f;->c()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lx9/l0;->j(Ljava/lang/Object;)V

    :cond_b
    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_a

    :cond_c
    move-object v1, v0

    :goto_a
    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_16

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_15

    check-cast v3, Lua/nav/routing/Route;

    iget-object v5, v3, Lua/nav/routing/Route;->i:Ljava/util/List;

    if-eqz v5, :cond_11

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, 0x0

    goto :goto_d

    :cond_d
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :cond_e
    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "moderate"

    invoke-static {v7, v8}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    const-string v8, "heavy"

    invoke-static {v7, v8}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    const-string v8, "severe"

    invoke-static {v7, v8}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_f
    add-int/lit8 v6, v6, 0x1

    if-ltz v6, :cond_10

    goto :goto_c

    :cond_10
    invoke-static {}, Lg5/f;->O()V

    const/16 v21, 0x0

    throw v21

    :cond_11
    const/4 v6, -0x1

    :cond_12
    :goto_d
    sget-object v5, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object v5

    iget-object v7, v3, Lua/nav/routing/Route;->a:Ljava/lang/String;

    iget-wide v8, v3, Lua/nav/routing/Route;->b:D

    double-to-int v8, v8

    iget-wide v9, v3, Lua/nav/routing/Route;->c:D

    double-to-int v9, v9

    iget-object v10, v3, Lua/nav/routing/Route;->d:Ljava/lang/Double;

    if-eqz v10, :cond_13

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    double-to-int v10, v12

    goto :goto_e

    :cond_13
    const/4 v10, -0x1

    :goto_e
    iget-object v3, v3, Lua/nav/routing/Route;->i:Ljava/util/List;

    if-eqz v3, :cond_14

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_f

    :cond_14
    const/4 v3, 0x0

    :goto_f
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "route_built i="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " provider="

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " len="

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " dur_s="

    const-string v7, " delay_s="

    invoke-static {v12, v8, v2, v9, v7}, Lm/a;->u(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v2, " congested_segments="

    const-string v7, " of="

    invoke-static {v12, v10, v2, v6, v7}, Lm/a;->u(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ldd/k0;->n(Ljava/lang/String;)V

    move v2, v4

    goto/16 :goto_b

    :cond_15
    invoke-static {}, Lg5/f;->P()V

    const/16 v21, 0x0

    throw v21

    :cond_16
    iget-object v2, v11, Lua/nav/c;->q:Lx9/l0;

    :cond_17
    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Lsc/q0;

    invoke-static {v0}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_19

    move-object/from16 v33, v0

    check-cast v33, Ljava/util/List;

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_18

    const-string v3, "\u041c\u0430\u0440\u0448\u0440\u0443\u0442 \u043d\u0435 \u0437\u043d\u0430\u0439\u0434\u0435\u043d\u043e"

    move-object/from16 v36, v3

    goto :goto_10

    :cond_18
    const/16 v36, 0x0

    :goto_10
    const/16 v38, 0x0

    const v39, 0xc3ff

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x0

    invoke-static/range {v22 .. v39}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v3

    goto :goto_12

    :cond_19
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1a

    const/16 v4, 0x78

    invoke-static {v4, v3}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_11

    :cond_1a
    const/4 v3, 0x0

    :goto_11
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u041f\u043e\u043c\u0438\u043b\u043a\u0430 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcd/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const/16 v38, 0x0

    const v39, 0xcfff

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x0

    invoke-static/range {v22 .. v39}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v3

    :goto_12
    invoke-virtual {v2, v1, v3}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v11}, Lua/nav/c;->G()V

    sget-object v12, Lt8/z;->a:Lt8/z;

    :goto_13
    return-object v12

    :pswitch_0
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v2, v6, Landroidx/lifecycle/l0;->m:I

    if-eqz v2, :cond_1c

    const/4 v7, 0x1

    if-ne v2, v7, :cond_1b

    iget-object v0, v6, Landroidx/lifecycle/l0;->n:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lb/e0;

    iget-object v0, v6, Landroidx/lifecycle/l0;->o:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lu9/v0;

    :try_start_3
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_16

    :catchall_1
    move-exception v0

    goto/16 :goto_1a

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v6, Landroidx/lifecycle/l0;->o:Ljava/lang/Object;

    check-cast v2, Lu9/t;

    invoke-interface {v2}, Lu9/t;->C()Ly8/h;

    move-result-object v2

    invoke-static {v2}, Lu9/v;->n(Ly8/h;)Lu9/v0;

    move-result-object v2

    iget-object v3, v6, Landroidx/lifecycle/l0;->p:Ljava/lang/Object;

    check-cast v3, Lr0/u1;

    iget-object v4, v3, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_4
    iget-object v5, v3, Lr0/u1;->e:Ljava/lang/Throwable;

    if-nez v5, :cond_27

    iget-object v5, v3, Lr0/u1;->u:Lx9/l0;

    invoke-virtual {v5}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr0/q1;

    sget-object v7, Lr0/q1;->m:Lr0/q1;

    invoke-virtual {v5, v7}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-lez v5, :cond_26

    iget-object v5, v3, Lr0/u1;->d:Lu9/v0;

    if-nez v5, :cond_25

    iput-object v2, v3, Lr0/u1;->d:Lu9/v0;

    invoke-virtual {v3}, Lr0/u1;->y()Lu9/f;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    monitor-exit v4

    iget-object v3, v6, Landroidx/lifecycle/l0;->p:Ljava/lang/Object;

    check-cast v3, Lr0/u1;

    new-instance v4, Lod/y6;

    invoke-direct {v4, v1, v3}, Lod/y6;-><init>(ILjava/lang/Object;)V

    sget-object v1, Ld1/p;->a:Lad/b2;

    invoke-static {v1}, Ld1/p;->e(Li9/c;)Ljava/lang/Object;

    sget-object v1, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    sget-object v3, Ld1/p;->h:Ljava/lang/Object;

    invoke-static {v3, v4}, Lu8/m;->q0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    sput-object v3, Ld1/p;->h:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    monitor-exit v1

    new-instance v1, Lb/e0;

    invoke-direct {v1, v4}, Lb/e0;-><init>(Ljava/lang/Object;)V

    sget-object v3, Lr0/u1;->z:Lx9/l0;

    iget-object v3, v6, Landroidx/lifecycle/l0;->p:Ljava/lang/Object;

    check-cast v3, Lr0/u1;

    iget-object v3, v3, Lr0/u1;->y:Lr0/e;

    :cond_1d
    sget-object v4, Lr0/u1;->z:Lx9/l0;

    invoke-virtual {v4}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lu0/e;

    move-object v7, v5

    check-cast v7, Lx0/b;

    sget-object v8, Ly0/b;->a:Ly0/b;

    iget-object v9, v7, Lx0/b;->n:Lw0/b;

    invoke-virtual {v9, v3}, Lw0/b;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    goto :goto_14

    :cond_1e
    invoke-virtual {v7}, Lu8/a;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1f

    new-instance v7, Lx0/a;

    invoke-direct {v7, v8, v8}, Lx0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v3, v7}, Lw0/b;->b(Ljava/lang/Object;Lx0/a;)Lw0/b;

    move-result-object v7

    new-instance v8, Lx0/b;

    invoke-direct {v8, v3, v3, v7}, Lx0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw0/b;)V

    move-object v7, v8

    goto :goto_14

    :cond_1f
    iget-object v10, v7, Lx0/b;->m:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Lw0/b;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast v11, Lx0/a;

    new-instance v12, Lx0/a;

    iget-object v11, v11, Lx0/a;->a:Ljava/lang/Object;

    invoke-direct {v12, v11, v3}, Lx0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v10, v12}, Lw0/b;->b(Ljava/lang/Object;Lx0/a;)Lw0/b;

    move-result-object v9

    new-instance v11, Lx0/a;

    invoke-direct {v11, v10, v8}, Lx0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v3, v11}, Lw0/b;->b(Ljava/lang/Object;Lx0/a;)Lw0/b;

    move-result-object v8

    new-instance v9, Lx0/b;

    iget-object v7, v7, Lx0/b;->l:Ljava/lang/Object;

    invoke-direct {v9, v7, v3, v8}, Lx0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw0/b;)V

    move-object v7, v9

    :goto_14
    if-eq v5, v7, :cond_20

    invoke-virtual {v4, v5, v7}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    :cond_20
    :try_start_6
    iget-object v3, v6, Landroidx/lifecycle/l0;->p:Ljava/lang/Object;

    check-cast v3, Lr0/u1;

    iget-object v4, v3, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v3}, Lr0/u1;->D()Ljava/util/List;

    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    monitor-exit v4

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v8, 0x0

    :goto_15
    if-ge v8, v4, :cond_21

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr0/x;

    invoke-virtual {v5}, Lr0/x;->t()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    :cond_21
    new-instance v3, Landroidx/lifecycle/m0;

    iget-object v4, v6, Landroidx/lifecycle/l0;->q:Ljava/lang/Object;

    check-cast v4, Lr0/t1;

    iget-object v5, v6, Landroidx/lifecycle/l0;->r:Ljava/lang/Object;

    check-cast v5, Lf2/x0;

    const/16 v7, 0x16

    const/4 v8, 0x0

    invoke-direct {v3, v4, v5, v8, v7}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object v2, v6, Landroidx/lifecycle/l0;->o:Ljava/lang/Object;

    iput-object v1, v6, Landroidx/lifecycle/l0;->n:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v6, Landroidx/lifecycle/l0;->m:I

    invoke-static {v3, v6}, Lu9/v;->g(Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-ne v3, v0, :cond_22

    goto :goto_18

    :cond_22
    :goto_16
    invoke-virtual {v1}, Lb/e0;->c()V

    iget-object v0, v6, Landroidx/lifecycle/l0;->p:Ljava/lang/Object;

    check-cast v0, Lr0/u1;

    iget-object v1, v0, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    iget-object v3, v0, Lr0/u1;->d:Lu9/v0;

    if-ne v3, v2, :cond_23

    const/4 v7, 0x0

    iput-object v7, v0, Lr0/u1;->d:Lu9/v0;

    goto :goto_17

    :catchall_2
    move-exception v0

    goto :goto_19

    :cond_23
    :goto_17
    invoke-virtual {v0}, Lr0/u1;->y()Lu9/f;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    monitor-exit v1

    sget-object v0, Lr0/u1;->z:Lx9/l0;

    iget-object v0, v6, Landroidx/lifecycle/l0;->p:Ljava/lang/Object;

    check-cast v0, Lr0/u1;

    iget-object v0, v0, Lr0/u1;->y:Lr0/e;

    invoke-static {v0}, Lr0/e;->b(Lr0/e;)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_18
    return-object v0

    :goto_19
    monitor-exit v1

    throw v0

    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit v4

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_1a
    invoke-virtual {v1}, Lb/e0;->c()V

    iget-object v1, v6, Landroidx/lifecycle/l0;->p:Ljava/lang/Object;

    check-cast v1, Lr0/u1;

    iget-object v3, v1, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_b
    iget-object v4, v1, Lr0/u1;->d:Lu9/v0;

    if-ne v4, v2, :cond_24

    const/4 v7, 0x0

    iput-object v7, v1, Lr0/u1;->d:Lu9/v0;

    goto :goto_1b

    :catchall_4
    move-exception v0

    goto :goto_1c

    :cond_24
    :goto_1b
    invoke-virtual {v1}, Lr0/u1;->y()Lu9/f;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    monitor-exit v3

    sget-object v1, Lr0/u1;->z:Lx9/l0;

    iget-object v1, v6, Landroidx/lifecycle/l0;->p:Ljava/lang/Object;

    check-cast v1, Lr0/u1;

    iget-object v1, v1, Lr0/u1;->y:Lr0/e;

    invoke-static {v1}, Lr0/e;->b(Lr0/e;)V

    throw v0

    :goto_1c
    monitor-exit v3

    throw v0

    :catchall_5
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_1d

    :cond_25
    :try_start_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recomposer already running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recomposer shut down"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :goto_1d
    monitor-exit v4

    throw v0

    :pswitch_1
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v6, Landroidx/lifecycle/l0;->m:I

    if-eqz v1, :cond_29

    const/4 v7, 0x1

    if-ne v1, v7, :cond_28

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1e

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v6, Landroidx/lifecycle/l0;->n:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Lu9/t;

    iget-object v1, v6, Landroidx/lifecycle/l0;->o:Ljava/lang/Object;

    check-cast v1, Ly1/x;

    new-instance v7, Lr/f0;

    iget-object v2, v6, Landroidx/lifecycle/l0;->p:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, La9/i;

    iget-object v2, v6, Landroidx/lifecycle/l0;->q:Ljava/lang/Object;

    move-object v10, v2

    check-cast v10, Li9/c;

    iget-object v2, v6, Landroidx/lifecycle/l0;->r:Ljava/lang/Object;

    move-object v11, v2

    check-cast v11, Lr/p1;

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Lr/f0;-><init>(Lu9/t;Li9/f;Li9/c;Lr/p1;Ly8/c;)V

    const/4 v2, 0x1

    iput v2, v6, Landroidx/lifecycle/l0;->m:I

    invoke-static {v1, v7, v6}, Ly4/s;->e(Ly1/x;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2a

    goto :goto_1f

    :cond_2a
    :goto_1e
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_1f
    return-object v0

    :pswitch_2
    iget-object v0, v6, Landroidx/lifecycle/l0;->r:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    iget-object v1, v6, Landroidx/lifecycle/l0;->p:Ljava/lang/Object;

    check-cast v1, Lr0/u0;

    sget-object v2, Lz8/a;->l:Lz8/a;

    iget v3, v6, Landroidx/lifecycle/l0;->m:I

    if-eqz v3, :cond_2c

    const/4 v7, 0x1

    if-ne v3, v7, :cond_2b

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto :goto_20

    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v3, v6, Landroidx/lifecycle/l0;->n:Ljava/lang/Object;

    check-cast v3, Lua/nav/support/a;

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v7, 0x1

    iput v7, v6, Landroidx/lifecycle/l0;->m:I

    invoke-virtual {v3, v4, v6}, Lua/nav/support/a;->g(Ljava/lang/String;La9/c;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_2d

    goto :goto_22

    :cond_2d
    :goto_20
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, v6, Landroidx/lifecycle/l0;->q:Ljava/lang/Object;

    check-cast v3, Lr0/u0;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v4}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    if-eqz v2, :cond_2e

    const-string v2, ""

    invoke-interface {v1, v2}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    const-string v1, "\u041d\u0430\u0434\u0456\u0441\u043b\u0430\u043d\u043e. \u0412\u0456\u0434\u043f\u043e\u0432\u0456\u0434\u044c \u043f\u0440\u0438\u0439\u0434\u0435 \u0441\u044e\u0434\u0438 \u0439 \u0441\u043f\u043e\u0432\u0456\u0449\u0435\u043d\u043d\u044f\u043c."

    invoke-interface {v0, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    iget-object v0, v6, Landroidx/lifecycle/l0;->o:Ljava/lang/Object;

    check-cast v0, Li9/a;

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    goto :goto_21

    :cond_2e
    const-string v1, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u043d\u0430\u0434\u0456\u0441\u043b\u0430\u0442\u0438: \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u0442\u0435 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442 \u0456 \u0441\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u0449\u0435 \u0440\u0430\u0437."

    invoke-interface {v0, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :goto_21
    sget-object v2, Lt8/z;->a:Lt8/z;

    :goto_22
    return-object v2

    :pswitch_3
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v6, Landroidx/lifecycle/l0;->m:I

    if-eqz v1, :cond_30

    const/4 v7, 0x1

    if-ne v1, v7, :cond_2f

    iget-object v0, v6, Landroidx/lifecycle/l0;->n:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_23

    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v6, Landroidx/lifecycle/l0;->q:Ljava/lang/Object;

    check-cast v1, Lr0/u0;

    iget-object v2, v6, Landroidx/lifecycle/l0;->o:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    iget-object v3, v6, Landroidx/lifecycle/l0;->p:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iput-object v1, v6, Landroidx/lifecycle/l0;->n:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v6, Landroidx/lifecycle/l0;->m:I

    invoke-static {v2, v3, v6}, Lod/m;->R(Landroid/content/Context;Ljava/lang/String;La9/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_31

    goto :goto_24

    :cond_31
    move-object v0, v1

    :goto_23
    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    iget-object v0, v6, Landroidx/lifecycle/l0;->r:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_24
    return-object v0

    :pswitch_4
    iget-object v0, v6, Landroidx/lifecycle/l0;->o:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Landroidx/work/impl/WorkDatabase_Impl;

    sget-object v0, Lt8/z;->a:Lt8/z;

    sget-object v2, Lz8/a;->l:Lz8/a;

    iget v3, v6, Landroidx/lifecycle/l0;->m:I

    if-eqz v3, :cond_33

    const/4 v7, 0x1

    if-ne v3, v7, :cond_32

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_27

    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v3, v6, Landroidx/lifecycle/l0;->n:Ljava/lang/Object;

    check-cast v3, Lu9/t;

    const/4 v4, 0x6

    const/4 v5, -0x1

    const/4 v7, 0x0

    invoke-static {v5, v4, v7}, Lpc/h;->a(IILw9/a;)Lw9/e;

    move-result-object v10

    new-instance v9, Lg5/c;

    iget-object v4, v6, Landroidx/lifecycle/l0;->q:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    invoke-direct {v9, v4, v10}, Lg5/c;-><init>([Ljava/lang/String;Lw9/e;)V

    invoke-interface {v10, v0}, Lw9/u;->l(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Lu9/t;->C()Ly8/h;

    move-result-object v4

    sget-object v5, Lk4/q;->l:Ld7/g;

    invoke-interface {v4, v5}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v4

    if-nez v4, :cond_38

    iget-object v4, v8, Landroidx/work/impl/WorkDatabase;->j:Ljava/util/Map;

    const-string v5, "QueryDispatcher"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_34

    iget-object v7, v8, Landroidx/work/impl/WorkDatabase;->b:Ljava/util/concurrent/Executor;

    if-eqz v7, :cond_35

    invoke-static {v7}, Lu9/v;->k(Ljava/util/concurrent/Executor;)Lu9/p;

    move-result-object v7

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    const/4 v4, 0x0

    goto :goto_25

    :cond_35
    const-string v0, "internalQueryExecutor"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    const/4 v4, 0x0

    throw v4

    :goto_25
    move-object v5, v7

    check-cast v5, Lu9/p;

    const/4 v7, 0x0

    invoke-static {v7, v1, v4}, Lpc/h;->a(IILw9/a;)Lw9/e;

    move-result-object v12

    new-instance v7, Lf2/z2;

    iget-object v1, v6, Landroidx/lifecycle/l0;->r:Ljava/lang/Object;

    move-object v11, v1

    check-cast v11, Lg5/p;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-direct/range {v7 .. v14}, Lf2/z2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    const/4 v1, 0x2

    invoke-static {v3, v5, v4, v7, v1}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    iget-object v1, v6, Landroidx/lifecycle/l0;->p:Ljava/lang/Object;

    check-cast v1, Lx9/h;

    const/4 v7, 0x1

    iput v7, v6, Landroidx/lifecycle/l0;->m:I

    invoke-static {v1, v12, v7, v6}, Lx9/c0;->i(Lx9/h;Lw9/i;ZLa9/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_36

    goto :goto_26

    :cond_36
    move-object v1, v0

    :goto_26
    if-ne v1, v2, :cond_37

    move-object v0, v2

    :cond_37
    :goto_27
    return-object v0

    :cond_38
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :pswitch_5
    iget-object v0, v6, Landroidx/lifecycle/l0;->q:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lk0/b;

    iget-object v0, v6, Landroidx/lifecycle/l0;->o:Ljava/lang/Object;

    check-cast v0, Lf2/q0;

    sget-object v2, Lz8/a;->l:Lz8/a;

    iget v3, v6, Landroidx/lifecycle/l0;->m:I

    if-eqz v3, :cond_3a

    const/4 v7, 0x1

    if-eq v3, v7, :cond_39

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    :try_start_d
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :catchall_7
    move-exception v0

    const/4 v7, 0x0

    goto :goto_28

    :cond_3a
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v3, v6, Landroidx/lifecycle/l0;->n:Ljava/lang/Object;

    check-cast v3, Lu9/t;

    sget-object v4, Lk0/r;->a:Lk0/q;

    iget-object v5, v0, Lf2/q0;->l:Landroid/view/View;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lk0/l;

    invoke-direct {v4, v5}, Lk0/l;-><init>(Landroid/view/View;)V

    new-instance v5, Lk0/s;

    iget-object v7, v0, Lf2/q0;->l:Landroid/view/View;

    new-instance v8, Lk0/a;

    iget-object v9, v6, Landroidx/lifecycle/l0;->r:Ljava/lang/Object;

    check-cast v9, Lk0/n;

    invoke-direct {v8, v9}, Lk0/a;-><init>(Lk0/n;)V

    invoke-direct {v5, v7, v8, v4}, Lk0/s;-><init>(Landroid/view/View;Lk0/a;Lk0/l;)V

    sget-boolean v7, Lj0/e;->a:Z

    if-eqz v7, :cond_3b

    new-instance v7, Landroidx/lifecycle/i0;

    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-direct {v7, v1, v4, v9, v8}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    const/4 v4, 0x3

    invoke-static {v3, v9, v9, v7, v4}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :cond_3b
    iget-object v3, v6, Landroidx/lifecycle/l0;->p:Ljava/lang/Object;

    check-cast v3, Li9/c;

    if-eqz v3, :cond_3c

    invoke-interface {v3, v5}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    iput-object v5, v1, Lk0/b;->c:Lk0/s;

    const/4 v7, 0x1

    :try_start_e
    iput v7, v6, Landroidx/lifecycle/l0;->m:I

    invoke-virtual {v0, v5, v6}, Lf2/q0;->a(Lk0/s;La9/c;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    return-object v2

    :goto_28
    iput-object v7, v1, Lk0/b;->c:Lk0/s;

    throw v0

    :pswitch_6
    sget-object v0, Lt8/z;->a:Lt8/z;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v6, Landroidx/lifecycle/l0;->m:I

    if-eqz v2, :cond_3e

    const/4 v7, 0x1

    if-ne v2, v7, :cond_3d

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_2b

    :cond_3d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v6, Landroidx/lifecycle/l0;->n:Ljava/lang/Object;

    check-cast v2, Ly/c;

    iget-object v3, v6, Landroidx/lifecycle/l0;->o:Ljava/lang/Object;

    check-cast v3, Lu2/x;

    iget-object v4, v6, Landroidx/lifecycle/l0;->p:Ljava/lang/Object;

    check-cast v4, Lb0/r1;

    iget-object v4, v4, Lb0/r1;->a:Lb0/b2;

    iget-object v5, v6, Landroidx/lifecycle/l0;->q:Ljava/lang/Object;

    check-cast v5, Lb0/z2;

    iget-object v5, v5, Lb0/z2;->a:Lp2/j0;

    iget-object v7, v6, Landroidx/lifecycle/l0;->r:Ljava/lang/Object;

    check-cast v7, Lu2/q;

    const/4 v8, 0x1

    iput v8, v6, Landroidx/lifecycle/l0;->m:I

    iget-wide v8, v3, Lu2/x;->b:J

    invoke-static {v8, v9}, Lp2/l0;->e(J)I

    move-result v3

    invoke-interface {v7, v3}, Lu2/q;->s(I)I

    move-result v3

    iget-object v7, v5, Lp2/j0;->a:Lp2/i0;

    iget-object v7, v7, Lp2/i0;->a:Lp2/g;

    iget-object v7, v7, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_3f

    invoke-virtual {v5, v3}, Lp2/j0;->b(I)Ll1/c;

    move-result-object v3

    goto :goto_29

    :cond_3f
    if-eqz v3, :cond_40

    const/16 v22, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v5, v3}, Lp2/j0;->b(I)Ll1/c;

    move-result-object v3

    goto :goto_29

    :cond_40
    iget-object v3, v4, Lb0/b2;->b:Lp2/m0;

    iget-object v5, v4, Lb0/b2;->g:Lb3/c;

    iget-object v4, v4, Lb0/b2;->h:Lt2/d;

    invoke-static {v3, v5, v4}, Lb0/h2;->b(Lp2/m0;Lb3/c;Lt2/d;)J

    move-result-wide v3

    new-instance v5, Ll1/c;

    const-wide v7, 0xffffffffL

    and-long/2addr v3, v7

    long-to-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v4, v4, v7, v3}, Ll1/c;-><init>(FFFF)V

    move-object v3, v5

    :goto_29
    invoke-virtual {v2, v3, v6}, Ly/c;->a(Ll1/c;La9/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_41

    goto :goto_2a

    :cond_41
    move-object v2, v0

    :goto_2a
    if-ne v2, v1, :cond_42

    move-object v0, v1

    :cond_42
    :goto_2b
    return-object v0

    :pswitch_7
    iget-object v0, v6, Landroidx/lifecycle/l0;->n:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lb0/r1;

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v6, Landroidx/lifecycle/l0;->m:I

    if-eqz v1, :cond_44

    const/4 v7, 0x1

    if-ne v1, v7, :cond_43

    :try_start_f
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    goto :goto_2c

    :catchall_8
    move-exception v0

    goto :goto_2e

    :cond_43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    :try_start_10
    iget-object v1, v6, Landroidx/lifecycle/l0;->o:Ljava/lang/Object;

    check-cast v1, Lr0/u0;

    new-instance v2, Lb0/u;

    const/4 v7, 0x1

    invoke-direct {v2, v1, v7}, Lb0/u;-><init>(Lr0/u0;I)V

    invoke-static {v2}, Lr0/r;->F(Li9/a;)Lc5/n;

    move-result-object v1

    new-instance v7, Lb0/s0;

    iget-object v2, v6, Landroidx/lifecycle/l0;->p:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Lu2/y;

    iget-object v2, v6, Landroidx/lifecycle/l0;->q:Ljava/lang/Object;

    move-object v10, v2

    check-cast v10, Lm0/v1;

    iget-object v2, v6, Landroidx/lifecycle/l0;->r:Ljava/lang/Object;

    move-object v11, v2

    check-cast v11, Lu2/k;

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Lb0/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 v2, 0x1

    iput v2, v6, Landroidx/lifecycle/l0;->m:I

    invoke-virtual {v1, v7, v6}, Lc5/n;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    if-ne v1, v0, :cond_45

    goto :goto_2d

    :cond_45
    :goto_2c
    invoke-static {v8}, Lb0/n1;->q(Lb0/r1;)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_2d
    return-object v0

    :goto_2e
    invoke-static {v8}, Lb0/n1;->q(Lb0/r1;)V

    throw v0

    :pswitch_8
    sget-object v0, Lt8/z;->a:Lt8/z;

    iget-object v1, v6, Landroidx/lifecycle/l0;->p:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/q;

    sget-object v2, Lz8/a;->l:Lz8/a;

    iget v3, v6, Landroidx/lifecycle/l0;->m:I

    if-eqz v3, :cond_47

    const/4 v7, 0x1

    if-ne v3, v7, :cond_46

    iget-object v2, v6, Landroidx/lifecycle/l0;->o:Ljava/lang/Object;

    check-cast v2, Lj9/y;

    iget-object v3, v6, Landroidx/lifecycle/l0;->n:Ljava/lang/Object;

    check-cast v3, Lj9/y;

    :try_start_11
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    goto :goto_2f

    :catchall_9
    move-exception v0

    goto/16 :goto_31

    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v3, v1

    check-cast v3, Landroidx/lifecycle/x;

    iget-object v3, v3, Landroidx/lifecycle/x;->c:Landroidx/lifecycle/p;

    sget-object v4, Landroidx/lifecycle/p;->l:Landroidx/lifecycle/p;

    if-ne v3, v4, :cond_48

    goto :goto_30

    :cond_48
    new-instance v7, Lj9/y;

    invoke-direct {v7}, Lj9/y;-><init>()V

    new-instance v3, Lj9/y;

    invoke-direct {v3}, Lj9/y;-><init>()V

    :try_start_12
    sget-object v4, Landroidx/lifecycle/p;->o:Landroidx/lifecycle/p;

    iget-object v4, v6, Landroidx/lifecycle/l0;->q:Ljava/lang/Object;

    move-object v8, v4

    check-cast v8, Lu9/t;

    iget-object v4, v6, Landroidx/lifecycle/l0;->r:Ljava/lang/Object;

    move-object v12, v4

    check-cast v12, Lb4/b;

    iput-object v7, v6, Landroidx/lifecycle/l0;->n:Ljava/lang/Object;

    iput-object v3, v6, Landroidx/lifecycle/l0;->o:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v6, Landroidx/lifecycle/l0;->m:I

    new-instance v10, Lu9/g;

    invoke-static {v6}, Lg6/c1;->u(Ly8/c;)Ly8/c;

    move-result-object v5

    invoke-direct {v10, v4, v5}, Lu9/g;-><init>(ILy8/c;)V

    invoke-virtual {v10}, Lu9/g;->r()V

    sget-object v4, Landroidx/lifecycle/o;->Companion:Landroidx/lifecycle/m;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/lifecycle/o;->ON_START:Landroidx/lifecycle/o;

    sget-object v9, Landroidx/lifecycle/o;->ON_STOP:Landroidx/lifecycle/o;

    new-instance v11, Lca/c;

    invoke-direct {v11}, Lca/c;-><init>()V

    new-instance v5, Landroidx/lifecycle/k0;

    invoke-direct/range {v5 .. v12}, Landroidx/lifecycle/k0;-><init>(Landroidx/lifecycle/o;Lj9/y;Lu9/t;Landroidx/lifecycle/o;Lu9/g;Lca/c;Lb4/b;)V

    iput-object v5, v3, Lj9/y;->m:Ljava/lang/Object;

    invoke-virtual {v1, v5}, Landroidx/lifecycle/q;->a(Landroidx/lifecycle/u;)V

    invoke-virtual {v10}, Lu9/g;->q()Ljava/lang/Object;

    move-result-object v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    if-ne v4, v2, :cond_49

    move-object v0, v2

    goto :goto_30

    :cond_49
    move-object v2, v3

    move-object v3, v7

    :goto_2f
    iget-object v3, v3, Lj9/y;->m:Ljava/lang/Object;

    check-cast v3, Lu9/v0;

    if-eqz v3, :cond_4a

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Lu9/v0;->c(Ljava/util/concurrent/CancellationException;)V

    :cond_4a
    iget-object v2, v2, Lj9/y;->m:Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/t;

    if-eqz v2, :cond_4b

    invoke-virtual {v1, v2}, Landroidx/lifecycle/q;->b(Landroidx/lifecycle/u;)V

    :cond_4b
    :goto_30
    return-object v0

    :catchall_a
    move-exception v0

    move-object v2, v3

    move-object v3, v7

    :goto_31
    iget-object v3, v3, Lj9/y;->m:Ljava/lang/Object;

    check-cast v3, Lu9/v0;

    if-eqz v3, :cond_4c

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Lu9/v0;->c(Ljava/util/concurrent/CancellationException;)V

    :cond_4c
    iget-object v2, v2, Lj9/y;->m:Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/t;

    if-eqz v2, :cond_4d

    invoke-virtual {v1, v2}, Landroidx/lifecycle/q;->b(Landroidx/lifecycle/u;)V

    :cond_4d
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
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
