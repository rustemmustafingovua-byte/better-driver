.class public final Lr/d0;
.super La9/h;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic A:Li9/e;

.field public final synthetic B:Li9/a;

.field public final synthetic C:Li9/c;

.field public m:Ljava/lang/Object;

.field public n:Ljava/lang/Object;

.field public o:Lj9/x;

.field public p:Lj9/x;

.field public q:Lr/y2;

.field public r:Ly1/u;

.field public s:Z

.field public t:F

.field public u:I

.field public synthetic v:Ljava/lang/Object;

.field public final synthetic w:Li9/a;

.field public final synthetic x:Lj9/x;

.field public final synthetic y:Lr/m1;

.field public final synthetic z:Li9/f;


# direct methods
.method public constructor <init>(Li9/a;Lj9/x;Lr/m1;Li9/f;Li9/e;Li9/a;Li9/c;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lr/d0;->w:Li9/a;

    iput-object p2, p0, Lr/d0;->x:Lj9/x;

    iput-object p3, p0, Lr/d0;->y:Lr/m1;

    iput-object p4, p0, Lr/d0;->z:Li9/f;

    iput-object p5, p0, Lr/d0;->A:Li9/e;

    iput-object p6, p0, Lr/d0;->B:Li9/a;

    iput-object p7, p0, Lr/d0;->C:Li9/c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, La9/h;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 9

    new-instance v0, Lr/d0;

    iget-object v6, p0, Lr/d0;->B:Li9/a;

    iget-object v7, p0, Lr/d0;->C:Li9/c;

    iget-object v1, p0, Lr/d0;->w:Li9/a;

    iget-object v2, p0, Lr/d0;->x:Lj9/x;

    iget-object v3, p0, Lr/d0;->y:Lr/m1;

    iget-object v4, p0, Lr/d0;->z:Li9/f;

    iget-object v5, p0, Lr/d0;->A:Li9/e;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lr/d0;-><init>(Li9/a;Lj9/x;Lr/m1;Li9/f;Li9/e;Li9/a;Li9/c;Ly8/c;)V

    iput-object p1, v0, Lr/d0;->v:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly1/j0;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lr/d0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr/d0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/d0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lr/d0;->u:I

    iget-object v7, v0, Lr/d0;->y:Lr/m1;

    const-wide/16 v8, 0x0

    iget-object v10, v0, Lr/d0;->x:Lj9/x;

    const/4 v11, 0x0

    const/4 v12, 0x1

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v2, v0, Lr/d0;->o:Lj9/x;

    iget-object v3, v0, Lr/d0;->n:Ljava/lang/Object;

    check-cast v3, Ly1/j0;

    iget-object v4, v0, Lr/d0;->m:Ljava/lang/Object;

    check-cast v4, Li9/e;

    iget-object v5, v0, Lr/d0;->v:Ljava/lang/Object;

    check-cast v5, Ly1/j0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v6, p1

    const/4 v15, 0x0

    goto/16 :goto_26

    :pswitch_1
    iget v2, v0, Lr/d0;->t:F

    iget-object v14, v0, Lr/d0;->r:Ly1/u;

    iget-object v15, v0, Lr/d0;->q:Lr/y2;

    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    iget-object v3, v0, Lr/d0;->p:Lj9/x;

    iget-object v4, v0, Lr/d0;->o:Lj9/x;

    const-wide v18, 0x7fffffff7fffffffL

    iget-object v5, v0, Lr/d0;->n:Ljava/lang/Object;

    check-cast v5, Ly1/j0;

    iget-object v6, v0, Lr/d0;->m:Ljava/lang/Object;

    check-cast v6, Ly1/u;

    iget-object v13, v0, Lr/d0;->v:Ljava/lang/Object;

    check-cast v13, Ly1/j0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v11, v3

    move-object v3, v6

    move-object/from16 v26, v7

    move-object v6, v4

    move-object v4, v5

    move-object v5, v13

    move-wide v12, v8

    move-object v8, v15

    goto/16 :goto_21

    :pswitch_2
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    const-wide v18, 0x7fffffff7fffffffL

    iget v2, v0, Lr/d0;->t:F

    iget-object v3, v0, Lr/d0;->q:Lr/y2;

    iget-object v4, v0, Lr/d0;->p:Lj9/x;

    iget-object v5, v0, Lr/d0;->o:Lj9/x;

    iget-object v6, v0, Lr/d0;->n:Ljava/lang/Object;

    check-cast v6, Ly1/j0;

    iget-object v13, v0, Lr/d0;->m:Ljava/lang/Object;

    check-cast v13, Ly1/u;

    iget-object v14, v0, Lr/d0;->v:Ljava/lang/Object;

    check-cast v14, Ly1/j0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v9, p1

    move-object/from16 v20, v3

    move-object v11, v4

    move-object v4, v6

    move-object v3, v13

    move-object v6, v5

    move-object v5, v14

    :goto_0
    move/from16 v25, v2

    goto/16 :goto_19

    :pswitch_3
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    const-wide v18, 0x7fffffff7fffffffL

    iget-object v2, v0, Lr/d0;->n:Ljava/lang/Object;

    check-cast v2, Ly1/u;

    iget-object v3, v0, Lr/d0;->m:Ljava/lang/Object;

    check-cast v3, Ly1/u;

    iget-object v4, v0, Lr/d0;->v:Ljava/lang/Object;

    check-cast v4, Ly1/j0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    goto/16 :goto_13

    :pswitch_4
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    const-wide v18, 0x7fffffff7fffffffL

    iget v2, v0, Lr/d0;->t:F

    iget-object v3, v0, Lr/d0;->r:Ly1/u;

    iget-object v4, v0, Lr/d0;->q:Lr/y2;

    iget-object v5, v0, Lr/d0;->p:Lj9/x;

    iget-object v6, v0, Lr/d0;->o:Lj9/x;

    iget-object v13, v0, Lr/d0;->n:Ljava/lang/Object;

    check-cast v13, Ly1/j0;

    iget-object v14, v0, Lr/d0;->m:Ljava/lang/Object;

    check-cast v14, Ly1/u;

    iget-object v15, v0, Lr/d0;->v:Ljava/lang/Object;

    check-cast v15, Ly1/j0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v8, v14

    move-object v14, v6

    move-object v6, v8

    move-object v8, v5

    move-object v5, v15

    goto/16 :goto_d

    :pswitch_5
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    const-wide v18, 0x7fffffff7fffffffL

    iget v2, v0, Lr/d0;->t:F

    iget-object v3, v0, Lr/d0;->q:Lr/y2;

    iget-object v4, v0, Lr/d0;->p:Lj9/x;

    iget-object v5, v0, Lr/d0;->o:Lj9/x;

    iget-object v6, v0, Lr/d0;->n:Ljava/lang/Object;

    check-cast v6, Ly1/j0;

    iget-object v13, v0, Lr/d0;->m:Ljava/lang/Object;

    check-cast v13, Ly1/u;

    iget-object v14, v0, Lr/d0;->v:Ljava/lang/Object;

    check-cast v14, Ly1/j0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v15, v13

    move-object v13, v4

    move-object v4, v6

    move-object v6, v15

    move-object v15, v14

    move-object v14, v5

    move-object v5, v15

    move-object/from16 v15, p1

    :cond_0
    move/from16 v25, v2

    move-object/from16 v20, v3

    goto/16 :goto_6

    :pswitch_6
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    const-wide v18, 0x7fffffff7fffffffL

    iget-boolean v2, v0, Lr/d0;->s:Z

    iget-object v3, v0, Lr/d0;->m:Ljava/lang/Object;

    check-cast v3, Ly1/u;

    iget-object v4, v0, Lr/d0;->v:Ljava/lang/Object;

    check-cast v4, Ly1/j0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    goto :goto_2

    :pswitch_7
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    const-wide v18, 0x7fffffff7fffffffL

    iget-object v2, v0, Lr/d0;->v:Ljava/lang/Object;

    check-cast v2, Ly1/j0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    :cond_1
    move-object v4, v2

    goto :goto_1

    :pswitch_8
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    const-wide v18, 0x7fffffff7fffffffL

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v0, Lr/d0;->v:Ljava/lang/Object;

    check-cast v2, Ly1/j0;

    sget-object v3, Ly1/m;->l:Ly1/m;

    iput-object v2, v0, Lr/d0;->v:Ljava/lang/Object;

    iput v12, v0, Lr/d0;->u:I

    invoke-static {v2, v11, v3, v0}, Lr/x2;->b(Ly1/j0;ZLy1/m;La9/a;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_1

    goto/16 :goto_25

    :goto_1
    check-cast v3, Ly1/u;

    iget-object v2, v0, Lr/d0;->w:Li9/a;

    invoke-interface {v2}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v3}, Ly1/u;->a()V

    :cond_2
    iput-object v4, v0, Lr/d0;->v:Ljava/lang/Object;

    iput-object v3, v0, Lr/d0;->m:Ljava/lang/Object;

    iput-boolean v2, v0, Lr/d0;->s:Z

    const/4 v5, 0x2

    iput v5, v0, Lr/d0;->u:I

    invoke-static {v4, v0, v5}, Lr/x2;->c(Ly1/j0;La9/h;I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_3

    goto/16 :goto_25

    :cond_3
    :goto_2
    check-cast v5, Ly1/u;

    iput-wide v8, v10, Lj9/x;->l:J

    if-eqz v2, :cond_13

    :goto_3
    iget-wide v2, v5, Ly1/u;->a:J

    iget v6, v5, Ly1/u;->i:I

    iget-object v13, v4, Ly1/j0;->q:Ly1/k0;

    iget-object v13, v13, Ly1/k0;->D:Ly1/l;

    invoke-static {v13, v2, v3}, Lr/i0;->i(Ly1/l;J)Z

    move-result v13

    if-eqz v13, :cond_4

    :goto_4
    const/4 v2, 0x0

    goto/16 :goto_e

    :cond_4
    invoke-virtual {v4}, Ly1/j0;->e()Lf2/p2;

    move-result-object v13

    invoke-static {v13, v6}, Lr/i0;->j(Lf2/p2;I)F

    move-result v6

    new-instance v13, Lj9/x;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    iput-wide v2, v13, Lj9/x;->l:J

    new-instance v2, Lr/y2;

    invoke-direct {v2, v8, v9, v7}, Lr/y2;-><init>(JLr/m1;)V

    move-object v3, v2

    move v2, v6

    move-object v14, v10

    move-object v6, v5

    move-object v5, v4

    :goto_5
    iput-object v5, v0, Lr/d0;->v:Ljava/lang/Object;

    iput-object v6, v0, Lr/d0;->m:Ljava/lang/Object;

    iput-object v4, v0, Lr/d0;->n:Ljava/lang/Object;

    iput-object v14, v0, Lr/d0;->o:Lj9/x;

    iput-object v13, v0, Lr/d0;->p:Lj9/x;

    iput-object v3, v0, Lr/d0;->q:Lr/y2;

    const/4 v15, 0x0

    iput-object v15, v0, Lr/d0;->r:Ly1/u;

    iput v2, v0, Lr/d0;->t:F

    const/4 v15, 0x3

    iput v15, v0, Lr/d0;->u:I

    sget-object v15, Ly1/m;->m:Ly1/m;

    invoke-virtual {v4, v15, v0}, Ly1/j0;->b(Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v1, :cond_0

    goto/16 :goto_25

    :goto_6
    check-cast v15, Ly1/l;

    iget-object v2, v15, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    move v12, v11

    :goto_7
    if-ge v12, v3, :cond_6

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v11, v21

    check-cast v11, Ly1/u;

    iget-wide v8, v11, Ly1/u;->a:J

    move-object v11, v2

    move/from16 p1, v3

    iget-wide v2, v13, Lj9/x;->l:J

    invoke-static {v8, v9, v2, v3}, Ly1/t;->e(JJ)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_8

    :cond_5
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, p1

    move-object v2, v11

    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    goto :goto_7

    :cond_6
    const/16 v21, 0x0

    :goto_8
    move-object/from16 v2, v21

    check-cast v2, Ly1/u;

    if-nez v2, :cond_7

    :goto_9
    move-object v4, v5

    move-object v5, v6

    goto :goto_4

    :cond_7
    invoke-virtual {v2}, Ly1/u;->b()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_9

    :cond_8
    invoke-static {v2}, Ly1/t;->d(Ly1/u;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v2, v15, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v3, :cond_a

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Ly1/u;

    iget-boolean v11, v11, Ly1/u;->d:Z

    if-eqz v11, :cond_9

    goto :goto_b

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_a
    const/4 v9, 0x0

    :goto_b
    check-cast v9, Ly1/u;

    if-nez v9, :cond_b

    goto :goto_9

    :cond_b
    iget-wide v2, v9, Ly1/u;->a:J

    iput-wide v2, v13, Lj9/x;->l:J

    move-object/from16 v11, v20

    move/from16 v3, v25

    goto :goto_c

    :cond_c
    iget-wide v8, v2, Ly1/u;->c:J

    iget-wide v11, v2, Ly1/u;->g:J

    move-wide/from16 v21, v8

    move-wide/from16 v23, v11

    invoke-virtual/range {v20 .. v25}, Lr/y2;->a(JJF)J

    move-result-wide v8

    move-object/from16 v11, v20

    move/from16 v3, v25

    and-long v20, v8, v18

    cmp-long v12, v20, v16

    if-eqz v12, :cond_e

    invoke-virtual {v2}, Ly1/u;->a()V

    iput-wide v8, v14, Lj9/x;->l:J

    invoke-virtual {v2}, Ly1/u;->b()Z

    move-result v8

    if-eqz v8, :cond_d

    move-object v4, v5

    move-object v5, v6

    goto :goto_e

    :cond_d
    const-wide/16 v8, 0x0

    iput-wide v8, v11, Lr/y2;->a:J

    :goto_c
    move v2, v3

    move-object v3, v11

    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto/16 :goto_5

    :cond_e
    sget-object v8, Ly1/m;->n:Ly1/m;

    iput-object v5, v0, Lr/d0;->v:Ljava/lang/Object;

    iput-object v6, v0, Lr/d0;->m:Ljava/lang/Object;

    iput-object v4, v0, Lr/d0;->n:Ljava/lang/Object;

    iput-object v14, v0, Lr/d0;->o:Lj9/x;

    iput-object v13, v0, Lr/d0;->p:Lj9/x;

    iput-object v11, v0, Lr/d0;->q:Lr/y2;

    iput-object v2, v0, Lr/d0;->r:Ly1/u;

    iput v3, v0, Lr/d0;->t:F

    const/4 v9, 0x4

    iput v9, v0, Lr/d0;->u:I

    invoke-virtual {v4, v8, v0}, Ly1/j0;->b(Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_f

    goto/16 :goto_25

    :cond_f
    move v8, v3

    move-object v3, v2

    move v2, v8

    move-object v8, v13

    move-object v13, v4

    move-object v4, v11

    :goto_d
    invoke-virtual {v3}, Ly1/u;->b()Z

    move-result v3

    if-eqz v3, :cond_12

    goto/16 :goto_9

    :goto_e
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ly1/u;->b()Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_f

    :cond_10
    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_11
    :goto_f
    move-object v3, v2

    goto :goto_10

    :cond_12
    move-object v3, v4

    move-object v4, v13

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v13, v8

    const-wide/16 v8, 0x0

    goto/16 :goto_5

    :cond_13
    :goto_10
    if-nez v3, :cond_2a

    iget-object v2, v4, Ly1/j0;->q:Ly1/k0;

    iget-object v2, v2, Ly1/k0;->D:Ly1/l;

    iget-object v2, v2, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_11
    if-ge v8, v6, :cond_2a

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ly1/u;

    iget-boolean v9, v9, Ly1/u;->d:Z

    if-eqz v9, :cond_29

    move-object v2, v3

    move-object v3, v5

    :goto_12
    sget-object v5, Ly1/m;->n:Ly1/m;

    iput-object v4, v0, Lr/d0;->v:Ljava/lang/Object;

    iput-object v3, v0, Lr/d0;->m:Ljava/lang/Object;

    iput-object v2, v0, Lr/d0;->n:Ljava/lang/Object;

    const/4 v15, 0x0

    iput-object v15, v0, Lr/d0;->o:Lj9/x;

    iput-object v15, v0, Lr/d0;->p:Lj9/x;

    iput-object v15, v0, Lr/d0;->q:Lr/y2;

    iput-object v15, v0, Lr/d0;->r:Ly1/u;

    const/4 v6, 0x5

    iput v6, v0, Lr/d0;->u:I

    invoke-virtual {v4, v5, v0}, Ly1/j0;->b(Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_14

    goto/16 :goto_25

    :cond_14
    :goto_13
    check-cast v5, Ly1/l;

    iget-object v5, v5, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_14
    if-ge v8, v6, :cond_17

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ly1/u;

    invoke-virtual {v9}, Ly1/u;->b()Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_15
    if-ge v8, v6, :cond_17

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ly1/u;

    iget-boolean v9, v9, Ly1/u;->d:Z

    if-eqz v9, :cond_15

    goto :goto_12

    :cond_15
    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    :cond_16
    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    :cond_17
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_16
    if-ge v8, v6, :cond_28

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ly1/u;

    iget-boolean v9, v9, Ly1/u;->d:Z

    if-eqz v9, :cond_27

    invoke-static {v5}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly1/u;

    if-eqz v2, :cond_18

    iget-wide v8, v2, Ly1/u;->c:J

    goto :goto_17

    :cond_18
    const-wide/16 v8, 0x0

    :goto_17
    iget-wide v5, v3, Ly1/u;->c:J

    invoke-static {v8, v9, v5, v6}, Ll1/b;->d(JJ)J

    move-result-wide v5

    iget-wide v8, v3, Ly1/u;->a:J

    iget v2, v3, Ly1/u;->i:I

    iget-object v11, v4, Ly1/j0;->q:Ly1/k0;

    iget-object v11, v11, Ly1/k0;->D:Ly1/l;

    invoke-static {v11, v8, v9}, Lr/i0;->i(Ly1/l;J)Z

    move-result v11

    if-eqz v11, :cond_19

    move-object v5, v3

    move-object/from16 v26, v7

    const/4 v3, 0x0

    const-wide/16 v12, 0x0

    goto/16 :goto_22

    :cond_19
    invoke-virtual {v4}, Ly1/j0;->e()Lf2/p2;

    move-result-object v11

    invoke-static {v11, v2}, Lr/i0;->j(Lf2/p2;I)F

    move-result v2

    new-instance v11, Lj9/x;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    iput-wide v8, v11, Lj9/x;->l:J

    new-instance v8, Lr/y2;

    invoke-direct {v8, v5, v6, v7}, Lr/y2;-><init>(JLr/m1;)V

    move-object v5, v4

    move-object v6, v10

    :goto_18
    iput-object v5, v0, Lr/d0;->v:Ljava/lang/Object;

    iput-object v3, v0, Lr/d0;->m:Ljava/lang/Object;

    iput-object v4, v0, Lr/d0;->n:Ljava/lang/Object;

    iput-object v6, v0, Lr/d0;->o:Lj9/x;

    iput-object v11, v0, Lr/d0;->p:Lj9/x;

    iput-object v8, v0, Lr/d0;->q:Lr/y2;

    const/4 v15, 0x0

    iput-object v15, v0, Lr/d0;->r:Ly1/u;

    iput v2, v0, Lr/d0;->t:F

    const/4 v9, 0x6

    iput v9, v0, Lr/d0;->u:I

    sget-object v9, Ly1/m;->m:Ly1/m;

    invoke-virtual {v4, v9, v0}, Ly1/j0;->b(Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_1a

    goto/16 :goto_25

    :cond_1a
    move-object/from16 v20, v8

    goto/16 :goto_0

    :goto_19
    check-cast v9, Ly1/l;

    iget-object v2, v9, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v8

    const/4 v12, 0x0

    :goto_1a
    if-ge v12, v8, :cond_1c

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object v13, v15

    check-cast v13, Ly1/u;

    iget-wide v13, v13, Ly1/u;->a:J

    move-object/from16 v26, v7

    move/from16 p1, v8

    iget-wide v7, v11, Lj9/x;->l:J

    invoke-static {v13, v14, v7, v8}, Ly1/t;->e(JJ)Z

    move-result v7

    if-eqz v7, :cond_1b

    goto :goto_1b

    :cond_1b
    add-int/lit8 v12, v12, 0x1

    move/from16 v8, p1

    move-object/from16 v7, v26

    goto :goto_1a

    :cond_1c
    move-object/from16 v26, v7

    const/4 v15, 0x0

    :goto_1b
    move-object v14, v15

    check-cast v14, Ly1/u;

    if-nez v14, :cond_1d

    :goto_1c
    move-object v4, v5

    const-wide/16 v12, 0x0

    :goto_1d
    move-object v5, v3

    const/4 v3, 0x0

    goto/16 :goto_22

    :cond_1d
    invoke-virtual {v14}, Ly1/u;->b()Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_1c

    :cond_1e
    invoke-static {v14}, Ly1/t;->d(Ly1/u;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, v9, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_1e
    if-ge v8, v7, :cond_20

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object v9, v15

    check-cast v9, Ly1/u;

    iget-boolean v9, v9, Ly1/u;->d:Z

    if-eqz v9, :cond_1f

    goto :goto_1f

    :cond_1f
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    :cond_20
    const/4 v15, 0x0

    :goto_1f
    check-cast v15, Ly1/u;

    if-nez v15, :cond_21

    goto :goto_1c

    :cond_21
    iget-wide v7, v15, Ly1/u;->a:J

    iput-wide v7, v11, Lj9/x;->l:J

    move-object/from16 v9, v20

    move/from16 v2, v25

    const-wide/16 v12, 0x0

    goto :goto_20

    :cond_22
    iget-wide v7, v14, Ly1/u;->c:J

    iget-wide v12, v14, Ly1/u;->g:J

    move-wide/from16 v21, v7

    move-wide/from16 v23, v12

    invoke-virtual/range {v20 .. v25}, Lr/y2;->a(JJF)J

    move-result-wide v7

    move-object/from16 v9, v20

    move/from16 v2, v25

    and-long v7, v7, v18

    cmp-long v7, v7, v16

    if-eqz v7, :cond_25

    invoke-virtual {v14}, Ly1/u;->a()V

    const/4 v7, 0x0

    invoke-static {v14, v7}, Ly1/t;->h(Ly1/u;Z)J

    move-result-wide v12

    iput-wide v12, v6, Lj9/x;->l:J

    invoke-virtual {v14}, Ly1/u;->b()Z

    move-result v7

    if-eqz v7, :cond_23

    move-object v4, v5

    const-wide/16 v12, 0x0

    move-object v5, v3

    move-object v3, v14

    goto :goto_22

    :cond_23
    const-wide/16 v12, 0x0

    iput-wide v12, v9, Lr/y2;->a:J

    :goto_20
    move-object v8, v9

    :cond_24
    move-object/from16 v7, v26

    goto/16 :goto_18

    :cond_25
    const-wide/16 v12, 0x0

    sget-object v7, Ly1/m;->n:Ly1/m;

    iput-object v5, v0, Lr/d0;->v:Ljava/lang/Object;

    iput-object v3, v0, Lr/d0;->m:Ljava/lang/Object;

    iput-object v4, v0, Lr/d0;->n:Ljava/lang/Object;

    iput-object v6, v0, Lr/d0;->o:Lj9/x;

    iput-object v11, v0, Lr/d0;->p:Lj9/x;

    iput-object v9, v0, Lr/d0;->q:Lr/y2;

    iput-object v14, v0, Lr/d0;->r:Ly1/u;

    iput v2, v0, Lr/d0;->t:F

    const/4 v8, 0x7

    iput v8, v0, Lr/d0;->u:I

    invoke-virtual {v4, v7, v0}, Ly1/j0;->b(Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_26

    goto/16 :goto_25

    :cond_26
    move-object v8, v9

    :goto_21
    invoke-virtual {v14}, Ly1/u;->b()Z

    move-result v7

    if-eqz v7, :cond_24

    move-object v4, v5

    goto/16 :goto_1d

    :goto_22
    move-object/from16 v7, v26

    goto/16 :goto_10

    :cond_27
    move-object/from16 v26, v7

    const-wide/16 v12, 0x0

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_16

    :cond_28
    move-object v5, v3

    goto/16 :goto_f

    :cond_29
    move-object/from16 v26, v7

    const-wide/16 v12, 0x0

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_11

    :cond_2a
    if-eqz v3, :cond_39

    iget-wide v6, v10, Lj9/x;->l:J

    new-instance v2, Ll1/b;

    invoke-direct {v2, v6, v7}, Ll1/b;-><init>(J)V

    iget-object v6, v0, Lr/d0;->z:Li9/f;

    invoke-interface {v6, v5, v3, v2}, Li9/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v5, v10, Lj9/x;->l:J

    new-instance v2, Ll1/b;

    invoke-direct {v2, v5, v6}, Ll1/b;-><init>(J)V

    iget-object v5, v0, Lr/d0;->A:Li9/e;

    invoke-interface {v5, v3, v2}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, v3, Ly1/u;->a:J

    iget-object v6, v4, Ly1/j0;->q:Ly1/k0;

    iget-object v6, v6, Ly1/k0;->D:Ly1/l;

    invoke-static {v6, v2, v3}, Lr/i0;->i(Ly1/l;J)Z

    move-result v6

    if-eqz v6, :cond_2b

    const/4 v13, 0x0

    goto/16 :goto_2e

    :cond_2b
    :goto_23
    new-instance v6, Lj9/x;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-wide v2, v6, Lj9/x;->l:J

    move-object v3, v4

    move-object v2, v6

    move-object v4, v5

    move-object v5, v3

    :goto_24
    iput-object v5, v0, Lr/d0;->v:Ljava/lang/Object;

    iput-object v4, v0, Lr/d0;->m:Ljava/lang/Object;

    iput-object v3, v0, Lr/d0;->n:Ljava/lang/Object;

    iput-object v2, v0, Lr/d0;->o:Lj9/x;

    const/4 v15, 0x0

    iput-object v15, v0, Lr/d0;->p:Lj9/x;

    iput-object v15, v0, Lr/d0;->q:Lr/y2;

    iput-object v15, v0, Lr/d0;->r:Ly1/u;

    const/16 v6, 0x8

    iput v6, v0, Lr/d0;->u:I

    sget-object v6, Ly1/m;->m:Ly1/m;

    invoke-virtual {v3, v6, v0}, Ly1/j0;->b(Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_2c

    :goto_25
    return-object v1

    :cond_2c
    :goto_26
    check-cast v6, Ly1/l;

    iget-object v7, v6, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_27
    if-ge v9, v8, :cond_2e

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ly1/u;

    iget-wide v11, v11, Ly1/u;->a:J

    iget-wide v13, v2, Lj9/x;->l:J

    invoke-static {v11, v12, v13, v14}, Ly1/t;->e(JJ)Z

    move-result v11

    if-eqz v11, :cond_2d

    goto :goto_28

    :cond_2d
    add-int/lit8 v9, v9, 0x1

    goto :goto_27

    :cond_2e
    move-object v10, v15

    :goto_28
    move-object v7, v10

    check-cast v7, Ly1/u;

    if-nez v7, :cond_2f

    move-object v7, v15

    :goto_29
    const/4 v6, 0x1

    goto :goto_2c

    :cond_2f
    invoke-static {v7}, Ly1/t;->d(Ly1/u;)Z

    move-result v8

    if-eqz v8, :cond_33

    iget-object v6, v6, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_2a
    if-ge v9, v8, :cond_31

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ly1/u;

    iget-boolean v11, v11, Ly1/u;->d:Z

    if-eqz v11, :cond_30

    goto :goto_2b

    :cond_30
    add-int/lit8 v9, v9, 0x1

    goto :goto_2a

    :cond_31
    move-object v10, v15

    :goto_2b
    check-cast v10, Ly1/u;

    if-nez v10, :cond_32

    goto :goto_29

    :cond_32
    iget-wide v6, v10, Ly1/u;->a:J

    iput-wide v6, v2, Lj9/x;->l:J

    const/4 v6, 0x1

    goto :goto_24

    :cond_33
    const/4 v6, 0x1

    invoke-static {v7, v6}, Ly1/t;->h(Ly1/u;Z)J

    move-result-wide v8

    invoke-static {v8, v9}, Ll1/b;->c(J)F

    move-result v8

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-nez v8, :cond_34

    goto :goto_24

    :cond_34
    :goto_2c
    if-nez v7, :cond_35

    :goto_2d
    move-object v13, v15

    goto :goto_2e

    :cond_35
    invoke-virtual {v7}, Ly1/u;->b()Z

    move-result v2

    if-eqz v2, :cond_36

    goto :goto_2d

    :cond_36
    invoke-static {v7}, Ly1/t;->d(Ly1/u;)Z

    move-result v2

    if-eqz v2, :cond_38

    move-object v13, v7

    :goto_2e
    if-nez v13, :cond_37

    iget-object v0, v0, Lr/d0;->B:Li9/a;

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    goto :goto_2f

    :cond_37
    iget-object v0, v0, Lr/d0;->C:Li9/c;

    invoke-interface {v0, v13}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    :cond_38
    const/4 v2, 0x0

    invoke-static {v7, v2}, Ly1/t;->h(Ly1/u;Z)J

    move-result-wide v8

    new-instance v3, Ll1/b;

    invoke-direct {v3, v8, v9}, Ll1/b;-><init>(J)V

    invoke-interface {v4, v7, v3}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Ly1/u;->a()V

    iget-wide v7, v7, Ly1/u;->a:J

    move-object v2, v5

    move-object v5, v4

    move-object v4, v2

    move-wide v2, v7

    goto/16 :goto_23

    :cond_39
    :goto_2f
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

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
