.class public final Lod/r2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx9/h;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lx9/h;


# direct methods
.method public synthetic constructor <init>(Lx9/h;I)V
    .locals 0

    iput p2, p0, Lod/r2;->l:I

    iput-object p1, p0, Lod/r2;->m:Lx9/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget v2, v0, Lod/r2;->l:I

    packed-switch v2, :pswitch_data_0

    instance-of v2, v1, Lsc/h0;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lsc/h0;

    iget v3, v2, Lsc/h0;->m:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lsc/h0;->m:I

    goto :goto_0

    :cond_0
    new-instance v2, Lsc/h0;

    invoke-direct {v2, v0, v1}, Lsc/h0;-><init>(Lod/r2;Ly8/c;)V

    :goto_0
    iget-object v1, v2, Lsc/h0;->l:Ljava/lang/Object;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v4, v2, Lsc/h0;->m:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    check-cast v1, Lad/a0;

    iget-boolean v1, v1, Lad/a0;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput v5, v2, Lsc/h0;->m:I

    iget-object v0, v0, Lod/r2;->m:Lx9/h;

    invoke-interface {v0, v1, v2}, Lx9/h;->d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v3, Lt8/z;->a:Lt8/z;

    :goto_2
    return-object v3

    :pswitch_0
    instance-of v2, v1, Lsc/f0;

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Lsc/f0;

    iget v3, v2, Lsc/f0;->m:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_4

    sub-int/2addr v3, v4

    iput v3, v2, Lsc/f0;->m:I

    goto :goto_3

    :cond_4
    new-instance v2, Lsc/f0;

    invoke-direct {v2, v0, v1}, Lsc/f0;-><init>(Lod/r2;Ly8/c;)V

    :goto_3
    iget-object v1, v2, Lsc/f0;->l:Ljava/lang/Object;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v4, v2, Lsc/f0;->m:I

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    if-ne v4, v5, :cond_5

    invoke-static {v1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {v1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    check-cast v1, Ldd/n;

    iget-object v1, v1, Ldd/n;->c:Ldd/l0;

    iput v5, v2, Lsc/f0;->m:I

    iget-object v0, v0, Lod/r2;->m:Lx9/h;

    invoke-interface {v0, v1, v2}, Lx9/h;->d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    sget-object v3, Lt8/z;->a:Lt8/z;

    :goto_5
    return-object v3

    :pswitch_1
    instance-of v2, v1, Lsc/c0;

    if-eqz v2, :cond_8

    move-object v2, v1

    check-cast v2, Lsc/c0;

    iget v3, v2, Lsc/c0;->m:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_8

    sub-int/2addr v3, v4

    iput v3, v2, Lsc/c0;->m:I

    goto :goto_6

    :cond_8
    new-instance v2, Lsc/c0;

    invoke-direct {v2, v0, v1}, Lsc/c0;-><init>(Lod/r2;Ly8/c;)V

    :goto_6
    iget-object v1, v2, Lsc/c0;->l:Ljava/lang/Object;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v4, v2, Lsc/c0;->m:I

    const/4 v5, 0x1

    if-eqz v4, :cond_a

    if-ne v4, v5, :cond_9

    invoke-static {v1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_7

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-static {v1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    check-cast v1, Lad/a0;

    iget-boolean v1, v1, Lad/a0;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput v5, v2, Lsc/c0;->m:I

    iget-object v0, v0, Lod/r2;->m:Lx9/h;

    invoke-interface {v0, v1, v2}, Lx9/h;->d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_b

    goto :goto_8

    :cond_b
    :goto_7
    sget-object v3, Lt8/z;->a:Lt8/z;

    :goto_8
    return-object v3

    :pswitch_2
    instance-of v2, v1, Lsc/w;

    if-eqz v2, :cond_c

    move-object v2, v1

    check-cast v2, Lsc/w;

    iget v3, v2, Lsc/w;->m:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_c

    sub-int/2addr v3, v4

    iput v3, v2, Lsc/w;->m:I

    goto :goto_9

    :cond_c
    new-instance v2, Lsc/w;

    invoke-direct {v2, v0, v1}, Lsc/w;-><init>(Lod/r2;Ly8/c;)V

    :goto_9
    iget-object v1, v2, Lsc/w;->l:Ljava/lang/Object;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v4, v2, Lsc/w;->m:I

    const/4 v5, 0x1

    if-eqz v4, :cond_e

    if-ne v4, v5, :cond_d

    invoke-static {v1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_a

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-static {v1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    check-cast v1, Lua/nav/Tuning;

    iget-wide v6, v1, Lua/nav/Tuning;->E:D

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, v6, v7}, Ljava/lang/Double;-><init>(D)V

    iput v5, v2, Lsc/w;->m:I

    iget-object v0, v0, Lod/r2;->m:Lx9/h;

    invoke-interface {v0, v1, v2}, Lx9/h;->d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_f

    goto :goto_b

    :cond_f
    :goto_a
    sget-object v3, Lt8/z;->a:Lt8/z;

    :goto_b
    return-object v3

    :pswitch_3
    instance-of v2, v1, Lsc/n;

    if-eqz v2, :cond_10

    move-object v2, v1

    check-cast v2, Lsc/n;

    iget v3, v2, Lsc/n;->m:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_10

    sub-int/2addr v3, v4

    iput v3, v2, Lsc/n;->m:I

    goto :goto_c

    :cond_10
    new-instance v2, Lsc/n;

    invoke-direct {v2, v0, v1}, Lsc/n;-><init>(Lod/r2;Ly8/c;)V

    :goto_c
    iget-object v1, v2, Lsc/n;->l:Ljava/lang/Object;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v4, v2, Lsc/n;->m:I

    const/4 v5, 0x1

    if-eqz v4, :cond_12

    if-ne v4, v5, :cond_11

    invoke-static {v1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_d

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    invoke-static {v1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    check-cast v1, Lad/a0;

    iget-boolean v1, v1, Lad/a0;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput v5, v2, Lsc/n;->m:I

    iget-object v0, v0, Lod/r2;->m:Lx9/h;

    invoke-interface {v0, v1, v2}, Lx9/h;->d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_13

    goto :goto_e

    :cond_13
    :goto_d
    sget-object v3, Lt8/z;->a:Lt8/z;

    :goto_e
    return-object v3

    :pswitch_4
    instance-of v2, v1, Lsc/l;

    if-eqz v2, :cond_14

    move-object v2, v1

    check-cast v2, Lsc/l;

    iget v3, v2, Lsc/l;->m:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_14

    sub-int/2addr v3, v4

    iput v3, v2, Lsc/l;->m:I

    goto :goto_f

    :cond_14
    new-instance v2, Lsc/l;

    invoke-direct {v2, v0, v1}, Lsc/l;-><init>(Lod/r2;Ly8/c;)V

    :goto_f
    iget-object v1, v2, Lsc/l;->l:Ljava/lang/Object;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v4, v2, Lsc/l;->m:I

    const/4 v5, 0x1

    if-eqz v4, :cond_16

    if-ne v4, v5, :cond_15

    invoke-static {v1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_10

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    invoke-static {v1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    check-cast v1, Lad/a0;

    iget-boolean v1, v1, Lad/a0;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput v5, v2, Lsc/l;->m:I

    iget-object v0, v0, Lod/r2;->m:Lx9/h;

    invoke-interface {v0, v1, v2}, Lx9/h;->d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_17

    goto :goto_11

    :cond_17
    :goto_10
    sget-object v3, Lt8/z;->a:Lt8/z;

    :goto_11
    return-object v3

    :pswitch_5
    instance-of v2, v1, Lod/q2;

    if-eqz v2, :cond_18

    move-object v2, v1

    check-cast v2, Lod/q2;

    iget v3, v2, Lod/q2;->m:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_18

    sub-int/2addr v3, v4

    iput v3, v2, Lod/q2;->m:I

    goto :goto_12

    :cond_18
    new-instance v2, Lod/q2;

    invoke-direct {v2, v0, v1}, Lod/q2;-><init>(Lod/r2;Ly8/c;)V

    :goto_12
    iget-object v1, v2, Lod/q2;->l:Ljava/lang/Object;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v4, v2, Lod/q2;->m:I

    const/4 v5, 0x1

    if-eqz v4, :cond_1a

    if-ne v4, v5, :cond_19

    invoke-static {v1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_13

    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    invoke-static {v1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v6, p1

    check-cast v6, Ldd/n;

    new-instance v13, Ldd/m0;

    invoke-direct {v13}, Ldd/m0;-><init>()V

    const/16 v19, 0x0

    const/16 v20, 0x1fbf

    const/4 v7, 0x0

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

    invoke-static/range {v6 .. v20}, Ldd/n;->a(Ldd/n;Ldd/l0;Ldd/y0;Ldd/l0;Ldd/l0;Ldd/l0;Ldd/p;Ldd/m0;Ldd/t;ZIIZLjava/lang/String;I)Ldd/n;

    move-result-object v1

    iput v5, v2, Lod/q2;->m:I

    iget-object v0, v0, Lod/r2;->m:Lx9/h;

    invoke-interface {v0, v1, v2}, Lx9/h;->d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_1b

    goto :goto_14

    :cond_1b
    :goto_13
    sget-object v3, Lt8/z;->a:Lt8/z;

    :goto_14
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
