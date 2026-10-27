.class public final Lk/g;
.super La9/h;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic m:I

.field public n:[J

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:J

.field public t:I

.field public synthetic u:Ljava/lang/Object;

.field public v:Ljava/lang/Object;

.field public final synthetic w:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ly8/c;I)V
    .locals 0

    iput p3, p0, Lk/g;->m:I

    iput-object p1, p0, Lk/g;->w:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/h;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    iget v0, p0, Lk/g;->m:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lk/g;

    iget-object p0, p0, Lk/g;->w:Ljava/lang/Object;

    check-cast p0, Lt0/d;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p2, v1}, Lk/g;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v0, Lk/g;->u:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    new-instance v0, Lk/g;

    iget-object p0, p0, Lk/g;->w:Ljava/lang/Object;

    check-cast p0, Lc2/t1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p2, v1}, Lk/g;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v0, Lk/g;->u:Ljava/lang/Object;

    return-object v0

    :pswitch_1
    new-instance v0, Lk/g;

    iget-object p0, p0, Lk/g;->w:Ljava/lang/Object;

    check-cast p0, Lk/h;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lk/g;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v0, Lk/g;->u:Ljava/lang/Object;

    return-object v0

    :pswitch_2
    new-instance v0, Lk/g;

    iget-object p0, p0, Lk/g;->w:Ljava/lang/Object;

    check-cast p0, Lk/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lk/g;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v0, Lk/g;->u:Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lk/g;->m:I

    check-cast p1, Lq9/i;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lk/g;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lk/g;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lk/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lk/g;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lk/g;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lk/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lk/g;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lk/g;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lk/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lk/g;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lk/g;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lk/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    iget v1, v0, Lk/g;->m:I

    sget-object v2, Lt8/z;->a:Lt8/z;

    iget-object v8, v0, Lk/g;->w:Ljava/lang/Object;

    const-string v9, "call to \'resume\' before \'invoke\' with coroutine"

    const/4 v10, 0x1

    const/16 v11, 0x8

    const/4 v14, 0x0

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v15, v0, Lk/g;->t:I

    if-eqz v15, :cond_1

    if-ne v15, v10, :cond_0

    iget v8, v0, Lk/g;->r:I

    iget v9, v0, Lk/g;->q:I

    const-wide/16 v15, 0x80

    iget-wide v3, v0, Lk/g;->s:J

    const-wide/16 v17, 0xff

    iget v5, v0, Lk/g;->p:I

    iget v6, v0, Lk/g;->o:I

    const/16 v19, 0x7

    iget-object v7, v0, Lk/g;->n:[J

    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    iget-object v12, v0, Lk/g;->v:Ljava/lang/Object;

    check-cast v12, [Ljava/lang/Object;

    iget-object v13, v0, Lk/g;->u:Ljava/lang/Object;

    check-cast v13, Lq9/i;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-wide/16 v15, 0x80

    const-wide/16 v17, 0xff

    const/16 v19, 0x7

    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v3, v0, Lk/g;->u:Ljava/lang/Object;

    check-cast v3, Lq9/i;

    check-cast v8, Lt0/d;

    iget-object v4, v8, Lt0/d;->l:Lk/n0;

    iget-object v5, v4, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v4, v4, Lk/n0;->a:[J

    array-length v6, v4

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_5

    move v7, v14

    :goto_0
    aget-wide v8, v4, v7

    not-long v12, v8

    shl-long v12, v12, v19

    and-long/2addr v12, v8

    and-long v12, v12, v20

    cmp-long v12, v12, v20

    if-eqz v12, :cond_4

    sub-int v12, v7, v6

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    rsub-int/lit8 v12, v12, 0x8

    move-object v13, v3

    move/from16 v24, v7

    move-object v7, v4

    move-wide v3, v8

    move v9, v12

    move v8, v14

    move-object v12, v5

    move/from16 v5, v24

    :goto_1
    if-ge v8, v9, :cond_3

    and-long v22, v3, v17

    cmp-long v22, v22, v15

    if-gez v22, :cond_2

    shl-int/lit8 v2, v5, 0x3

    add-int/2addr v2, v8

    aget-object v2, v12, v2

    iput-object v13, v0, Lk/g;->u:Ljava/lang/Object;

    iput-object v12, v0, Lk/g;->v:Ljava/lang/Object;

    iput-object v7, v0, Lk/g;->n:[J

    iput v6, v0, Lk/g;->o:I

    iput v5, v0, Lk/g;->p:I

    iput-wide v3, v0, Lk/g;->s:J

    iput v9, v0, Lk/g;->q:I

    iput v8, v0, Lk/g;->r:I

    iput v10, v0, Lk/g;->t:I

    invoke-virtual {v13, v2, v0}, Lq9/i;->b(Ljava/lang/Object;Ly8/c;)V

    sget-object v0, Lz8/a;->l:Lz8/a;

    move-object v2, v1

    goto :goto_3

    :cond_2
    :goto_2
    shr-long/2addr v3, v11

    add-int/2addr v8, v10

    goto :goto_1

    :cond_3
    if-ne v9, v11, :cond_5

    move-object v4, v7

    move-object v3, v13

    move v7, v5

    move-object v5, v12

    :cond_4
    if-eq v7, v6, :cond_5

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return-object v2

    :pswitch_0
    const-wide/16 v15, 0x80

    const-wide/16 v17, 0xff

    const/16 v19, 0x7

    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v3, v0, Lk/g;->t:I

    if-eqz v3, :cond_7

    if-ne v3, v10, :cond_6

    iget v3, v0, Lk/g;->r:I

    iget v4, v0, Lk/g;->q:I

    iget-wide v5, v0, Lk/g;->s:J

    iget v7, v0, Lk/g;->p:I

    iget v8, v0, Lk/g;->o:I

    iget-object v9, v0, Lk/g;->n:[J

    iget-object v12, v0, Lk/g;->v:Ljava/lang/Object;

    check-cast v12, [Ljava/lang/Object;

    iget-object v13, v0, Lk/g;->u:Ljava/lang/Object;

    check-cast v13, Lq9/i;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_6

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v3, v0, Lk/g;->u:Ljava/lang/Object;

    check-cast v3, Lq9/i;

    check-cast v8, Lc2/t1;

    iget-object v4, v8, Lc2/t1;->m:Ljava/lang/Object;

    check-cast v4, Lk/m0;

    iget-object v5, v4, Lk/m0;->c:[Ljava/lang/Object;

    iget-object v4, v4, Lk/m0;->a:[J

    array-length v6, v4

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_b

    move v7, v14

    :goto_4
    aget-wide v8, v4, v7

    not-long v12, v8

    shl-long v12, v12, v19

    and-long/2addr v12, v8

    and-long v12, v12, v20

    cmp-long v12, v12, v20

    if-eqz v12, :cond_a

    sub-int v12, v7, v6

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    rsub-int/lit8 v12, v12, 0x8

    move-object v13, v3

    move v3, v14

    move-wide/from16 v24, v8

    move-object v9, v4

    move v8, v6

    move v4, v12

    move-object v12, v5

    move-wide/from16 v5, v24

    :goto_5
    if-ge v3, v4, :cond_9

    and-long v22, v5, v17

    cmp-long v22, v22, v15

    if-gez v22, :cond_8

    shl-int/lit8 v2, v7, 0x3

    add-int/2addr v2, v3

    aget-object v2, v12, v2

    iput-object v13, v0, Lk/g;->u:Ljava/lang/Object;

    iput-object v12, v0, Lk/g;->v:Ljava/lang/Object;

    iput-object v9, v0, Lk/g;->n:[J

    iput v8, v0, Lk/g;->o:I

    iput v7, v0, Lk/g;->p:I

    iput-wide v5, v0, Lk/g;->s:J

    iput v4, v0, Lk/g;->q:I

    iput v3, v0, Lk/g;->r:I

    iput v10, v0, Lk/g;->t:I

    invoke-virtual {v13, v2, v0}, Lq9/i;->b(Ljava/lang/Object;Ly8/c;)V

    sget-object v0, Lz8/a;->l:Lz8/a;

    move-object v2, v1

    goto :goto_7

    :cond_8
    :goto_6
    shr-long/2addr v5, v11

    add-int/2addr v3, v10

    goto :goto_5

    :cond_9
    if-ne v4, v11, :cond_b

    move v6, v8

    move-object v4, v9

    move-object v5, v12

    move-object v3, v13

    :cond_a
    if-eq v7, v6, :cond_b

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_b
    :goto_7
    return-object v2

    :pswitch_1
    const-wide/16 v15, 0x80

    const-wide/16 v17, 0xff

    const/16 v19, 0x7

    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v3, v0, Lk/g;->t:I

    if-eqz v3, :cond_d

    if-ne v3, v10, :cond_c

    iget v3, v0, Lk/g;->r:I

    iget v4, v0, Lk/g;->q:I

    iget-wide v5, v0, Lk/g;->s:J

    iget v7, v0, Lk/g;->p:I

    iget v8, v0, Lk/g;->o:I

    iget-object v9, v0, Lk/g;->n:[J

    iget-object v12, v0, Lk/g;->v:Ljava/lang/Object;

    check-cast v12, [Ljava/lang/Object;

    iget-object v13, v0, Lk/g;->u:Ljava/lang/Object;

    check-cast v13, Lq9/i;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_a

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v3, v0, Lk/g;->u:Ljava/lang/Object;

    check-cast v3, Lq9/i;

    check-cast v8, Lk/h;

    iget-object v4, v8, Lk/h;->m:Lk/m0;

    iget-object v5, v4, Lk/m0;->b:[Ljava/lang/Object;

    iget-object v4, v4, Lk/m0;->a:[J

    array-length v6, v4

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_11

    move v7, v14

    :goto_8
    aget-wide v8, v4, v7

    not-long v12, v8

    shl-long v12, v12, v19

    and-long/2addr v12, v8

    and-long v12, v12, v20

    cmp-long v12, v12, v20

    if-eqz v12, :cond_10

    sub-int v12, v7, v6

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    rsub-int/lit8 v12, v12, 0x8

    move-object v13, v3

    move v3, v14

    move-wide/from16 v24, v8

    move-object v9, v4

    move v8, v6

    move v4, v12

    move-object v12, v5

    move-wide/from16 v5, v24

    :goto_9
    if-ge v3, v4, :cond_f

    and-long v22, v5, v17

    cmp-long v22, v22, v15

    if-gez v22, :cond_e

    shl-int/lit8 v2, v7, 0x3

    add-int/2addr v2, v3

    aget-object v2, v12, v2

    iput-object v13, v0, Lk/g;->u:Ljava/lang/Object;

    iput-object v12, v0, Lk/g;->v:Ljava/lang/Object;

    iput-object v9, v0, Lk/g;->n:[J

    iput v8, v0, Lk/g;->o:I

    iput v7, v0, Lk/g;->p:I

    iput-wide v5, v0, Lk/g;->s:J

    iput v4, v0, Lk/g;->q:I

    iput v3, v0, Lk/g;->r:I

    iput v10, v0, Lk/g;->t:I

    invoke-virtual {v13, v2, v0}, Lq9/i;->b(Ljava/lang/Object;Ly8/c;)V

    sget-object v0, Lz8/a;->l:Lz8/a;

    move-object v2, v1

    goto :goto_b

    :cond_e
    :goto_a
    shr-long/2addr v5, v11

    add-int/2addr v3, v10

    goto :goto_9

    :cond_f
    if-ne v4, v11, :cond_11

    move v6, v8

    move-object v4, v9

    move-object v5, v12

    move-object v3, v13

    :cond_10
    if-eq v7, v6, :cond_11

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_11
    :goto_b
    return-object v2

    :pswitch_2
    const-wide/16 v15, 0x80

    const-wide/16 v17, 0xff

    const/16 v19, 0x7

    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v3, v0, Lk/g;->t:I

    if-eqz v3, :cond_13

    if-ne v3, v10, :cond_12

    iget v3, v0, Lk/g;->r:I

    iget v4, v0, Lk/g;->q:I

    iget-wide v5, v0, Lk/g;->s:J

    iget v7, v0, Lk/g;->p:I

    iget v8, v0, Lk/g;->o:I

    iget-object v9, v0, Lk/g;->n:[J

    iget-object v12, v0, Lk/g;->v:Ljava/lang/Object;

    check-cast v12, Lk/h;

    iget-object v13, v0, Lk/g;->u:Ljava/lang/Object;

    check-cast v13, Lq9/i;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move/from16 v24, v8

    move v8, v7

    move v7, v11

    move-object v11, v9

    move v9, v10

    move/from16 v10, v24

    goto/16 :goto_e

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v3, v0, Lk/g;->u:Ljava/lang/Object;

    check-cast v3, Lq9/i;

    check-cast v8, Lk/h;

    iget-object v4, v8, Lk/h;->m:Lk/m0;

    iget-object v4, v4, Lk/m0;->a:[J

    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_17

    move v6, v14

    :goto_c
    aget-wide v12, v4, v6

    move v7, v11

    not-long v10, v12

    shl-long v10, v10, v19

    and-long/2addr v10, v12

    and-long v10, v10, v20

    cmp-long v10, v10, v20

    if-eqz v10, :cond_16

    sub-int v10, v6, v5

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    rsub-int/lit8 v11, v10, 0x8

    move v10, v11

    move-object v11, v4

    move v4, v10

    move v10, v5

    move-wide/from16 v24, v12

    move-object v13, v3

    move-object v12, v8

    move v3, v14

    move v8, v6

    move-wide/from16 v5, v24

    :goto_d
    if-ge v3, v4, :cond_15

    and-long v22, v5, v17

    cmp-long v22, v22, v15

    if-gez v22, :cond_14

    shl-int/lit8 v2, v8, 0x3

    add-int/2addr v2, v3

    new-instance v7, Lk/t;

    iget-object v15, v12, Lk/h;->m:Lk/m0;

    iget-object v9, v15, Lk/m0;->b:[Ljava/lang/Object;

    aget-object v9, v9, v2

    iget-object v15, v15, Lk/m0;->c:[Ljava/lang/Object;

    aget-object v2, v15, v2

    invoke-direct {v7, v14, v9, v2}, Lk/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v13, v0, Lk/g;->u:Ljava/lang/Object;

    iput-object v12, v0, Lk/g;->v:Ljava/lang/Object;

    iput-object v11, v0, Lk/g;->n:[J

    iput v10, v0, Lk/g;->o:I

    iput v8, v0, Lk/g;->p:I

    iput-wide v5, v0, Lk/g;->s:J

    iput v4, v0, Lk/g;->q:I

    iput v3, v0, Lk/g;->r:I

    const/4 v9, 0x1

    iput v9, v0, Lk/g;->t:I

    invoke-virtual {v13, v7, v0}, Lq9/i;->b(Ljava/lang/Object;Ly8/c;)V

    sget-object v0, Lz8/a;->l:Lz8/a;

    move-object v2, v1

    goto :goto_10

    :cond_14
    const/4 v9, 0x1

    :goto_e
    shr-long/2addr v5, v7

    add-int/2addr v3, v9

    goto :goto_d

    :cond_15
    const/4 v9, 0x1

    if-ne v4, v7, :cond_17

    move v6, v8

    move v5, v10

    move-object v4, v11

    move-object v8, v12

    move-object v3, v13

    goto :goto_f

    :cond_16
    const/4 v9, 0x1

    :goto_f
    if-eq v6, v5, :cond_17

    add-int/lit8 v6, v6, 0x1

    move v11, v7

    move v10, v9

    goto :goto_c

    :cond_17
    :goto_10
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
