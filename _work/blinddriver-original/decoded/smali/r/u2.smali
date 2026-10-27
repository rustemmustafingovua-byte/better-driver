.class public final Lr/u2;
.super La9/h;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public m:Ljava/lang/Object;

.field public n:Ljava/lang/Object;

.field public o:Ly1/u;

.field public p:I

.field public synthetic q:Ljava/lang/Object;

.field public final synthetic r:Lu9/t;

.field public final synthetic s:Li9/f;

.field public final synthetic t:Li9/c;

.field public final synthetic u:Li9/c;

.field public final synthetic v:Li9/c;

.field public final synthetic w:Lr/p1;


# direct methods
.method public constructor <init>(Lu9/t;Li9/f;Li9/c;Li9/c;Li9/c;Lr/p1;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lr/u2;->r:Lu9/t;

    iput-object p2, p0, Lr/u2;->s:Li9/f;

    iput-object p3, p0, Lr/u2;->t:Li9/c;

    iput-object p4, p0, Lr/u2;->u:Li9/c;

    iput-object p5, p0, Lr/u2;->v:Li9/c;

    iput-object p6, p0, Lr/u2;->w:Lr/p1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, La9/h;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 8

    new-instance v0, Lr/u2;

    iget-object v5, p0, Lr/u2;->v:Li9/c;

    iget-object v6, p0, Lr/u2;->w:Lr/p1;

    iget-object v1, p0, Lr/u2;->r:Lu9/t;

    iget-object v2, p0, Lr/u2;->s:Li9/f;

    iget-object v3, p0, Lr/u2;->t:Li9/c;

    iget-object v4, p0, Lr/u2;->u:Li9/c;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lr/u2;-><init>(Lu9/t;Li9/f;Li9/c;Li9/c;Li9/c;Lr/p1;Ly8/c;)V

    iput-object p1, v0, Lr/u2;->q:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly1/j0;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lr/u2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr/u2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/u2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lr/u2;->p:I

    const/4 v6, 0x2

    const/4 v8, 0x3

    iget-object v9, v0, Lr/u2;->r:Lu9/t;

    iget-object v10, v0, Lr/u2;->u:Li9/c;

    sget-object v11, Lr/d1;->a:Lr/d1;

    iget-object v13, v0, Lr/u2;->s:Li9/f;

    iget-object v12, v0, Lr/u2;->v:Li9/c;

    sget-object v18, Lt8/z;->a:Lt8/z;

    iget-object v14, v0, Lr/u2;->t:Li9/c;

    const/4 v15, 0x1

    move-object/from16 v16, v14

    iget-object v14, v0, Lr/u2;->w:Lr/p1;

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v0, Lr/u2;->q:Ljava/lang/Object;

    check-cast v0, Lu9/v0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v12, v3

    goto/16 :goto_c

    :pswitch_1
    iget-object v2, v0, Lr/u2;->o:Ly1/u;

    iget-object v5, v0, Lr/u2;->n:Ljava/lang/Object;

    check-cast v5, Ly1/u;

    iget-object v6, v0, Lr/u2;->m:Ljava/lang/Object;

    check-cast v6, Lu9/v0;

    iget-object v8, v0, Lr/u2;->q:Ljava/lang/Object;

    check-cast v8, Ly1/j0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v15, v2

    move-object v2, v6

    move-object v7, v12

    move-object v12, v3

    move-object/from16 v3, p1

    move-object/from16 p1, v16

    goto/16 :goto_a

    :pswitch_2
    iget-object v1, v0, Lr/u2;->m:Ljava/lang/Object;

    check-cast v1, Ly1/u;

    iget-object v0, v0, Lr/u2;->q:Ljava/lang/Object;

    check-cast v0, Lu9/v0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v2, v0

    move-object v7, v12

    move-object/from16 v0, p1

    move-object v12, v3

    goto/16 :goto_9

    :pswitch_3
    iget-object v2, v0, Lr/u2;->n:Ljava/lang/Object;

    check-cast v2, Lu9/v0;

    iget-object v5, v0, Lr/u2;->m:Ljava/lang/Object;

    check-cast v5, Ly1/u;

    iget-object v6, v0, Lr/u2;->q:Ljava/lang/Object;

    check-cast v6, Ly1/j0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v8, v6

    move-object v7, v12

    move-object v4, v14

    move-object v12, v3

    move-object v14, v13

    move-object v13, v2

    move-object/from16 v2, p1

    move-object/from16 p1, v16

    goto/16 :goto_7

    :pswitch_4
    iget-object v0, v0, Lr/u2;->q:Ljava/lang/Object;

    check-cast v0, Lu9/v0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v12, v3

    move-object v4, v14

    goto/16 :goto_4

    :pswitch_5
    iget-object v2, v0, Lr/u2;->n:Ljava/lang/Object;

    check-cast v2, Lu9/v0;

    iget-object v7, v0, Lr/u2;->m:Ljava/lang/Object;

    check-cast v7, Ly1/u;

    iget-object v4, v0, Lr/u2;->q:Ljava/lang/Object;

    check-cast v4, Ly1/j0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v5, v4

    move-object v15, v7

    move-object v7, v12

    move-object v4, v14

    move-object v12, v3

    move-object v14, v13

    move-object/from16 v3, v16

    move-object/from16 v13, p1

    goto/16 :goto_3

    :pswitch_6
    iget-object v2, v0, Lr/u2;->m:Ljava/lang/Object;

    check-cast v2, Lu9/v0;

    iget-object v4, v0, Lr/u2;->q:Ljava/lang/Object;

    check-cast v4, Ly1/j0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v6, p1

    move-object v5, v4

    move-object v7, v12

    move-object v4, v14

    move-object v12, v3

    move-object v14, v13

    move-object/from16 v3, v16

    goto/16 :goto_2

    :pswitch_7
    iget-object v2, v0, Lr/u2;->q:Ljava/lang/Object;

    check-cast v2, Ly1/j0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    goto :goto_0

    :pswitch_8
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v0, Lr/u2;->q:Ljava/lang/Object;

    check-cast v2, Ly1/j0;

    iput-object v2, v0, Lr/u2;->q:Ljava/lang/Object;

    iput v15, v0, Lr/u2;->p:I

    invoke-static {v2, v0, v8}, Lr/x2;->c(Ly1/j0;La9/h;I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_0

    goto/16 :goto_b

    :cond_0
    :goto_0
    check-cast v4, Ly1/u;

    invoke-virtual {v4}, Ly1/u;->a()V

    sget-object v7, Lr/x2;->a:Lr/q0;

    sget-object v7, Lu9/u;->o:Lu9/u;

    new-instance v5, Lr/s2;

    invoke-direct {v5, v14, v3, v15}, Lr/s2;-><init>(Lr/p1;Ly8/c;I)V

    invoke-static {v9, v3, v7, v5, v15}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object v5

    sget-object v7, Lr/x2;->a:Lr/q0;

    if-eq v13, v7, :cond_1

    move-object v7, v12

    new-instance v12, Lr/t2;

    const/16 v17, 0x0

    move-object/from16 v19, v16

    move-object/from16 v16, v3

    move-object/from16 v3, v19

    move/from16 v19, v15

    move-object v15, v4

    move/from16 v4, v19

    invoke-direct/range {v12 .. v17}, Lr/t2;-><init>(Li9/f;Lr/p1;Ly1/u;Ly8/c;I)V

    move-object v4, v14

    move-object v14, v13

    move-object v13, v12

    move-object/from16 v12, v16

    invoke-static {v9, v5, v13}, Lr/x2;->g(Lu9/t;Lu9/v0;Li9/e;)Lu9/j1;

    goto :goto_1

    :cond_1
    move-object v15, v4

    move-object v7, v12

    move-object v4, v14

    move-object v12, v3

    move-object v14, v13

    move-object/from16 v3, v16

    :goto_1
    if-nez v3, :cond_3

    iput-object v2, v0, Lr/u2;->q:Ljava/lang/Object;

    iput-object v5, v0, Lr/u2;->m:Ljava/lang/Object;

    iput v6, v0, Lr/u2;->p:I

    sget-object v6, Ly1/m;->m:Ly1/m;

    invoke-static {v2, v6, v0}, Lr/x2;->i(Ly1/j0;Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_2

    goto/16 :goto_b

    :cond_2
    move-object/from16 v19, v5

    move-object v5, v2

    move-object/from16 v2, v19

    :goto_2
    check-cast v6, Ly1/u;

    goto :goto_5

    :cond_3
    iput-object v2, v0, Lr/u2;->q:Ljava/lang/Object;

    iput-object v15, v0, Lr/u2;->m:Ljava/lang/Object;

    iput-object v5, v0, Lr/u2;->n:Ljava/lang/Object;

    iput v8, v0, Lr/u2;->p:I

    sget-object v13, Ly1/m;->m:Ly1/m;

    invoke-static {v2, v13, v0}, Lr/x2;->h(Ly1/j0;Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v1, :cond_4

    goto/16 :goto_b

    :cond_4
    move-object/from16 v19, v5

    move-object v5, v2

    move-object/from16 v2, v19

    :goto_3
    check-cast v13, Lr/e1;

    invoke-static {v13, v11}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    iget-wide v7, v15, Ly1/u;->c:J

    new-instance v10, Ll1/b;

    invoke-direct {v10, v7, v8}, Ll1/b;-><init>(J)V

    invoke-interface {v3, v10}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v0, Lr/u2;->q:Ljava/lang/Object;

    iput-object v12, v0, Lr/u2;->m:Ljava/lang/Object;

    iput-object v12, v0, Lr/u2;->n:Ljava/lang/Object;

    const/4 v3, 0x4

    iput v3, v0, Lr/u2;->p:I

    invoke-static {v5, v0}, Lr/x2;->a(Ly1/j0;La9/a;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5

    goto/16 :goto_b

    :cond_5
    move-object v0, v2

    :goto_4
    new-instance v1, Lr/r2;

    invoke-direct {v1, v4, v12, v6}, Lr/r2;-><init>(Lr/p1;Ly8/c;I)V

    invoke-static {v9, v0, v1}, Lr/x2;->g(Lu9/t;Lu9/v0;Li9/e;)Lu9/j1;

    return-object v18

    :cond_6
    instance-of v6, v13, Lr/c1;

    if-eqz v6, :cond_7

    check-cast v13, Lr/c1;

    iget-object v6, v13, Lr/c1;->a:Ly1/u;

    goto :goto_5

    :cond_7
    instance-of v6, v13, Lr/b1;

    if-eqz v6, :cond_16

    move-object v6, v12

    :goto_5
    if-nez v6, :cond_8

    new-instance v13, Lr/r2;

    invoke-direct {v13, v4, v12, v8}, Lr/r2;-><init>(Lr/p1;Ly8/c;I)V

    invoke-static {v9, v2, v13}, Lr/x2;->g(Lu9/t;Lu9/v0;Li9/e;)Lu9/j1;

    move-result-object v2

    goto :goto_6

    :cond_8
    invoke-virtual {v6}, Ly1/u;->a()V

    new-instance v8, Lr/r2;

    const/4 v13, 0x4

    invoke-direct {v8, v4, v12, v13}, Lr/r2;-><init>(Lr/p1;Ly8/c;I)V

    invoke-static {v9, v2, v8}, Lr/x2;->g(Lu9/t;Lu9/v0;Li9/e;)Lu9/j1;

    move-result-object v2

    :goto_6
    if-eqz v6, :cond_15

    if-nez v10, :cond_9

    if-eqz v7, :cond_15

    iget-wide v0, v6, Ly1/u;->c:J

    new-instance v2, Ll1/b;

    invoke-direct {v2, v0, v1}, Ll1/b;-><init>(J)V

    invoke-interface {v7, v2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v18

    :cond_9
    iput-object v5, v0, Lr/u2;->q:Ljava/lang/Object;

    iput-object v6, v0, Lr/u2;->m:Ljava/lang/Object;

    iput-object v2, v0, Lr/u2;->n:Ljava/lang/Object;

    const/4 v8, 0x5

    iput v8, v0, Lr/u2;->p:I

    invoke-virtual {v5}, Ly1/j0;->e()Lf2/p2;

    move-result-object v8

    move-object v13, v2

    move-object/from16 p1, v3

    invoke-interface {v8}, Lf2/p2;->a()J

    move-result-wide v2

    new-instance v8, Lm0/p0;

    invoke-direct {v8, v6, v12}, Lm0/p0;-><init>(Ly1/u;Ly8/c;)V

    invoke-virtual {v5, v2, v3, v8, v0}, Ly1/j0;->k(JLi9/e;La9/a;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_a

    goto/16 :goto_b

    :cond_a
    move-object v8, v5

    move-object v5, v6

    :goto_7
    move-object v15, v2

    check-cast v15, Ly1/u;

    if-nez v15, :cond_b

    if-eqz v7, :cond_15

    iget-wide v0, v5, Ly1/u;->c:J

    new-instance v2, Ll1/b;

    invoke-direct {v2, v0, v1}, Ll1/b;-><init>(J)V

    invoke-interface {v7, v2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v18

    :cond_b
    sget-object v2, Lr/x2;->a:Lr/q0;

    sget-object v2, Lu9/u;->o:Lu9/u;

    new-instance v3, Lp/b;

    const/4 v6, 0x6

    invoke-direct {v3, v13, v4, v12, v6}, Lp/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    const/4 v6, 0x1

    invoke-static {v9, v12, v2, v3, v6}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object v2

    sget-object v3, Lr/x2;->a:Lr/q0;

    if-eq v14, v3, :cond_c

    move-object/from16 v16, v12

    new-instance v12, Lr/t2;

    const/16 v17, 0x1

    move-object v13, v14

    move-object v14, v4

    invoke-direct/range {v12 .. v17}, Lr/t2;-><init>(Li9/f;Lr/p1;Ly1/u;Ly8/c;I)V

    move-object v3, v12

    move-object/from16 v12, v16

    invoke-static {v9, v2, v3}, Lr/x2;->g(Lu9/t;Lu9/v0;Li9/e;)Lu9/j1;

    goto :goto_8

    :cond_c
    move-object v14, v4

    :goto_8
    if-nez p1, :cond_e

    iput-object v2, v0, Lr/u2;->q:Ljava/lang/Object;

    iput-object v5, v0, Lr/u2;->m:Ljava/lang/Object;

    iput-object v12, v0, Lr/u2;->n:Ljava/lang/Object;

    const/4 v6, 0x6

    iput v6, v0, Lr/u2;->p:I

    sget-object v3, Ly1/m;->m:Ly1/m;

    invoke-static {v8, v3, v0}, Lr/x2;->i(Ly1/j0;Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_d

    goto :goto_b

    :cond_d
    move-object v1, v5

    :goto_9
    move-object v3, v0

    check-cast v3, Ly1/u;

    goto :goto_d

    :cond_e
    iput-object v8, v0, Lr/u2;->q:Ljava/lang/Object;

    iput-object v2, v0, Lr/u2;->m:Ljava/lang/Object;

    iput-object v5, v0, Lr/u2;->n:Ljava/lang/Object;

    iput-object v15, v0, Lr/u2;->o:Ly1/u;

    const/4 v3, 0x7

    iput v3, v0, Lr/u2;->p:I

    sget-object v3, Ly1/m;->m:Ly1/m;

    invoke-static {v8, v3, v0}, Lr/x2;->h(Ly1/j0;Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_f

    goto :goto_b

    :cond_f
    :goto_a
    check-cast v3, Lr/e1;

    invoke-static {v3, v11}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-wide v3, v15, Ly1/u;->c:J

    new-instance v5, Ll1/b;

    invoke-direct {v5, v3, v4}, Ll1/b;-><init>(J)V

    move-object/from16 v3, p1

    invoke-interface {v3, v5}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v0, Lr/u2;->q:Ljava/lang/Object;

    iput-object v12, v0, Lr/u2;->m:Ljava/lang/Object;

    iput-object v12, v0, Lr/u2;->n:Ljava/lang/Object;

    iput-object v12, v0, Lr/u2;->o:Ly1/u;

    const/16 v3, 0x8

    iput v3, v0, Lr/u2;->p:I

    invoke-static {v8, v0}, Lr/x2;->a(Ly1/j0;La9/a;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_10

    :goto_b
    return-object v1

    :cond_10
    move-object v0, v2

    :goto_c
    new-instance v1, Lr/r2;

    const/4 v3, 0x7

    invoke-direct {v1, v14, v12, v3}, Lr/r2;-><init>(Lr/p1;Ly8/c;I)V

    invoke-static {v9, v0, v1}, Lr/x2;->g(Lu9/t;Lu9/v0;Li9/e;)Lu9/j1;

    return-object v18

    :cond_11
    instance-of v0, v3, Lr/c1;

    if-eqz v0, :cond_12

    check-cast v3, Lr/c1;

    iget-object v3, v3, Lr/c1;->a:Ly1/u;

    move-object v1, v5

    goto :goto_d

    :cond_12
    instance-of v0, v3, Lr/b1;

    if-eqz v0, :cond_14

    move-object v1, v5

    move-object v3, v12

    :goto_d
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Ly1/u;->a()V

    new-instance v0, Lr/r2;

    const/4 v8, 0x5

    invoke-direct {v0, v14, v12, v8}, Lr/r2;-><init>(Lr/p1;Ly8/c;I)V

    invoke-static {v9, v2, v0}, Lr/x2;->g(Lu9/t;Lu9/v0;Li9/e;)Lu9/j1;

    iget-wide v0, v3, Ly1/u;->c:J

    new-instance v2, Ll1/b;

    invoke-direct {v2, v0, v1}, Ll1/b;-><init>(J)V

    invoke-interface {v10, v2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v18

    :cond_13
    new-instance v0, Lr/r2;

    const/4 v6, 0x6

    invoke-direct {v0, v14, v12, v6}, Lr/r2;-><init>(Lr/p1;Ly8/c;I)V

    invoke-static {v9, v2, v0}, Lr/x2;->g(Lu9/t;Lu9/v0;Li9/e;)Lu9/j1;

    if-eqz v7, :cond_15

    iget-wide v0, v1, Ly1/u;->c:J

    new-instance v2, Ll1/b;

    invoke-direct {v2, v0, v1}, Ll1/b;-><init>(J)V

    invoke-interface {v7, v2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v18

    :cond_14
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_15
    return-object v18

    :cond_16
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

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
