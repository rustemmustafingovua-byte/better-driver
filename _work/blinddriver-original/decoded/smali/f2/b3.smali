.class public final Lf2/b3;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public n:Ljava/lang/Object;

.field public o:Ljava/lang/Object;

.field public p:Ljava/lang/Object;

.field public q:Ljava/lang/Object;

.field public r:Ljava/lang/Object;

.field public synthetic s:Ljava/lang/Object;

.field public final synthetic t:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lf2/c3;Lw9/e;Landroid/content/Context;Ly8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lf2/b3;->l:I

    .line 1
    iput-object p1, p0, Lf2/b3;->p:Ljava/lang/Object;

    iput-object p2, p0, Lf2/b3;->q:Ljava/lang/Object;

    iput-object p3, p0, Lf2/b3;->r:Ljava/lang/Object;

    iput-object p4, p0, Lf2/b3;->s:Ljava/lang/Object;

    iput-object p5, p0, Lf2/b3;->t:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Li9/a;Ly8/c;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lf2/b3;->l:I

    .line 2
    iput-object p1, p0, Lf2/b3;->t:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Lua/nav/c;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lf2/b3;->l:I

    .line 3
    iput-object p1, p0, Lf2/b3;->o:Ljava/lang/Object;

    iput-object p2, p0, Lf2/b3;->p:Ljava/lang/Object;

    iput-object p3, p0, Lf2/b3;->q:Ljava/lang/Object;

    iput-object p4, p0, Lf2/b3;->r:Ljava/lang/Object;

    iput-object p5, p0, Lf2/b3;->s:Ljava/lang/Object;

    iput-object p6, p0, Lf2/b3;->t:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 9

    iget v0, p0, Lf2/b3;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lf2/b3;

    iget-object p0, p0, Lf2/b3;->t:Ljava/lang/Object;

    check-cast p0, Li9/a;

    invoke-direct {v0, p0, p2}, Lf2/b3;-><init>(Li9/a;Ly8/c;)V

    iput-object p1, v0, Lf2/b3;->s:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    new-instance v1, Lf2/b3;

    iget-object p1, p0, Lf2/b3;->o:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lua/nav/c;

    iget-object p1, p0, Lf2/b3;->p:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lr0/u0;

    iget-object p1, p0, Lf2/b3;->q:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lr0/u0;

    iget-object p1, p0, Lf2/b3;->r:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lr0/u0;

    iget-object p1, p0, Lf2/b3;->s:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lr0/u0;

    iget-object p0, p0, Lf2/b3;->t:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, Lr0/u0;

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lf2/b3;-><init>(Lua/nav/c;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V

    return-object v1

    :pswitch_1
    move-object v8, p2

    new-instance v2, Lf2/b3;

    iget-object p2, p0, Lf2/b3;->p:Ljava/lang/Object;

    move-object v3, p2

    check-cast v3, Landroid/content/ContentResolver;

    iget-object p2, p0, Lf2/b3;->q:Ljava/lang/Object;

    move-object v4, p2

    check-cast v4, Landroid/net/Uri;

    iget-object p2, p0, Lf2/b3;->r:Ljava/lang/Object;

    move-object v5, p2

    check-cast v5, Lf2/c3;

    iget-object p2, p0, Lf2/b3;->s:Ljava/lang/Object;

    move-object v6, p2

    check-cast v6, Lw9/e;

    iget-object p0, p0, Lf2/b3;->t:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, Landroid/content/Context;

    invoke-direct/range {v2 .. v8}, Lf2/b3;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lf2/c3;Lw9/e;Landroid/content/Context;Ly8/c;)V

    iput-object p1, v2, Lf2/b3;->o:Ljava/lang/Object;

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lf2/b3;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lx9/h;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lf2/b3;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lf2/b3;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lf2/b3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0

    :pswitch_0
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lf2/b3;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lf2/b3;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lf2/b3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lx9/h;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lf2/b3;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lf2/b3;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lf2/b3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    iget v1, v0, Lf2/b3;->l:I

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x2

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v7, v0, Lf2/b3;->m:I

    const/16 v8, 0x8

    const/4 v9, 0x3

    if-eqz v7, :cond_3

    if-eq v7, v4, :cond_2

    if-eq v7, v6, :cond_1

    if-ne v7, v9, :cond_0

    iget-object v2, v0, Lf2/b3;->o:Ljava/lang/Object;

    iget-object v3, v0, Lf2/b3;->r:Ljava/lang/Object;

    check-cast v3, Lb/e0;

    iget-object v7, v0, Lf2/b3;->q:Ljava/lang/Object;

    check-cast v7, Lw9/i;

    iget-object v10, v0, Lf2/b3;->p:Ljava/lang/Object;

    check-cast v10, Li9/c;

    iget-object v11, v0, Lf2/b3;->n:Ljava/lang/Object;

    check-cast v11, Lk/n0;

    iget-object v12, v0, Lf2/b3;->s:Ljava/lang/Object;

    check-cast v12, Lx9/h;

    :try_start_0
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v8

    move v4, v9

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v0, Lf2/b3;->o:Ljava/lang/Object;

    iget-object v3, v0, Lf2/b3;->r:Ljava/lang/Object;

    check-cast v3, Lb/e0;

    iget-object v7, v0, Lf2/b3;->q:Ljava/lang/Object;

    check-cast v7, Lw9/i;

    iget-object v10, v0, Lf2/b3;->p:Ljava/lang/Object;

    check-cast v10, Li9/c;

    iget-object v11, v0, Lf2/b3;->n:Ljava/lang/Object;

    check-cast v11, Lk/n0;

    iget-object v12, v0, Lf2/b3;->s:Ljava/lang/Object;

    check-cast v12, Lx9/h;

    :try_start_1
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v13, p1

    goto/16 :goto_1

    :cond_2
    iget-object v2, v0, Lf2/b3;->o:Ljava/lang/Object;

    iget-object v3, v0, Lf2/b3;->r:Ljava/lang/Object;

    check-cast v3, Lb/e0;

    iget-object v7, v0, Lf2/b3;->q:Ljava/lang/Object;

    check-cast v7, Lw9/i;

    iget-object v10, v0, Lf2/b3;->p:Ljava/lang/Object;

    check-cast v10, Li9/c;

    iget-object v11, v0, Lf2/b3;->n:Ljava/lang/Object;

    check-cast v11, Lk/n0;

    iget-object v12, v0, Lf2/b3;->s:Ljava/lang/Object;

    check-cast v12, Lx9/h;

    :try_start_2
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v7, v0, Lf2/b3;->s:Ljava/lang/Object;

    move-object v12, v7

    check-cast v12, Lx9/h;

    new-instance v11, Lk/n0;

    invoke-direct {v11}, Lk/n0;-><init>()V

    new-instance v10, Lr0/o1;

    invoke-direct {v10, v6, v11}, Lr0/o1;-><init>(ILjava/lang/Object;)V

    const v7, 0x7fffffff

    invoke-static {v7, v2, v3}, Lpc/h;->a(IILw9/a;)Lw9/e;

    move-result-object v7

    new-instance v2, Lod/y6;

    invoke-direct {v2, v8, v7}, Lod/y6;-><init>(ILjava/lang/Object;)V

    sget-object v3, Ld1/p;->a:Lad/b2;

    invoke-static {v3}, Ld1/p;->e(Li9/c;)Ljava/lang/Object;

    sget-object v3, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    sget-object v13, Ld1/p;->h:Ljava/lang/Object;

    invoke-static {v13, v2}, Lu8/m;->q0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v13

    sput-object v13, Ld1/p;->h:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    monitor-exit v3

    new-instance v3, Lb/e0;

    invoke-direct {v3, v2}, Lb/e0;-><init>(Ljava/lang/Object;)V

    :try_start_4
    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v2

    invoke-virtual {v2, v10}, Ld1/g;->u(Li9/c;)Ld1/g;

    move-result-object v2

    iget-object v13, v0, Lf2/b3;->t:Ljava/lang/Object;

    check-cast v13, Li9/a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v2}, Ld1/g;->j()Ld1/g;

    move-result-object v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-interface {v13}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    invoke-static {v14}, Ld1/g;->q(Ld1/g;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-virtual {v2}, Ld1/g;->c()V

    iput-object v12, v0, Lf2/b3;->s:Ljava/lang/Object;

    iput-object v11, v0, Lf2/b3;->n:Ljava/lang/Object;

    iput-object v10, v0, Lf2/b3;->p:Ljava/lang/Object;

    iput-object v7, v0, Lf2/b3;->q:Ljava/lang/Object;

    iput-object v3, v0, Lf2/b3;->r:Ljava/lang/Object;

    iput-object v13, v0, Lf2/b3;->o:Ljava/lang/Object;

    iput v4, v0, Lf2/b3;->m:I

    invoke-interface {v12, v13, v0}, Lx9/h;->d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    goto/16 :goto_9

    :cond_4
    move-object v2, v13

    :goto_0
    iput-object v12, v0, Lf2/b3;->s:Ljava/lang/Object;

    iput-object v11, v0, Lf2/b3;->n:Ljava/lang/Object;

    iput-object v10, v0, Lf2/b3;->p:Ljava/lang/Object;

    iput-object v7, v0, Lf2/b3;->q:Ljava/lang/Object;

    iput-object v3, v0, Lf2/b3;->r:Ljava/lang/Object;

    iput-object v2, v0, Lf2/b3;->o:Ljava/lang/Object;

    iput v6, v0, Lf2/b3;->m:I

    invoke-interface {v7, v0}, Lw9/t;->h(Ly8/c;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v1, :cond_5

    goto/16 :goto_9

    :cond_5
    :goto_1
    check-cast v13, Ljava/util/Set;

    const/4 v14, 0x0

    :goto_2
    if-nez v14, :cond_c

    iget-object v14, v11, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v15, v11, Lk/n0;->a:[J

    array-length v5, v15

    sub-int/2addr v5, v6

    if-ltz v5, :cond_a

    move-object/from16 p1, v10

    const/4 v6, 0x0

    :goto_3
    aget-wide v9, v15, v6

    move/from16 v16, v5

    not-long v4, v9

    const/16 v17, 0x7

    shl-long v4, v4, v17

    and-long/2addr v4, v9

    const-wide v17, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v4, v4, v17

    cmp-long v4, v4, v17

    if-eqz v4, :cond_9

    sub-int v4, v6, v16

    not-int v4, v4

    ushr-int/lit8 v4, v4, 0x1f

    rsub-int/lit8 v4, v4, 0x8

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_8

    const-wide/16 v17, 0xff

    and-long v17, v9, v17

    const-wide/16 v19, 0x80

    cmp-long v17, v17, v19

    if-gez v17, :cond_6

    shl-int/lit8 v17, v6, 0x3

    add-int v17, v17, v5

    move/from16 v18, v8

    aget-object v8, v14, v17

    invoke-interface {v13, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    move/from16 v5, v18

    goto :goto_7

    :cond_6
    move/from16 v18, v8

    :cond_7
    shr-long v9, v9, v18

    add-int/lit8 v5, v5, 0x1

    move/from16 v8, v18

    goto :goto_4

    :cond_8
    move v5, v8

    if-ne v4, v5, :cond_b

    :goto_5
    move/from16 v4, v16

    goto :goto_6

    :cond_9
    move v5, v8

    goto :goto_5

    :goto_6
    if-eq v6, v4, :cond_b

    add-int/lit8 v6, v6, 0x1

    move v8, v5

    move v5, v4

    const/4 v4, 0x1

    goto :goto_3

    :cond_a
    move v5, v8

    move-object/from16 p1, v10

    :cond_b
    const/4 v14, 0x0

    goto :goto_8

    :cond_c
    move v5, v8

    move-object/from16 p1, v10

    :goto_7
    const/4 v14, 0x1

    :goto_8
    invoke-interface {v7}, Lw9/t;->g()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lw9/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Ljava/util/Set;

    if-nez v13, :cond_10

    if-eqz v14, :cond_f

    invoke-virtual {v11}, Lk/n0;->b()V

    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v4

    move-object/from16 v10, p1

    invoke-virtual {v4, v10}, Ld1/g;->u(Li9/c;)Ld1/g;

    move-result-object v4

    iget-object v6, v0, Lf2/b3;->t:Ljava/lang/Object;

    check-cast v6, Li9/a;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-virtual {v4}, Ld1/g;->j()Ld1/g;

    move-result-object v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-interface {v6}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    invoke-static {v8}, Ld1/g;->q(Ld1/g;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-virtual {v4}, Ld1/g;->c()V

    invoke-static {v6, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    iput-object v12, v0, Lf2/b3;->s:Ljava/lang/Object;

    iput-object v11, v0, Lf2/b3;->n:Ljava/lang/Object;

    iput-object v10, v0, Lf2/b3;->p:Ljava/lang/Object;

    iput-object v7, v0, Lf2/b3;->q:Ljava/lang/Object;

    iput-object v3, v0, Lf2/b3;->r:Ljava/lang/Object;

    iput-object v6, v0, Lf2/b3;->o:Ljava/lang/Object;

    const/4 v4, 0x3

    iput v4, v0, Lf2/b3;->m:I

    invoke-interface {v12, v6, v0}, Lx9/h;->d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-ne v2, v1, :cond_d

    :goto_9
    return-object v1

    :cond_d
    move-object v2, v6

    :goto_a
    move v9, v4

    move v8, v5

    const/4 v4, 0x1

    const/4 v6, 0x2

    goto/16 :goto_0

    :cond_e
    :goto_b
    const/4 v4, 0x3

    goto :goto_a

    :catchall_1
    move-exception v0

    goto :goto_c

    :catchall_2
    move-exception v0

    :try_start_d
    invoke-static {v8}, Ld1/g;->q(Ld1/g;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :goto_c
    :try_start_e
    invoke-virtual {v4}, Ld1/g;->c()V

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_f
    move-object/from16 v10, p1

    goto :goto_b

    :cond_10
    move-object/from16 v10, p1

    move v8, v5

    const/4 v4, 0x1

    const/4 v6, 0x2

    const/4 v9, 0x3

    goto/16 :goto_2

    :catchall_3
    move-exception v0

    goto :goto_d

    :catchall_4
    move-exception v0

    :try_start_f
    invoke-static {v14}, Ld1/g;->q(Ld1/g;)V

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :goto_d
    :try_start_10
    invoke-virtual {v2}, Ld1/g;->c()V

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :goto_e
    invoke-virtual {v3}, Lb/e0;->c()V

    throw v0

    :catchall_5
    move-exception v0

    monitor-exit v3

    throw v0

    :pswitch_0
    const-string v1, "signal"

    sget-object v4, Lt8/z;->a:Lt8/z;

    sget-object v5, Lu8/r;->l:Lu8/r;

    sget-object v6, Lz8/a;->l:Lz8/a;

    iget v7, v0, Lf2/b3;->m:I

    if-eqz v7, :cond_12

    const/4 v8, 0x1

    if-ne v7, v8, :cond_11

    iget-object v2, v0, Lf2/b3;->n:Ljava/lang/Object;

    check-cast v2, Lua/nav/routing/Route;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v7, v2

    move-object/from16 v2, p1

    goto :goto_10

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v7, v0, Lf2/b3;->p:Ljava/lang/Object;

    check-cast v7, Lr0/u0;

    sget-object v8, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v7}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_13

    goto/16 :goto_19

    :cond_13
    iget-object v7, v0, Lf2/b3;->q:Ljava/lang/Object;

    check-cast v7, Lr0/u0;

    invoke-interface {v7}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lad/a0;

    iget-boolean v7, v7, Lad/a0;->a:Z

    if-eqz v7, :cond_14

    iget-object v7, v0, Lf2/b3;->q:Ljava/lang/Object;

    check-cast v7, Lr0/u0;

    invoke-interface {v7}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lad/a0;

    iget-object v7, v7, Lad/a0;->b:Lua/nav/routing/Route;

    goto :goto_f

    :cond_14
    iget-object v7, v0, Lf2/b3;->r:Ljava/lang/Object;

    check-cast v7, Lr0/u0;

    invoke-interface {v7}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsc/q0;

    iget-object v8, v7, Lsc/q0;->k:Ljava/util/List;

    iget v7, v7, Lsc/q0;->l:I

    invoke-static {v7, v8}, Lu8/m;->h0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lua/nav/routing/Route;

    :goto_f
    if-nez v7, :cond_15

    move-object v2, v5

    goto :goto_11

    :cond_15
    sget-object v8, Lu9/e0;->a:Lba/e;

    new-instance v9, Lad/t0;

    iget-object v10, v0, Lf2/b3;->o:Ljava/lang/Object;

    check-cast v10, Lua/nav/c;

    invoke-direct {v9, v10, v7, v3, v2}, Lad/t0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object v7, v0, Lf2/b3;->n:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, v0, Lf2/b3;->m:I

    invoke-static {v8, v9, v0}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v6, :cond_16

    move-object v4, v6

    goto/16 :goto_19

    :cond_16
    :goto_10
    check-cast v2, Ljava/util/List;

    :goto_11
    iget-object v6, v0, Lf2/b3;->s:Ljava/lang/Object;

    check-cast v6, Lr0/u0;

    sget-object v8, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Luc/c;

    const-string v8, "cameras_signals"

    invoke-virtual {v6, v8}, Luc/c;->b(Ljava/lang/String;)Z

    move-result v6

    const/16 v8, 0xa

    if-nez v6, :cond_17

    goto/16 :goto_16

    :cond_17
    iget-object v6, v0, Lf2/b3;->o:Ljava/lang/Object;

    check-cast v6, Lua/nav/c;

    iget-object v6, v6, Lua/nav/c;->o:Lbd/l;

    iget-boolean v6, v6, Lbd/l;->d:Z

    if-eqz v6, :cond_1a

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_18
    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lbd/j;

    iget-object v7, v7, Lbd/j;->c:Ljava/lang/String;

    invoke-static {v7, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_19
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3, v8}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_13
    if-ge v7, v6, :cond_1e

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v7, v7, 0x1

    check-cast v9, Lbd/j;

    iget-wide v10, v9, Lbd/j;->a:D

    iget-wide v12, v9, Lbd/j;->b:D

    invoke-static {v12, v13, v10, v11}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v9

    invoke-static {v9}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;)Lorg/maplibre/geojson/Feature;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_1a
    if-eqz v7, :cond_1b

    iget-object v3, v7, Lua/nav/routing/Route;->j:Ljava/util/List;

    :cond_1b
    if-nez v3, :cond_1c

    goto :goto_14

    :cond_1c
    move-object v5, v3

    :goto_14
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v5, v8}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lua/nav/routing/GeoPoint;

    iget-wide v9, v6, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v6, v6, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v6, v7, v9, v10}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v6

    invoke-static {v6}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;)Lorg/maplibre/geojson/Feature;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_1d
    move-object v5, v3

    :cond_1e
    :goto_16
    iget-object v3, v0, Lf2/b3;->t:Ljava/lang/Object;

    check-cast v3, Lr0/u0;

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Lorg/maplibre/android/maps/MapLibreMap;->getStyle()Lorg/maplibre/android/maps/Style;

    move-result-object v3

    if-eqz v3, :cond_1f

    const-string v6, "signals-src"

    invoke-virtual {v3, v6}, Lorg/maplibre/android/maps/Style;->getSourceAs(Ljava/lang/String;)Lorg/maplibre/android/style/sources/Source;

    move-result-object v3

    check-cast v3, Lorg/maplibre/android/style/sources/GeoJsonSource;

    if-eqz v3, :cond_1f

    invoke-static {v5}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setGeoJson(Lorg/maplibre/geojson/FeatureCollection;)V

    :cond_1f
    iget-object v0, v0, Lf2/b3;->t:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapLibreMap;->getStyle()Lorg/maplibre/android/maps/Style;

    move-result-object v0

    if-eqz v0, :cond_23

    const-string v3, "bumps-src"

    invoke-virtual {v0, v3}, Lorg/maplibre/android/maps/Style;->getSourceAs(Ljava/lang/String;)Lorg/maplibre/android/style/sources/Source;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/style/sources/GeoJsonSource;

    if-eqz v0, :cond_23

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lbd/j;

    iget-object v6, v6, Lbd/j;->c:Ljava/lang/String;

    const-string v7, "type"

    invoke-static {v6, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_20

    const-string v7, "crossing"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_20

    const-string v7, "bike"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_20

    const-string v7, "rail"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_21
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v3, v8}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_18
    if-ge v5, v2, :cond_22

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lbd/j;

    iget-wide v7, v6, Lbd/j;->a:D

    iget-wide v9, v6, Lbd/j;->b:D

    invoke-static {v9, v10, v7, v8}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v6

    invoke-static {v6}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;)Lorg/maplibre/geojson/Feature;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_22
    invoke-static {v1}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setGeoJson(Lorg/maplibre/geojson/FeatureCollection;)V

    :cond_23
    :goto_19
    return-object v4

    :pswitch_1
    iget-object v1, v0, Lf2/b3;->r:Ljava/lang/Object;

    check-cast v1, Lf2/c3;

    iget-object v2, v0, Lf2/b3;->p:Ljava/lang/Object;

    check-cast v2, Landroid/content/ContentResolver;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v4, v0, Lf2/b3;->m:I

    if-eqz v4, :cond_26

    const/4 v8, 0x1

    if-eq v4, v8, :cond_25

    const/4 v5, 0x2

    if-ne v4, v5, :cond_24

    iget-object v4, v0, Lf2/b3;->n:Ljava/lang/Object;

    check-cast v4, Lw9/b;

    iget-object v5, v0, Lf2/b3;->o:Ljava/lang/Object;

    check-cast v5, Lx9/h;

    :try_start_11
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    move-object v6, v4

    move-object v4, v5

    const/4 v5, 0x2

    const/4 v8, 0x1

    goto :goto_1a

    :catchall_6
    move-exception v0

    goto/16 :goto_1d

    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    iget-object v4, v0, Lf2/b3;->n:Ljava/lang/Object;

    check-cast v4, Lw9/b;

    iget-object v5, v0, Lf2/b3;->o:Ljava/lang/Object;

    check-cast v5, Lx9/h;

    :try_start_12
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    move-object v6, v5

    const/4 v8, 0x1

    move-object/from16 v5, p1

    goto :goto_1b

    :cond_26
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v4, v0, Lf2/b3;->o:Ljava/lang/Object;

    check-cast v4, Lx9/h;

    iget-object v5, v0, Lf2/b3;->q:Ljava/lang/Object;

    check-cast v5, Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :try_start_13
    iget-object v5, v0, Lf2/b3;->s:Ljava/lang/Object;

    check-cast v5, Lw9/e;

    new-instance v6, Lw9/b;

    invoke-direct {v6, v5}, Lw9/b;-><init>(Lw9/e;)V

    :goto_1a
    iput-object v4, v0, Lf2/b3;->o:Ljava/lang/Object;

    iput-object v6, v0, Lf2/b3;->n:Ljava/lang/Object;

    const/4 v8, 0x1

    iput v8, v0, Lf2/b3;->m:I

    invoke-virtual {v6, v0}, Lw9/b;->b(La9/c;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_27

    goto :goto_1c

    :cond_27
    move-object/from16 v21, v6

    move-object v6, v4

    move-object/from16 v4, v21

    :goto_1b
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-virtual {v4}, Lw9/b;->c()Ljava/lang/Object;

    iget-object v5, v0, Lf2/b3;->t:Ljava/lang/Object;

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "animator_duration_scale"

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v5, v7, v9}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v5

    new-instance v7, Ljava/lang/Float;

    invoke-direct {v7, v5}, Ljava/lang/Float;-><init>(F)V

    iput-object v6, v0, Lf2/b3;->o:Ljava/lang/Object;

    iput-object v4, v0, Lf2/b3;->n:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, v0, Lf2/b3;->m:I

    invoke-interface {v6, v7, v0}, Lx9/h;->d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    if-ne v7, v3, :cond_28

    goto :goto_1c

    :cond_28
    move-object/from16 v21, v6

    move-object v6, v4

    move-object/from16 v4, v21

    goto :goto_1a

    :cond_29
    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sget-object v3, Lt8/z;->a:Lt8/z;

    :goto_1c
    return-object v3

    :goto_1d
    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
