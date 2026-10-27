.class public final Lb0/y1;
.super La9/h;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic m:I

.field public n:I

.field public o:Ljava/lang/Object;

.field public p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V
    .locals 0

    .line 1
    iput p4, p0, Lb0/y1;->m:I

    iput-object p1, p0, Lb0/y1;->p:Ljava/lang/Object;

    iput-object p2, p0, Lb0/y1;->q:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/h;-><init>(ILy8/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ly8/c;I)V
    .locals 0

    .line 2
    iput p3, p0, Lb0/y1;->m:I

    iput-object p1, p0, Lb0/y1;->q:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/h;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Ly8/h;Li9/e;Ly8/c;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lb0/y1;->m:I

    .line 3
    iput-object p1, p0, Lb0/y1;->p:Ljava/lang/Object;

    check-cast p2, La9/h;

    iput-object p2, p0, Lb0/y1;->q:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/h;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 3

    iget v0, p0, Lb0/y1;->m:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lb0/y1;

    iget-object v1, p0, Lb0/y1;->p:Ljava/lang/Object;

    check-cast v1, Ly1/m;

    iget-object p0, p0, Lb0/y1;->q:Ljava/lang/Object;

    check-cast p0, Lj9/y;

    const/4 v2, 0x4

    invoke-direct {v0, v1, p0, p2, v2}, Lb0/y1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v0, Lb0/y1;->o:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    new-instance v0, Lb0/y1;

    iget-object p0, p0, Lb0/y1;->q:Ljava/lang/Object;

    check-cast p0, Lod/x4;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p2, v1}, Lb0/y1;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v0, Lb0/y1;->p:Ljava/lang/Object;

    return-object v0

    :pswitch_1
    new-instance v0, Lb0/y1;

    iget-object v1, p0, Lb0/y1;->p:Ljava/lang/Object;

    check-cast v1, Ly8/h;

    iget-object p0, p0, Lb0/y1;->q:Ljava/lang/Object;

    check-cast p0, La9/h;

    invoke-direct {v0, v1, p0, p2}, Lb0/y1;-><init>(Ly8/h;Li9/e;Ly8/c;)V

    iput-object p1, v0, Lb0/y1;->o:Ljava/lang/Object;

    return-object v0

    :pswitch_2
    new-instance v0, Lb0/y1;

    iget-object v1, p0, Lb0/y1;->p:Ljava/lang/Object;

    check-cast v1, Lm0/b1;

    iget-object p0, p0, Lb0/y1;->q:Ljava/lang/Object;

    check-cast p0, Lm0/f0;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, p2, v2}, Lb0/y1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v0, Lb0/y1;->o:Ljava/lang/Object;

    return-object v0

    :pswitch_3
    new-instance v0, Lb0/y1;

    iget-object p0, p0, Lb0/y1;->q:Ljava/lang/Object;

    check-cast p0, Lb0/c2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lb0/y1;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v0, Lb0/y1;->o:Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lb0/y1;->m:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ly1/j0;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lb0/y1;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lb0/y1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lb0/y1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lq9/i;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lb0/y1;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lb0/y1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lb0/y1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Ly1/j0;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lb0/y1;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lb0/y1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lb0/y1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Ly1/j0;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lb0/y1;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lb0/y1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lb0/y1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Ly1/j0;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lb0/y1;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lb0/y1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lb0/y1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    iget v0, v1, Lb0/y1;->m:I

    const/4 v2, 0x0

    const/4 v4, 0x2

    sget-object v5, Lt8/z;->a:Lt8/z;

    const-string v6, "call to \'resume\' before \'invoke\' with coroutine"

    const/4 v7, 0x1

    iget-object v8, v1, Lb0/y1;->q:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v8, Lj9/y;

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v2, v1, Lb0/y1;->n:I

    sget-object v9, Lr/b1;->a:Lr/b1;

    if-eqz v2, :cond_2

    if-eq v2, v7, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v2, v1, Lb0/y1;->o:Ljava/lang/Object;

    check-cast v2, Ly1/j0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto/16 :goto_6

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v1, Lb0/y1;->o:Ljava/lang/Object;

    check-cast v2, Ly1/j0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v6, p1

    goto :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v1, Lb0/y1;->o:Ljava/lang/Object;

    check-cast v2, Ly1/j0;

    :goto_0
    iget-object v6, v1, Lb0/y1;->p:Ljava/lang/Object;

    check-cast v6, Ly1/m;

    iput-object v2, v1, Lb0/y1;->o:Ljava/lang/Object;

    iput v7, v1, Lb0/y1;->n:I

    invoke-virtual {v2, v6, v1}, Ly1/j0;->b(Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_3

    goto :goto_5

    :cond_3
    :goto_1
    check-cast v6, Ly1/l;

    iget-object v10, v6, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_c

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ly1/u;

    invoke-static {v13}, Ly1/t;->c(Ly1/u;)Z

    move-result v13

    if-nez v13, :cond_b

    iget v6, v6, Ly1/l;->c:I

    if-ne v6, v4, :cond_4

    sget-object v0, Lr/d1;->a:Lr/d1;

    iput-object v0, v8, Lj9/y;->m:Ljava/lang/Object;

    goto/16 :goto_8

    :cond_4
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v6

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v6, :cond_7

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ly1/u;

    invoke-virtual {v12}, Ly1/u;->b()Z

    move-result v13

    if-nez v13, :cond_6

    iget-object v13, v2, Ly1/j0;->q:Ly1/k0;

    iget-wide v13, v13, Ly1/k0;->I:J

    invoke-virtual {v2}, Ly1/j0;->c()J

    move-result-wide v3

    invoke-static {v12, v13, v14, v3, v4}, Ly1/t;->f(Ly1/u;JJ)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x2

    goto :goto_3

    :cond_6
    :goto_4
    iput-object v9, v8, Lj9/y;->m:Ljava/lang/Object;

    goto :goto_8

    :cond_7
    sget-object v3, Ly1/m;->n:Ly1/m;

    iput-object v2, v1, Lb0/y1;->o:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, v1, Lb0/y1;->n:I

    invoke-virtual {v2, v3, v1}, Ly1/j0;->b(Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_8

    :goto_5
    move-object v5, v0

    goto :goto_8

    :cond_8
    :goto_6
    check-cast v3, Ly1/l;

    iget-object v3, v3, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v4, :cond_a

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ly1/u;

    invoke-virtual {v10}, Ly1/u;->b()Z

    move-result v10

    if-eqz v10, :cond_9

    iput-object v9, v8, Lj9/y;->m:Ljava/lang/Object;

    goto :goto_8

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_a
    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x2

    goto :goto_2

    :cond_c
    new-instance v0, Lr/c1;

    const/4 v15, 0x0

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly1/u;

    invoke-direct {v0, v1}, Lr/c1;-><init>(Ly1/u;)V

    iput-object v0, v8, Lj9/y;->m:Ljava/lang/Object;

    :goto_8
    return-object v5

    :pswitch_0
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v3, v1, Lb0/y1;->n:I

    if-eqz v3, :cond_e

    if-ne v3, v7, :cond_d

    iget-object v3, v1, Lb0/y1;->o:Ljava/lang/Object;

    iget-object v4, v1, Lb0/y1;->p:Ljava/lang/Object;

    check-cast v4, Lq9/i;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_9

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v3, v1, Lb0/y1;->p:Ljava/lang/Object;

    check-cast v3, Lq9/i;

    move-object v4, v3

    :cond_f
    move-object v3, v8

    check-cast v3, Lod/x4;

    invoke-virtual {v3}, Lod/x4;->invoke()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_10

    iput-object v4, v1, Lb0/y1;->p:Ljava/lang/Object;

    iput-object v3, v1, Lb0/y1;->o:Ljava/lang/Object;

    iput v7, v1, Lb0/y1;->n:I

    invoke-virtual {v4, v3, v1}, Lq9/i;->b(Ljava/lang/Object;Ly8/c;)V

    sget-object v1, Lz8/a;->l:Lz8/a;

    move-object v5, v0

    goto :goto_a

    :cond_10
    move-object v3, v2

    :goto_9
    if-nez v3, :cond_f

    :goto_a
    return-object v5

    :pswitch_1
    iget-object v0, v1, Lb0/y1;->p:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ly8/h;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v0, v1, Lb0/y1;->n:I

    const/4 v4, 0x3

    if-eqz v0, :cond_14

    if-eq v0, v7, :cond_13

    const/4 v9, 0x2

    if-eq v0, v9, :cond_12

    if-ne v0, v4, :cond_11

    iget-object v0, v1, Lb0/y1;->o:Ljava/lang/Object;

    check-cast v0, Ly1/j0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_b

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v0, v1, Lb0/y1;->o:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ly1/j0;

    :try_start_0
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    goto :goto_e

    :cond_13
    iget-object v0, v1, Lb0/y1;->o:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ly1/j0;

    :try_start_1
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_d

    :cond_14
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v0, v1, Lb0/y1;->o:Ljava/lang/Object;

    check-cast v0, Ly1/j0;

    :goto_b
    move-object v6, v0

    :cond_15
    :goto_c
    invoke-static {v2}, Lu9/v;->s(Ly8/h;)Z

    move-result v0

    if-eqz v0, :cond_18

    :try_start_2
    move-object v0, v8

    check-cast v0, La9/h;

    iput-object v6, v1, Lb0/y1;->o:Ljava/lang/Object;

    iput v7, v1, Lb0/y1;->n:I

    invoke-interface {v0, v6, v1}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_16

    goto :goto_f

    :cond_16
    :goto_d
    iput-object v6, v1, Lb0/y1;->o:Ljava/lang/Object;

    const/4 v9, 0x2

    iput v9, v1, Lb0/y1;->n:I

    sget-object v0, Ly1/m;->n:Ly1/m;

    invoke-static {v6, v0, v1}, Ly4/s;->d(Ly1/j0;Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    if-ne v0, v3, :cond_15

    goto :goto_f

    :goto_e
    invoke-static {v2}, Lu9/v;->s(Ly8/h;)Z

    move-result v9

    if-eqz v9, :cond_17

    iput-object v6, v1, Lb0/y1;->o:Ljava/lang/Object;

    iput v4, v1, Lb0/y1;->n:I

    sget-object v0, Ly1/m;->n:Ly1/m;

    invoke-static {v6, v0, v1}, Ly4/s;->d(Ly1/j0;Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_15

    :goto_f
    move-object v5, v3

    goto :goto_10

    :cond_17
    throw v0

    :cond_18
    :goto_10
    return-object v5

    :pswitch_2
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v3, v1, Lb0/y1;->n:I

    if-eqz v3, :cond_1b

    if-eq v3, v7, :cond_1a

    const/4 v9, 0x2

    if-ne v3, v9, :cond_19

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_13

    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    iget-object v3, v1, Lb0/y1;->o:Ljava/lang/Object;

    check-cast v3, Ly1/j0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    goto :goto_11

    :cond_1b
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v3, v1, Lb0/y1;->o:Ljava/lang/Object;

    check-cast v3, Ly1/j0;

    iput-object v3, v1, Lb0/y1;->o:Ljava/lang/Object;

    iput v7, v1, Lb0/y1;->n:I

    sget-object v4, Lr/x2;->a:Lr/q0;

    sget-object v4, Ly1/m;->m:Ly1/m;

    invoke-static {v3, v4, v1}, Lr/x2;->d(Ly1/j0;Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_1c

    goto :goto_12

    :cond_1c
    :goto_11
    check-cast v4, Ly1/u;

    sget-object v6, Ly1/m;->l:Ly1/m;

    iput-object v2, v1, Lb0/y1;->o:Ljava/lang/Object;

    const/4 v9, 0x2

    iput v9, v1, Lb0/y1;->n:I

    invoke-static {v3, v4, v6, v1}, Lr/i0;->a(Ly1/j0;Ly1/u;Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_1d

    :goto_12
    move-object v5, v0

    goto :goto_14

    :cond_1d
    :goto_13
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, v1, Lb0/y1;->p:Ljava/lang/Object;

    check-cast v0, Lm0/b1;

    invoke-virtual {v0}, Lm0/b1;->e()Lb0/d1;

    move-result-object v0

    if-eqz v0, :cond_1e

    goto :goto_14

    :cond_1e
    check-cast v8, Lm0/f0;

    invoke-virtual {v8}, Lm0/f0;->invoke()Ljava/lang/Object;

    :cond_1f
    :goto_14
    return-object v5

    :pswitch_3
    const/4 v15, 0x0

    check-cast v8, Lb0/c2;

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v2, v1, Lb0/y1;->n:I

    if-eqz v2, :cond_22

    if-eq v2, v7, :cond_21

    const/4 v9, 0x2

    if-ne v2, v9, :cond_20

    iget-object v2, v1, Lb0/y1;->p:Ljava/lang/Object;

    check-cast v2, Ly1/u;

    iget-object v3, v1, Lb0/y1;->o:Ljava/lang/Object;

    check-cast v3, Ly1/j0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    const/4 v9, 0x2

    goto :goto_18

    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iget-object v2, v1, Lb0/y1;->o:Ljava/lang/Object;

    check-cast v2, Ly1/j0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    const/4 v9, 0x2

    goto :goto_15

    :cond_22
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v1, Lb0/y1;->o:Ljava/lang/Object;

    check-cast v2, Ly1/j0;

    iput-object v2, v1, Lb0/y1;->o:Ljava/lang/Object;

    iput v7, v1, Lb0/y1;->n:I

    const/4 v9, 0x2

    invoke-static {v2, v1, v9}, Lr/x2;->c(Ly1/j0;La9/h;I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_23

    goto :goto_17

    :cond_23
    :goto_15
    check-cast v3, Ly1/u;

    iget-wide v6, v3, Ly1/u;->c:J

    invoke-interface {v8}, Lb0/c2;->d()V

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    :goto_16
    iput-object v3, v1, Lb0/y1;->o:Ljava/lang/Object;

    iput-object v2, v1, Lb0/y1;->p:Ljava/lang/Object;

    iput v9, v1, Lb0/y1;->n:I

    sget-object v4, Ly1/m;->m:Ly1/m;

    invoke-virtual {v3, v4, v1}, Ly1/j0;->b(Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_24

    :goto_17
    move-object v5, v0

    goto :goto_1a

    :cond_24
    :goto_18
    check-cast v4, Ly1/l;

    iget-object v4, v4, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v6

    move v7, v15

    :goto_19
    if-ge v7, v6, :cond_26

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ly1/u;

    iget-wide v11, v10, Ly1/u;->a:J

    iget-wide v13, v2, Ly1/u;->a:J

    invoke-static {v11, v12, v13, v14}, Ly1/t;->e(JJ)Z

    move-result v11

    if-eqz v11, :cond_25

    iget-boolean v10, v10, Ly1/u;->d:Z

    if-eqz v10, :cond_25

    goto :goto_16

    :cond_25
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    :cond_26
    invoke-interface {v8}, Lb0/c2;->c()V

    :goto_1a
    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
