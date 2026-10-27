.class public final Lr0/t1;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public l:Ljava/util/List;

.field public m:Ljava/util/List;

.field public n:Ljava/util/List;

.field public o:Lk/n0;

.field public p:Lk/n0;

.field public q:Lk/n0;

.field public r:Ljava/util/Set;

.field public s:Lk/n0;

.field public t:I

.field public synthetic u:Lf2/x0;

.field public final synthetic v:Lr0/u1;


# direct methods
.method public constructor <init>(Lr0/u1;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lr0/t1;->v:Lr0/u1;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public static final f(Lr0/u1;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lk/n0;Lk/n0;Lk/n0;Lk/n0;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    iget-object v4, v0, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_0

    move-object/from16 v8, p3

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lr0/x;

    invoke-virtual {v9}, Lr0/x;->a()V

    invoke-virtual {v0, v9}, Lr0/u1;->L(Lr0/x;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_0
    move-object/from16 v8, p3

    invoke-interface {v8}, Ljava/util/List;->clear()V

    iget-object v5, v1, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v7, v1, Lk/n0;->a:[J

    array-length v8, v7

    add-int/lit8 v8, v8, -0x2

    const/16 v6, 0x8

    const-wide/16 p2, 0x80

    if-ltz v8, :cond_4

    const/4 v9, 0x0

    const-wide/16 v16, 0xff

    :goto_1
    aget-wide v11, v7, v9

    const/4 v10, 0x7

    const-wide v18, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    not-long v13, v11

    shl-long/2addr v13, v10

    and-long/2addr v13, v11

    and-long v13, v13, v18

    cmp-long v13, v13, v18

    if-eqz v13, :cond_3

    sub-int v13, v9, v8

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    rsub-int/lit8 v13, v13, 0x8

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_2

    and-long v20, v11, v16

    cmp-long v15, v20, p2

    if-gez v15, :cond_1

    shl-int/lit8 v15, v9, 0x3

    add-int/2addr v15, v14

    aget-object v15, v5, v15

    check-cast v15, Lr0/x;

    invoke-virtual {v15}, Lr0/x;->a()V

    invoke-virtual {v0, v15}, Lr0/u1;->L(Lr0/x;)V

    :cond_1
    shr-long/2addr v11, v6

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_2
    if-ne v13, v6, :cond_5

    :cond_3
    if-eq v9, v8, :cond_5

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    const/4 v10, 0x7

    const-wide/16 v16, 0xff

    const-wide v18, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    :cond_5
    invoke-virtual {v1}, Lk/n0;->b()V

    iget-object v1, v2, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v5, v2, Lk/n0;->a:[J

    array-length v7, v5

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_9

    const/4 v8, 0x0

    :goto_3
    aget-wide v11, v5, v8

    not-long v13, v11

    shl-long/2addr v13, v10

    and-long/2addr v13, v11

    and-long v13, v13, v18

    cmp-long v9, v13, v18

    if-eqz v9, :cond_8

    sub-int v9, v8, v7

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    rsub-int/lit8 v9, v9, 0x8

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v9, :cond_7

    and-long v14, v11, v16

    cmp-long v14, v14, p2

    if-gez v14, :cond_6

    shl-int/lit8 v14, v8, 0x3

    add-int/2addr v14, v13

    aget-object v14, v1, v14

    check-cast v14, Lr0/x;

    invoke-virtual {v14}, Lr0/x;->g()V

    :cond_6
    shr-long/2addr v11, v6

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_7
    if-ne v9, v6, :cond_9

    :cond_8
    if-eq v8, v7, :cond_9

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {v2}, Lk/n0;->b()V

    invoke-virtual/range {p6 .. p6}, Lk/n0;->b()V

    iget-object v1, v3, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v2, v3, Lk/n0;->a:[J

    array-length v5, v2

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_d

    const/4 v7, 0x0

    :goto_5
    aget-wide v8, v2, v7

    not-long v11, v8

    shl-long/2addr v11, v10

    and-long/2addr v11, v8

    and-long v11, v11, v18

    cmp-long v11, v11, v18

    if-eqz v11, :cond_c

    sub-int v11, v7, v5

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    rsub-int/lit8 v11, v11, 0x8

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v11, :cond_b

    and-long v13, v8, v16

    cmp-long v13, v13, p2

    if-gez v13, :cond_a

    shl-int/lit8 v13, v7, 0x3

    add-int/2addr v13, v12

    aget-object v13, v1, v13

    check-cast v13, Lr0/x;

    invoke-virtual {v13}, Lr0/x;->a()V

    invoke-virtual {v0, v13}, Lr0/u1;->L(Lr0/x;)V

    :cond_a
    shr-long/2addr v8, v6

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_b
    if-ne v11, v6, :cond_d

    :cond_c
    if-eq v7, v5, :cond_d

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_d
    invoke-virtual {v3}, Lk/n0;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-void

    :goto_7
    monitor-exit v4

    throw v0
.end method

.method public static final h(Ljava/util/List;Lr0/u1;)V
    .locals 5

    invoke-interface {p0}, Ljava/util/List;->clear()V

    iget-object v0, p1, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lr0/u1;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr0/t0;

    invoke-interface {p0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p1, Lr0/u1;->k:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Lf2/x0;

    check-cast p3, Ly8/c;

    new-instance p1, Lr0/t1;

    iget-object p0, p0, Lr0/t1;->v:Lr0/u1;

    invoke-direct {p1, p0, p3}, Lr0/t1;-><init>(Lr0/u1;Ly8/c;)V

    iput-object p2, p1, Lr0/t1;->u:Lf2/x0;

    sget-object p0, Lt8/z;->a:Lt8/z;

    invoke-virtual {p1, p0}, Lr0/t1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lr0/t1;->t:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v2, v0, Lr0/t1;->s:Lk/n0;

    iget-object v6, v0, Lr0/t1;->r:Ljava/util/Set;

    check-cast v6, Ljava/util/Set;

    iget-object v7, v0, Lr0/t1;->q:Lk/n0;

    iget-object v8, v0, Lr0/t1;->p:Lk/n0;

    iget-object v9, v0, Lr0/t1;->o:Lk/n0;

    iget-object v10, v0, Lr0/t1;->n:Ljava/util/List;

    iget-object v11, v0, Lr0/t1;->m:Ljava/util/List;

    iget-object v12, v0, Lr0/t1;->l:Ljava/util/List;

    iget-object v13, v0, Lr0/t1;->u:Lf2/x0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v21, v13

    move-object v13, v2

    move-object/from16 v2, v21

    goto/16 :goto_6

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v0, Lr0/t1;->s:Lk/n0;

    iget-object v6, v0, Lr0/t1;->r:Ljava/util/Set;

    check-cast v6, Ljava/util/Set;

    iget-object v7, v0, Lr0/t1;->q:Lk/n0;

    iget-object v8, v0, Lr0/t1;->p:Lk/n0;

    iget-object v9, v0, Lr0/t1;->o:Lk/n0;

    iget-object v10, v0, Lr0/t1;->n:Ljava/util/List;

    iget-object v11, v0, Lr0/t1;->m:Ljava/util/List;

    iget-object v12, v0, Lr0/t1;->l:Ljava/util/List;

    iget-object v13, v0, Lr0/t1;->u:Lf2/x0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v14, v9

    move-object v9, v2

    move-object v2, v13

    move-object v13, v10

    move-object v10, v12

    move-object v12, v14

    :goto_0
    move-object v15, v6

    move-object v14, v8

    move-object v8, v7

    goto/16 :goto_4

    :cond_2
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v0, Lr0/t1;->u:Lf2/x0;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sget-object v9, Lk/u0;->a:Lk/n0;

    new-instance v9, Lk/n0;

    invoke-direct {v9}, Lk/n0;-><init>()V

    new-instance v10, Lk/n0;

    invoke-direct {v10}, Lk/n0;-><init>()V

    new-instance v11, Lk/n0;

    invoke-direct {v11}, Lk/n0;-><init>()V

    new-instance v12, Lt0/d;

    invoke-direct {v12, v11}, Lt0/d;-><init>(Lk/n0;)V

    new-instance v13, Lk/n0;

    invoke-direct {v13}, Lk/n0;-><init>()V

    move-object/from16 v21, v12

    move-object v12, v6

    move-object/from16 v6, v21

    move-object/from16 v21, v11

    move-object v11, v7

    move-object/from16 v7, v21

    move-object/from16 v21, v10

    move-object v10, v8

    move-object/from16 v8, v21

    :goto_1
    iget-object v14, v0, Lr0/t1;->v:Lr0/u1;

    iget-object v14, v14, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter v14

    monitor-exit v14

    iget-object v14, v0, Lr0/t1;->v:Lr0/u1;

    iput-object v2, v0, Lr0/t1;->u:Lf2/x0;

    iput-object v12, v0, Lr0/t1;->l:Ljava/util/List;

    iput-object v11, v0, Lr0/t1;->m:Ljava/util/List;

    iput-object v10, v0, Lr0/t1;->n:Ljava/util/List;

    iput-object v9, v0, Lr0/t1;->o:Lk/n0;

    iput-object v8, v0, Lr0/t1;->p:Lk/n0;

    iput-object v7, v0, Lr0/t1;->q:Lk/n0;

    move-object v15, v6

    check-cast v15, Ljava/util/Set;

    iput-object v15, v0, Lr0/t1;->r:Ljava/util/Set;

    iput-object v13, v0, Lr0/t1;->s:Lk/n0;

    iput v5, v0, Lr0/t1;->t:I

    invoke-virtual {v14}, Lr0/u1;->C()Z

    move-result v15

    if-nez v15, :cond_6

    new-instance v15, Lu9/g;

    invoke-static {v0}, Lg6/c1;->u(Ly8/c;)Ly8/c;

    move-result-object v3

    invoke-direct {v15, v5, v3}, Lu9/g;-><init>(ILy8/c;)V

    invoke-virtual {v15}, Lu9/g;->r()V

    iget-object v3, v14, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v14}, Lr0/u1;->C()Z

    move-result v16

    if-eqz v16, :cond_3

    move-object v14, v15

    goto :goto_2

    :cond_3
    iput-object v15, v14, Lr0/u1;->r:Lu9/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v14, 0x0

    :goto_2
    monitor-exit v3

    if-eqz v14, :cond_4

    sget-object v3, Lt8/z;->a:Lt8/z;

    invoke-virtual {v14, v3}, Lu9/g;->resumeWith(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v15}, Lu9/g;->q()Ljava/lang/Object;

    move-result-object v3

    sget-object v14, Lz8/a;->l:Lz8/a;

    if-ne v3, v14, :cond_5

    goto :goto_3

    :cond_5
    sget-object v3, Lt8/z;->a:Lt8/z;

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_6
    sget-object v3, Lt8/z;->a:Lt8/z;

    :goto_3
    if-ne v3, v1, :cond_7

    goto :goto_5

    :cond_7
    move-object v14, v12

    move-object v12, v9

    move-object v9, v13

    move-object v13, v10

    move-object v10, v14

    goto/16 :goto_0

    :goto_4
    iget-object v3, v0, Lr0/t1;->v:Lr0/u1;

    sget-object v6, Lr0/u1;->z:Lx9/l0;

    invoke-virtual {v3}, Lr0/u1;->K()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v7, v0, Lr0/t1;->v:Lr0/u1;

    new-instance v6, Lr0/s1;

    invoke-direct/range {v6 .. v15}, Lr0/s1;-><init>(Lr0/u1;Lk/n0;Lk/n0;Ljava/util/List;Ljava/util/List;Lk/n0;Ljava/util/List;Lk/n0;Ljava/util/Set;)V

    iput-object v2, v0, Lr0/t1;->u:Lf2/x0;

    iput-object v10, v0, Lr0/t1;->l:Ljava/util/List;

    iput-object v11, v0, Lr0/t1;->m:Ljava/util/List;

    iput-object v13, v0, Lr0/t1;->n:Ljava/util/List;

    iput-object v12, v0, Lr0/t1;->o:Lk/n0;

    iput-object v14, v0, Lr0/t1;->p:Lk/n0;

    iput-object v8, v0, Lr0/t1;->q:Lk/n0;

    move-object v3, v15

    check-cast v3, Ljava/util/Set;

    iput-object v3, v0, Lr0/t1;->r:Ljava/util/Set;

    iput-object v9, v0, Lr0/t1;->s:Lk/n0;

    iput v4, v0, Lr0/t1;->t:I

    invoke-virtual {v2, v6, v0}, Lf2/x0;->a(Li9/c;Ly8/c;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_8

    :goto_5
    return-object v1

    :cond_8
    move-object v6, v13

    move-object v13, v9

    move-object v9, v12

    move-object v12, v10

    move-object v10, v6

    move-object v7, v8

    move-object v8, v14

    move-object v6, v15

    :goto_6
    iget-object v3, v0, Lr0/t1;->v:Lr0/u1;

    iget-object v14, v3, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter v14

    :try_start_1
    iget-object v15, v3, Lr0/u1;->l:Lk/m0;

    invoke-virtual {v15}, Lk/m0;->j()Z

    move-result v15

    if-eqz v15, :cond_a

    iget-object v15, v3, Lr0/u1;->l:Lk/m0;

    invoke-static {v15}, Lt0/a;->b(Lk/m0;)Lk/h0;

    move-result-object v15

    iget-object v5, v3, Lr0/u1;->l:Lk/m0;

    invoke-virtual {v5}, Lk/m0;->a()V

    iget-object v5, v3, Lr0/u1;->m:Lg5/c;

    iget-object v4, v5, Lg5/c;->m:Ljava/lang/Object;

    check-cast v4, Lk/m0;

    invoke-virtual {v4}, Lk/m0;->a()V

    iget-object v4, v5, Lg5/c;->n:Ljava/lang/Object;

    check-cast v4, Lk/m0;

    invoke-virtual {v4}, Lk/m0;->a()V

    iget-object v4, v3, Lr0/u1;->o:Lk/m0;

    invoke-virtual {v4}, Lk/m0;->a()V

    new-instance v4, Lk/h0;

    iget v5, v15, Lk/h0;->b:I

    invoke-direct {v4, v5}, Lk/h0;-><init>(I)V

    iget-object v5, v15, Lk/h0;->a:[Ljava/lang/Object;

    iget v15, v15, Lk/h0;->b:I

    move-object/from16 v17, v1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v15, :cond_9

    aget-object v18, v5, v1

    move/from16 v19, v1

    move-object/from16 v1, v18

    check-cast v1, Lr0/t0;

    move-object/from16 v18, v2

    iget-object v2, v3, Lr0/u1;->n:Lk/m0;

    invoke-virtual {v2, v1}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v5

    new-instance v5, Lt8/j;

    invoke-direct {v5, v1, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Lk/h0;->a(Ljava/lang/Object;)V

    add-int/lit8 v1, v19, 0x1

    move-object/from16 v2, v18

    move-object/from16 v5, v20

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_a

    :cond_9
    move-object/from16 v18, v2

    iget-object v1, v3, Lr0/u1;->n:Lk/m0;

    invoke-virtual {v1}, Lk/m0;->a()V

    goto :goto_8

    :cond_a
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    sget-object v4, Lk/r0;->b:Lk/h0;

    const-string v1, "null cannot be cast to non-null type androidx.collection.ObjectList<E of androidx.collection.ObjectListKt.emptyObjectList>"

    invoke-static {v4, v1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_8
    monitor-exit v14

    iget-object v1, v4, Lk/h0;->a:[Ljava/lang/Object;

    iget v2, v4, Lk/h0;->b:I

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_b

    aget-object v4, v1, v3

    check-cast v4, Lt8/j;

    iget-object v5, v4, Lt8/j;->l:Ljava/lang/Object;

    check-cast v5, Lr0/t0;

    iget-object v4, v4, Lt8/j;->m:Ljava/lang/Object;

    check-cast v4, Lr0/s0;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_b
    iget-object v1, v0, Lr0/t1;->v:Lr0/u1;

    iget-object v1, v1, Lr0/u1;->b:Lg5/m;

    iget-object v2, v1, Lg5/m;->m:Ljava/lang/Object;

    check-cast v2, Lz0/a;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, v1, Lg5/m;->n:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/a1;

    new-instance v2, Lp2/y;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lp2/y;-><init>(I)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/a1;->o(Li9/c;)V

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    const/4 v4, 0x2

    const/4 v5, 0x1

    goto/16 :goto_1

    :goto_a
    monitor-exit v14

    throw v0

    :cond_c
    move-object v6, v13

    move-object v13, v9

    move-object v9, v12

    move-object v12, v10

    move-object v10, v6

    move-object v7, v8

    move-object v8, v14

    move-object v6, v15

    goto/16 :goto_1
.end method
