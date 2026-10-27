.class public final Lr/f0;
.super La9/h;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic m:I

.field public n:I

.field public synthetic o:Ljava/lang/Object;

.field public p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Lt8/e;

.field public final synthetic s:Lt8/e;

.field public final synthetic t:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lp2/y;Lo0/k;Lod/c4;Lb0/u;Ly8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lr/f0;->m:I

    .line 1
    iput-object p1, p0, Lr/f0;->q:Ljava/lang/Object;

    iput-object p2, p0, Lr/f0;->r:Lt8/e;

    iput-object p3, p0, Lr/f0;->s:Lt8/e;

    iput-object p4, p0, Lr/f0;->t:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, La9/h;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Lu9/t;Li9/f;Li9/c;Lr/p1;Ly8/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lr/f0;->m:I

    .line 2
    iput-object p1, p0, Lr/f0;->q:Ljava/lang/Object;

    check-cast p2, La9/i;

    iput-object p2, p0, Lr/f0;->r:Lt8/e;

    iput-object p3, p0, Lr/f0;->s:Lt8/e;

    iput-object p4, p0, Lr/f0;->t:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, La9/h;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 8

    iget v0, p0, Lr/f0;->m:I

    packed-switch v0, :pswitch_data_0

    new-instance v1, Lr/f0;

    iget-object v0, p0, Lr/f0;->q:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lu9/t;

    iget-object v0, p0, Lr/f0;->r:Lt8/e;

    move-object v3, v0

    check-cast v3, La9/i;

    iget-object v0, p0, Lr/f0;->s:Lt8/e;

    move-object v4, v0

    check-cast v4, Li9/c;

    iget-object p0, p0, Lr/f0;->t:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Lr/p1;

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lr/f0;-><init>(Lu9/t;Li9/f;Li9/c;Lr/p1;Ly8/c;)V

    iput-object p1, v1, Lr/f0;->o:Ljava/lang/Object;

    return-object v1

    :pswitch_0
    move-object v6, p2

    new-instance v2, Lr/f0;

    iget-object p2, p0, Lr/f0;->q:Ljava/lang/Object;

    move-object v3, p2

    check-cast v3, Lp2/y;

    iget-object p2, p0, Lr/f0;->r:Lt8/e;

    move-object v4, p2

    check-cast v4, Lo0/k;

    iget-object p2, p0, Lr/f0;->s:Lt8/e;

    move-object v5, p2

    check-cast v5, Lod/c4;

    iget-object p0, p0, Lr/f0;->t:Ljava/lang/Object;

    check-cast p0, Lb0/u;

    move-object v7, v6

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lr/f0;-><init>(Lp2/y;Lo0/k;Lod/c4;Lb0/u;Ly8/c;)V

    iput-object p1, v2, Lr/f0;->o:Ljava/lang/Object;

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lr/f0;->m:I

    check-cast p1, Ly1/j0;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lr/f0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr/f0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/f0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lr/f0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr/f0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/f0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v5, p0

    iget v0, v5, Lr/f0;->m:I

    sget-object v6, Lt8/z;->a:Lt8/z;

    iget-object v7, v5, Lr/f0;->s:Lt8/e;

    iget-object v1, v5, Lr/f0;->r:Lt8/e;

    const/4 v8, 0x3

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    const/4 v9, 0x0

    iget-object v10, v5, Lr/f0;->t:Ljava/lang/Object;

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, v5, Lr/f0;->q:Ljava/lang/Object;

    check-cast v0, Lu9/t;

    check-cast v10, Lr/p1;

    sget-object v11, Lz8/a;->l:Lz8/a;

    iget v12, v5, Lr/f0;->n:I

    const/4 v13, 0x0

    if-eqz v12, :cond_2

    if-eq v12, v4, :cond_1

    if-ne v12, v3, :cond_0

    iget-object v1, v5, Lr/f0;->o:Ljava/lang/Object;

    check-cast v1, Lu9/v0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v2, v1

    move-object/from16 v1, p1

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v5, Lr/f0;->p:Ljava/lang/Object;

    check-cast v2, Lu9/j1;

    iget-object v8, v5, Lr/f0;->o:Ljava/lang/Object;

    check-cast v8, Ly1/j0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v12, v8

    move-object/from16 v8, p1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v5, Lr/f0;->o:Ljava/lang/Object;

    check-cast v2, Ly1/j0;

    sget-object v12, Lr/x2;->a:Lr/q0;

    sget-object v12, Lu9/u;->o:Lu9/u;

    new-instance v14, Lr/s2;

    invoke-direct {v14, v10, v9, v13}, Lr/s2;-><init>(Lr/p1;Ly8/c;I)V

    invoke-static {v0, v9, v12, v14, v4}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object v12

    iput-object v2, v5, Lr/f0;->o:Ljava/lang/Object;

    iput-object v12, v5, Lr/f0;->p:Ljava/lang/Object;

    iput v4, v5, Lr/f0;->n:I

    invoke-static {v2, v5, v8}, Lr/x2;->c(Ly1/j0;La9/h;I)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v11, :cond_3

    goto :goto_1

    :cond_3
    move-object/from16 v16, v12

    move-object v12, v2

    move-object/from16 v2, v16

    :goto_0
    check-cast v8, Ly1/u;

    invoke-virtual {v8}, Ly1/u;->a()V

    check-cast v1, La9/i;

    sget-object v14, Lr/x2;->a:Lr/q0;

    if-eq v1, v14, :cond_4

    new-instance v14, Landroidx/lifecycle/m0;

    invoke-direct {v14, v1, v10, v8, v9}, Landroidx/lifecycle/m0;-><init>(Li9/f;Lr/p1;Ly1/u;Ly8/c;)V

    invoke-static {v0, v2, v14}, Lr/x2;->g(Lu9/t;Lu9/v0;Li9/e;)Lu9/j1;

    :cond_4
    iput-object v2, v5, Lr/f0;->o:Ljava/lang/Object;

    iput-object v9, v5, Lr/f0;->p:Ljava/lang/Object;

    iput v3, v5, Lr/f0;->n:I

    sget-object v1, Ly1/m;->m:Ly1/m;

    invoke-static {v12, v1, v5}, Lr/x2;->i(Ly1/j0;Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v11, :cond_5

    :goto_1
    move-object v6, v11

    goto :goto_3

    :cond_5
    :goto_2
    check-cast v1, Ly1/u;

    if-nez v1, :cond_6

    new-instance v1, Lr/r2;

    invoke-direct {v1, v10, v9, v13}, Lr/r2;-><init>(Lr/p1;Ly8/c;I)V

    invoke-static {v0, v2, v1}, Lr/x2;->g(Lu9/t;Lu9/v0;Li9/e;)Lu9/j1;

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Ly1/u;->a()V

    new-instance v3, Lr/r2;

    invoke-direct {v3, v10, v9, v4}, Lr/r2;-><init>(Lr/p1;Ly8/c;I)V

    invoke-static {v0, v2, v3}, Lr/x2;->g(Lu9/t;Lu9/v0;Li9/e;)Lu9/j1;

    check-cast v7, Li9/c;

    iget-wide v0, v1, Ly1/u;->c:J

    new-instance v2, Ll1/b;

    invoke-direct {v2, v0, v1}, Ll1/b;-><init>(J)V

    invoke-interface {v7, v2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-object v6

    :pswitch_0
    move-object v11, v1

    check-cast v11, Lo0/k;

    sget-object v12, Lz8/a;->l:Lz8/a;

    iget v0, v5, Lr/f0;->n:I

    if-eqz v0, :cond_a

    if-eq v0, v4, :cond_9

    if-eq v0, v3, :cond_8

    if-ne v0, v8, :cond_7

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto/16 :goto_7

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v0, v5, Lr/f0;->p:Ljava/lang/Object;

    check-cast v0, Lj9/w;

    iget-object v1, v5, Lr/f0;->o:Ljava/lang/Object;

    check-cast v1, Ly1/j0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v2, v1

    move-object/from16 v1, p1

    goto :goto_5

    :cond_9
    iget-object v0, v5, Lr/f0;->o:Ljava/lang/Object;

    check-cast v0, Ly1/j0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    goto :goto_4

    :cond_a
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v0, v5, Lr/f0;->o:Ljava/lang/Object;

    check-cast v0, Ly1/j0;

    iput-object v0, v5, Lr/f0;->o:Ljava/lang/Object;

    iput v4, v5, Lr/f0;->n:I

    invoke-static {v0, v5, v3}, Lr/x2;->c(Ly1/j0;La9/h;I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v12, :cond_b

    goto :goto_6

    :cond_b
    :goto_4
    check-cast v1, Ly1/u;

    new-instance v13, Lj9/w;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    iget-wide v14, v1, Ly1/u;->a:J

    iget v1, v1, Ly1/u;->i:I

    new-instance v4, Lod/y6;

    const/4 v2, 0x4

    invoke-direct {v4, v2, v13}, Lod/y6;-><init>(ILjava/lang/Object;)V

    iput-object v0, v5, Lr/f0;->o:Ljava/lang/Object;

    iput-object v13, v5, Lr/f0;->p:Ljava/lang/Object;

    iput v3, v5, Lr/f0;->n:I

    move v3, v1

    move-wide v1, v14

    invoke-static/range {v0 .. v5}, Lr/i0;->c(Ly1/j0;JILod/y6;La9/a;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v12, :cond_c

    goto :goto_6

    :cond_c
    move-object v2, v0

    move-object v0, v13

    :goto_5
    check-cast v1, Ly1/u;

    if-eqz v1, :cond_f

    sget v3, Lr/i0;->a:F

    iget v0, v0, Lj9/w;->l:F

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, v0}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v11, v1, v3}, Lo0/k;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, v1, Ly1/u;->a:J

    new-instance v3, Lb0/a;

    const/16 v4, 0x1c

    invoke-direct {v3, v4, v11}, Lb0/a;-><init>(ILjava/lang/Object;)V

    iput-object v9, v5, Lr/f0;->o:Ljava/lang/Object;

    iput-object v9, v5, Lr/f0;->p:Ljava/lang/Object;

    iput v8, v5, Lr/f0;->n:I

    invoke-static {v2, v0, v1, v3, v5}, Lr/i0;->h(Ly1/j0;JLb0/a;La9/a;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_d

    :goto_6
    move-object v6, v12

    goto :goto_8

    :cond_d
    :goto_7
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    check-cast v7, Lod/c4;

    invoke-virtual {v7}, Lod/c4;->invoke()Ljava/lang/Object;

    goto :goto_8

    :cond_e
    check-cast v10, Lb0/u;

    invoke-virtual {v10}, Lb0/u;->invoke()Ljava/lang/Object;

    :cond_f
    :goto_8
    return-object v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
