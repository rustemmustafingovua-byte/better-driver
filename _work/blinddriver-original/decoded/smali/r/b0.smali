.class public final Lr/b0;
.super La9/h;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public m:Ly1/l;

.field public n:I

.field public o:I

.field public synthetic p:Ljava/lang/Object;

.field public final synthetic q:Lj9/u;

.field public final synthetic r:Lj9/y;

.field public final synthetic s:Lj9/y;


# direct methods
.method public constructor <init>(Lj9/u;Lj9/y;Lj9/y;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lr/b0;->q:Lj9/u;

    iput-object p2, p0, Lr/b0;->r:Lj9/y;

    iput-object p3, p0, Lr/b0;->s:Lj9/y;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/h;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 3

    new-instance v0, Lr/b0;

    iget-object v1, p0, Lr/b0;->r:Lj9/y;

    iget-object v2, p0, Lr/b0;->s:Lj9/y;

    iget-object p0, p0, Lr/b0;->q:Lj9/u;

    invoke-direct {v0, p0, v1, v2, p2}, Lr/b0;-><init>(Lj9/u;Lj9/y;Lj9/y;Ly8/c;)V

    iput-object p1, v0, Lr/b0;->p:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly1/j0;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lr/b0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr/b0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/b0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lr/b0;->o:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v4, :cond_0

    iget v2, v0, Lr/b0;->n:I

    iget-object v7, v0, Lr/b0;->m:Ly1/l;

    iget-object v8, v0, Lr/b0;->p:Ljava/lang/Object;

    check-cast v8, Ly1/j0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move v5, v6

    move-object/from16 v6, p1

    goto/16 :goto_8

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v2, v0, Lr/b0;->n:I

    iget-object v7, v0, Lr/b0;->p:Ljava/lang/Object;

    check-cast v7, Ly1/j0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v8, p1

    goto :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v0, Lr/b0;->p:Ljava/lang/Object;

    check-cast v2, Ly1/j0;

    move-object v7, v2

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_13

    sget-object v8, Ly1/m;->m:Ly1/m;

    iput-object v7, v0, Lr/b0;->p:Ljava/lang/Object;

    iput-object v3, v0, Lr/b0;->m:Ly1/l;

    iput v2, v0, Lr/b0;->n:I

    iput v6, v0, Lr/b0;->o:I

    invoke-virtual {v7, v8, v0}, Ly1/j0;->b(Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_3

    goto :goto_7

    :cond_3
    :goto_1
    check-cast v8, Ly1/l;

    iget-object v9, v8, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_5

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ly1/u;

    invoke-static {v12}, Ly1/t;->d(Ly1/u;)Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    move v2, v6

    :goto_3
    iget-object v9, v8, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v10, :cond_8

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ly1/u;

    invoke-virtual {v12}, Ly1/u;->b()Z

    move-result v13

    if-nez v13, :cond_7

    iget-object v13, v7, Ly1/j0;->q:Ly1/k0;

    iget-wide v13, v13, Ly1/k0;->I:J

    invoke-virtual {v7}, Ly1/j0;->c()J

    move-result-wide v5

    invoke-static {v12, v13, v14, v5, v6}, Ly1/t;->f(Ly1/u;JJ)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    const/4 v2, 0x1

    :cond_8
    iget v5, v8, Ly1/l;->c:I

    if-ne v5, v4, :cond_9

    iget-object v2, v0, Lr/b0;->q:Lj9/u;

    const/4 v5, 0x1

    iput-boolean v5, v2, Lj9/u;->l:Z

    move v2, v5

    goto :goto_6

    :cond_9
    const/4 v5, 0x1

    :goto_6
    sget-object v6, Ly1/m;->n:Ly1/m;

    iput-object v7, v0, Lr/b0;->p:Ljava/lang/Object;

    iput-object v8, v0, Lr/b0;->m:Ly1/l;

    iput v2, v0, Lr/b0;->n:I

    iput v4, v0, Lr/b0;->o:I

    invoke-virtual {v7, v6, v0}, Ly1/j0;->b(Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_a

    :goto_7
    return-object v1

    :cond_a
    move-object v15, v8

    move-object v8, v7

    move-object v7, v15

    :goto_8
    check-cast v6, Ly1/l;

    iget-object v6, v6, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_9
    if-ge v10, v9, :cond_c

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ly1/u;

    invoke-virtual {v11}, Ly1/u;->b()Z

    move-result v11

    if-eqz v11, :cond_b

    move v2, v5

    goto :goto_a

    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_c
    :goto_a
    iget-object v6, v0, Lr/b0;->r:Lj9/y;

    iget-object v9, v6, Lj9/y;->m:Ljava/lang/Object;

    check-cast v9, Ly1/u;

    iget-wide v9, v9, Ly1/u;->a:J

    invoke-static {v7, v9, v10}, Lr/i0;->i(Ly1/l;J)Z

    move-result v9

    iget-object v7, v7, Ly1/l;->a:Ljava/lang/Object;

    iget-object v10, v0, Lr/b0;->s:Lj9/y;

    if-eqz v9, :cond_10

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_b
    if-ge v11, v9, :cond_e

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Ly1/u;

    iget-boolean v13, v13, Ly1/u;->d:Z

    if-eqz v13, :cond_d

    goto :goto_c

    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_e
    move-object v12, v3

    :goto_c
    check-cast v12, Ly1/u;

    if-eqz v12, :cond_f

    iput-object v12, v6, Lj9/y;->m:Ljava/lang/Object;

    iput-object v12, v10, Lj9/y;->m:Ljava/lang/Object;

    goto :goto_f

    :cond_f
    move v2, v5

    move v6, v2

    move-object v7, v8

    goto/16 :goto_0

    :cond_10
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_d
    if-ge v11, v9, :cond_12

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Ly1/u;

    iget-wide v13, v13, Ly1/u;->a:J

    iget-object v3, v6, Lj9/y;->m:Ljava/lang/Object;

    check-cast v3, Ly1/u;

    iget-wide v4, v3, Ly1/u;->a:J

    invoke-static {v13, v14, v4, v5}, Ly1/t;->e(JJ)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_e

    :cond_11
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    goto :goto_d

    :cond_12
    const/4 v12, 0x0

    :goto_e
    iput-object v12, v10, Lj9/y;->m:Ljava/lang/Object;

    :goto_f
    move-object v7, v8

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_13
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
