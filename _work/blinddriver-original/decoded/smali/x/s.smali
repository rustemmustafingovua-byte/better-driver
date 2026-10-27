.class public final Lx/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lk/m0;

.field public b:Ld1/c0;

.field public final c:Lk/n0;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/ArrayList;

.field public final i:Lf1/r;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lk/t0;->a:[J

    new-instance v0, Lk/m0;

    invoke-direct {v0}, Lk/m0;-><init>()V

    iput-object v0, p0, Lx/s;->a:Lk/m0;

    sget-object v0, Lk/u0;->a:Lk/n0;

    new-instance v0, Lk/n0;

    invoke-direct {v0}, Lk/n0;-><init>()V

    iput-object v0, p0, Lx/s;->c:Lk/n0;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lx/s;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lx/s;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lx/s;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lx/s;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lx/s;->h:Ljava/util/ArrayList;

    new-instance v0, Lx/p;

    invoke-direct {v0, p0}, Lx/p;-><init>(Lx/s;)V

    iput-object v0, p0, Lx/s;->i:Lf1/r;

    return-void
.end method

.method public static e([ILw/l;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    aget v1, p0, v0

    iget p1, p1, Lw/l;->n:I

    add-int/2addr v1, p1

    aput v1, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object p0, p0, Lx/s;->h:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lr0/i;->p(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final b(IILjava/util/ArrayList;Ld1/c0;Lw/i;ZZII)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v0, Lx/s;->b:Ld1/c0;

    iput-object v4, v0, Lx/s;->b:Ld1/c0;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lw/l;

    iget-object v10, v9, Lw/l;->b:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_0

    iget-object v12, v9, Lw/l;->b:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lc2/f1;

    invoke-virtual {v12}, Lc2/f1;->G()Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, v0, Lx/s;->a:Lk/m0;

    invoke-virtual {v6}, Lk/m0;->i()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Lx/s;->c()V

    return-void

    :cond_2
    invoke-static {v3}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lw/l;

    if-nez p6, :cond_4

    if-nez p7, :cond_3

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v9, 0x1

    :goto_3
    iget-object v10, v6, Lk/m0;->b:[Ljava/lang/Object;

    iget-object v11, v6, Lk/m0;->a:[J

    array-length v12, v11

    add-int/lit8 v12, v12, -0x2

    const/16 v17, 0x7

    const-wide/16 p7, 0x80

    iget-object v13, v0, Lx/s;->c:Lk/n0;

    const-wide v18, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    if-ltz v12, :cond_8

    const/4 v15, 0x0

    const-wide/16 v20, 0xff

    :goto_4
    aget-wide v7, v11, v15

    move/from16 v22, v15

    const/16 v16, 0x8

    not-long v14, v7

    shl-long v14, v14, v17

    and-long/2addr v14, v7

    and-long v14, v14, v18

    cmp-long v14, v14, v18

    if-eqz v14, :cond_7

    sub-int v15, v22, v12

    not-int v14, v15

    ushr-int/lit8 v14, v14, 0x1f

    rsub-int/lit8 v14, v14, 0x8

    move-wide/from16 v23, v7

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v14, :cond_6

    and-long v25, v23, v20

    cmp-long v8, v25, p7

    if-gez v8, :cond_5

    shl-int/lit8 v8, v22, 0x3

    add-int/2addr v8, v7

    aget-object v8, v10, v8

    invoke-virtual {v13, v8}, Lk/n0;->a(Ljava/lang/Object;)Z

    :cond_5
    shr-long v23, v23, v16

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_6
    move/from16 v7, v16

    if-ne v14, v7, :cond_9

    :cond_7
    move/from16 v7, v22

    if-eq v7, v12, :cond_9

    add-int/lit8 v15, v7, 0x1

    goto :goto_4

    :cond_8
    const-wide/16 v20, 0xff

    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v7, :cond_b

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lw/l;

    iget-object v11, v10, Lw/l;->i:Ljava/lang/Object;

    invoke-virtual {v13, v11}, Lk/n0;->l(Ljava/lang/Object;)Z

    iget-object v11, v10, Lw/l;->b:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v11, :cond_a

    iget-object v14, v10, Lw/l;->b:Ljava/util/List;

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lc2/f1;

    invoke-virtual {v14}, Lc2/f1;->G()Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_a
    iget-object v10, v10, Lw/l;->i:Ljava/lang/Object;

    iget-object v11, v0, Lx/s;->a:Lk/m0;

    invoke-virtual {v11, v10}, Lk/m0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lr0/i;->p(Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_b
    const/4 v8, 0x1

    new-array v7, v8, [I

    const/4 v10, 0x0

    iget-object v11, v0, Lx/s;->e:Ljava/util/ArrayList;

    iget-object v12, v0, Lx/s;->d:Ljava/util/ArrayList;

    if-eqz v9, :cond_11

    if-eqz v5, :cond_11

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_e

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-le v14, v8, :cond_c

    new-instance v14, Lx/r;

    const/4 v15, 0x2

    invoke-direct {v14, v5, v15}, Lx/r;-><init>(Ld1/c0;I)V

    invoke-static {v12, v14}, Lu8/p;->S(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_c
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-gtz v14, :cond_d

    const/4 v14, 0x0

    invoke-static {v7, v14, v8, v14}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_8

    :cond_d
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/l;

    invoke-static {v7, v0}, Lx/s;->e([ILw/l;)I

    iget-object v1, v0, Lw/l;->i:Ljava/lang/Object;

    invoke-virtual {v6, v1}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-static {v1}, Lr0/i;->p(Ljava/lang/Object;)V

    invoke-virtual {v0, v14}, Lw/l;->a(I)J

    throw v10

    :cond_e
    :goto_8
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v14, 0x1

    if-le v8, v14, :cond_f

    new-instance v8, Lx/r;

    const/4 v15, 0x0

    invoke-direct {v8, v5, v15}, Lx/r;-><init>(Ld1/c0;I)V

    invoke-static {v11, v8}, Lu8/p;->S(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_f
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_10

    const/4 v5, 0x0

    invoke-static {v7, v5, v14, v5}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_9

    :cond_10
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/l;

    invoke-static {v7, v0}, Lx/s;->e([ILw/l;)I

    iget-object v1, v0, Lw/l;->i:Ljava/lang/Object;

    invoke-virtual {v6, v1}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-static {v1}, Lr0/i;->p(Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Lw/l;->a(I)J

    throw v10

    :cond_11
    :goto_9
    iget-object v5, v13, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v8, v13, Lk/n0;->a:[J

    array-length v14, v8

    add-int/lit8 v14, v14, -0x2

    if-ltz v14, :cond_15

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    const/4 v15, 0x0

    :goto_a
    aget-wide v10, v8, v15

    move-object/from16 v25, v8

    move/from16 v24, v9

    not-long v8, v10

    shl-long v8, v8, v17

    and-long/2addr v8, v10

    and-long v8, v8, v18

    cmp-long v8, v8, v18

    if-eqz v8, :cond_14

    sub-int v8, v15, v14

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v16, 0x8

    rsub-int/lit8 v8, v8, 0x8

    const/4 v9, 0x0

    :goto_b
    if-ge v9, v8, :cond_13

    and-long v26, v10, v20

    cmp-long v26, v26, p7

    if-gez v26, :cond_12

    shl-int/lit8 v26, v15, 0x3

    add-int v26, v26, v9

    move-object/from16 v27, v5

    aget-object v5, v27, v26

    invoke-virtual {v6, v5}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lr0/i;->p(Ljava/lang/Object;)V

    :goto_c
    const/16 v5, 0x8

    goto :goto_d

    :cond_12
    move-object/from16 v27, v5

    goto :goto_c

    :goto_d
    shr-long/2addr v10, v5

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, v27

    goto :goto_b

    :cond_13
    move-object/from16 v27, v5

    const/16 v5, 0x8

    if-ne v8, v5, :cond_16

    goto :goto_e

    :cond_14
    move-object/from16 v27, v5

    const/16 v5, 0x8

    :goto_e
    if-eq v15, v14, :cond_16

    add-int/lit8 v15, v15, 0x1

    move/from16 v9, v24

    move-object/from16 v8, v25

    move-object/from16 v5, v27

    goto :goto_a

    :cond_15
    move/from16 v24, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    :cond_16
    iget-object v5, v0, Lx/s;->f:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1c

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v14, 0x1

    if-le v8, v14, :cond_17

    new-instance v8, Lx/r;

    const/4 v9, 0x3

    invoke-direct {v8, v4, v9}, Lx/r;-><init>(Ld1/c0;I)V

    invoke-static {v5, v8}, Lu8/p;->S(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_17
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_f
    if-ge v9, v8, :cond_1b

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lw/l;

    iget-object v11, v10, Lw/l;->i:Ljava/lang/Object;

    invoke-virtual {v6, v11}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-static {v11}, Lr0/i;->p(Ljava/lang/Object;)V

    invoke-static {v7, v10}, Lx/s;->e([ILw/l;)I

    move-result v11

    if-eqz p6, :cond_19

    invoke-static {v3}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lw/l;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lw/l;->a(I)J

    move-result-wide v16

    iget-boolean v14, v14, Lw/l;->c:Z

    if-eqz v14, :cond_18

    const-wide v14, 0xffffffffL

    and-long v14, v16, v14

    :goto_10
    long-to-int v14, v14

    goto :goto_11

    :cond_18
    const/16 v14, 0x20

    shr-long v14, v16, v14

    goto :goto_10

    :cond_19
    const/4 v14, 0x0

    :goto_11
    sub-int/2addr v14, v11

    invoke-virtual {v10, v14, v1, v2}, Lw/l;->c(III)V

    if-nez v24, :cond_1a

    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    :cond_1a
    const/4 v14, 0x1

    invoke-virtual {v0, v10, v14}, Lx/s;->d(Lw/l;Z)V

    throw v22

    :cond_1b
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static {v7, v15, v14, v15}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_12

    :cond_1c
    const/4 v14, 0x1

    :goto_12
    iget-object v8, v0, Lx/s;->g:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1f

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v14, :cond_1d

    new-instance v9, Lx/r;

    const/4 v10, 0x1

    invoke-direct {v9, v4, v10}, Lx/r;-><init>(Ld1/c0;I)V

    invoke-static {v8, v9}, Lu8/p;->S(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1d
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v14, 0x0

    :goto_13
    if-ge v14, v4, :cond_1f

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lw/l;

    iget-object v10, v9, Lw/l;->i:Ljava/lang/Object;

    invoke-virtual {v6, v10}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-static {v10}, Lr0/i;->p(Ljava/lang/Object;)V

    invoke-static {v7, v9}, Lx/s;->e([ILw/l;)I

    move-result v10

    iget v11, v9, Lw/l;->n:I

    const/4 v15, 0x0

    rsub-int/lit8 v11, v11, 0x0

    add-int/2addr v11, v10

    invoke-virtual {v9, v11, v1, v2}, Lw/l;->c(III)V

    if-nez v24, :cond_1e

    add-int/lit8 v14, v14, 0x1

    goto :goto_13

    :cond_1e
    const/4 v14, 0x1

    invoke-virtual {v0, v9, v14}, Lx/s;->d(Lw/l;Z)V

    throw v22

    :cond_1f
    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const/4 v15, 0x0

    invoke-virtual {v3, v15, v5}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v13}, Lk/n0;->b()V

    return-void
.end method

.method public final c()V
    .locals 14

    iget-object p0, p0, Lx/s;->a:Lk/m0;

    invoke-virtual {p0}, Lk/m0;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lk/m0;->c:[Ljava/lang/Object;

    iget-object v1, p0, Lk/m0;->a:[J

    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_3

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    aget-wide v5, v1, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    sub-int v7, v4, v2

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    move v9, v3

    :goto_1
    if-ge v9, v7, :cond_1

    const-wide/16 v10, 0xff

    and-long/2addr v10, v5

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-ltz v10, :cond_0

    shr-long/2addr v5, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    shl-int/lit8 p0, v4, 0x3

    add-int/2addr p0, v9

    aget-object p0, v0, p0

    invoke-static {p0}, Lr0/i;->p(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    if-ne v7, v8, :cond_3

    :cond_2
    if-eq v4, v2, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lk/m0;->a()V

    :cond_4
    return-void
.end method

.method public final d(Lw/l;Z)V
    .locals 0

    iget-object p1, p1, Lw/l;->i:Ljava/lang/Object;

    iget-object p0, p0, Lx/s;->a:Lk/m0;

    invoke-virtual {p0, p1}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-static {p0}, Lr0/i;->p(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method
