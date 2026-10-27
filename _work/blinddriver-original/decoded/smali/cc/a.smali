.class public final Lcc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lk0/l;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lk0/l;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lk0/l;-><init>(IZ)V

    new-instance v1, Lzb/d;

    invoke-direct {v1}, Lzb/d;-><init>()V

    iput-object v1, v0, Lk0/l;->m:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/l;->n:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lk0/l;->h(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcc/a;->a:Lk0/l;

    return-void
.end method

.method public static a(Lgc/e;ZLpb/s;Lgc/e;Lg5/i;)Z
    .locals 4

    invoke-virtual {p2}, Lpb/q;->v()Lpb/a;

    move-result-object p2

    invoke-virtual {p0}, Lgc/e;->d()Lgc/f;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lgc/f;->f(Lpb/a;ZLpb/i;)I

    move-result p0

    invoke-static {p0}, Ly4/s;->z(I)I

    move-result p0

    invoke-virtual {p3}, Lgc/e;->d()Lgc/f;

    move-result-object p3

    const/4 v2, 0x0

    invoke-virtual {p3, p2, v2, v1}, Lgc/f;->f(Lpb/a;ZLpb/i;)I

    move-result p2

    invoke-static {p2}, Ly4/s;->z(I)I

    move-result p3

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {p4, v1}, Lg5/i;->q(Z)Lgc/e;

    move-result-object v1

    iget v1, v1, Lgc/e;->c:I

    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ly4/s;->m(I)I

    move-result v1

    :goto_0
    if-ne p3, v3, :cond_1

    invoke-virtual {p4, v2, v3, p1, v3}, Lg5/i;->G(IIZI)V

    if-ne p0, v0, :cond_7

    invoke-virtual {p4, v0, v3, p1, v0}, Lg5/i;->G(IIZI)V

    invoke-virtual {p4, v3, v3, p1, v3}, Lg5/i;->G(IIZI)V

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_6

    if-eq v1, v0, :cond_5

    if-ne v1, v3, :cond_4

    if-ne p3, v0, :cond_3

    if-ne p0, v0, :cond_2

    invoke-virtual {p4, v0, v0, p1, v2}, Lg5/i;->G(IIZI)V

    goto :goto_1

    :cond_2
    invoke-virtual {p4, v2, v2, p1, v3}, Lg5/i;->G(IIZI)V

    invoke-virtual {p4, v2, v0, p1, v0}, Lg5/i;->G(IIZI)V

    invoke-virtual {p4, v2, v3, p1, v3}, Lg5/i;->G(IIZI)V

    goto :goto_1

    :cond_3
    invoke-virtual {p4, v2, p3, p1, v3}, Lg5/i;->G(IIZI)V

    if-ne p0, v0, :cond_7

    invoke-virtual {p4, v0, p3, p1, v0}, Lg5/i;->G(IIZI)V

    invoke-virtual {p4, v3, p3, p1, v3}, Lg5/i;->G(IIZI)V

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown target dimension: "

    invoke-static {v1, p1}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-virtual {p4, p0, p3, p1, v2}, Lg5/i;->G(IIZI)V

    if-nez p0, :cond_7

    invoke-virtual {p4, v2, v3, p1, v3}, Lg5/i;->G(IIZI)V

    goto :goto_1

    :cond_6
    invoke-virtual {p4, p0, v2, p1, v2}, Lg5/i;->G(IIZI)V

    invoke-virtual {p4, v2, v3, p1, v3}, Lg5/i;->G(IIZI)V

    if-ne p0, v0, :cond_7

    invoke-virtual {p4, v0, v3, p1, v0}, Lg5/i;->G(IIZI)V

    invoke-virtual {p4, v3, v3, p1, v3}, Lg5/i;->G(IIZI)V

    :cond_7
    :goto_1
    if-ne p3, v3, :cond_8

    return v0

    :cond_8
    return v2
.end method

.method public static b(Lgc/e;ZLgc/e;Lg5/i;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v3, Lg5/i;->m:Ljava/lang/Object;

    check-cast v4, Lgc/a;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lgc/e;->e(I)Z

    move-result v6

    iget-object v7, v0, Lgc/e;->a:Lpb/i;

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-nez v6, :cond_0

    goto/16 :goto_7

    :cond_0
    instance-of v6, v7, Lpb/w;

    if-eqz v6, :cond_1

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto :goto_1

    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_3

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    move-object v6, v11

    goto :goto_1

    :cond_3
    instance-of v6, v7, Lpb/j;

    if-eqz v6, :cond_2

    new-instance v6, Lc5/o;

    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-direct {v6, v12, v13}, Lc5/o;-><init>(IB)V

    iput-object v11, v6, Lc5/o;->m:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Lpb/i;->a(Lc5/o;)V

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Lgc/e;->c()I

    move-result v11

    if-gtz v11, :cond_4

    goto :goto_3

    :cond_4
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lpb/w;

    invoke-virtual {v12}, Lpb/w;->L()Z

    move-result v13

    if-eqz v13, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v12}, Lpb/w;->v()Lpb/a;

    move-result-object v13

    invoke-virtual {v0}, Lgc/e;->d()Lgc/f;

    move-result-object v14

    invoke-virtual {v14, v13, v5, v8}, Lgc/f;->f(Lpb/a;ZLpb/i;)I

    move-result v13

    invoke-static {v13}, Ly4/s;->m(I)I

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    move-object v6, v11

    :goto_3
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpb/w;

    invoke-virtual {v11}, Lpb/w;->L()Z

    move-result v12

    if-eqz v12, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v11}, Lpb/w;->v()Lpb/a;

    move-result-object v11

    invoke-virtual {v2}, Lgc/e;->d()Lgc/f;

    move-result-object v12

    invoke-virtual {v12, v11, v5, v8}, Lgc/f;->f(Lpb/a;ZLpb/i;)I

    move-result v11

    invoke-static {v11}, Ly4/s;->z(I)I

    move-result v12

    xor-int/lit8 v13, v1, 0x1

    invoke-virtual {v3, v13}, Lg5/i;->q(Z)Lgc/e;

    move-result-object v13

    iget v13, v13, Lgc/e;->c:I

    if-ne v11, v9, :cond_a

    goto :goto_5

    :cond_a
    invoke-static {v11}, Ly4/s;->m(I)I

    move-result v13

    :goto_5
    invoke-virtual {v3, v5, v12, v1, v5}, Lg5/i;->G(IIZI)V

    if-eqz v13, :cond_c

    if-eq v13, v10, :cond_c

    if-ne v13, v9, :cond_b

    invoke-virtual {v3, v9, v5, v1, v9}, Lg5/i;->G(IIZI)V

    invoke-virtual {v3, v9, v10, v1, v10}, Lg5/i;->G(IIZI)V

    goto :goto_6

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown target dimension: "

    invoke-static {v13, v1}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_6
    invoke-virtual {v4}, Lgc/a;->d()Z

    move-result v11

    if-eqz v11, :cond_8

    goto/16 :goto_13

    :cond_d
    :goto_7
    invoke-virtual {v2, v9}, Lgc/e;->e(I)Z

    move-result v6

    iget-object v11, v2, Lgc/e;->b:Lpb/h;

    if-nez v6, :cond_e

    invoke-virtual {v4, v1}, Lgc/a;->f(Z)Z

    move-result v6

    if-eqz v6, :cond_32

    :cond_e
    invoke-virtual {v0, v10}, Lgc/e;->e(I)Z

    move-result v6

    if-nez v6, :cond_10

    :cond_f
    move/from16 v16, v10

    goto/16 :goto_d

    :cond_10
    invoke-virtual {v7}, Lpb/i;->E()I

    move-result v6

    move v12, v5

    move v15, v12

    move-object v14, v8

    move v13, v10

    :goto_8
    if-eqz v13, :cond_12

    :cond_11
    :goto_9
    move/from16 v16, v10

    goto :goto_a

    :cond_12
    if-eqz v14, :cond_14

    invoke-virtual {v14}, Lpb/k;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_13

    goto :goto_9

    :cond_13
    move-object v14, v8

    :cond_14
    if-lt v15, v6, :cond_11

    move/from16 v16, v5

    :goto_a
    if-eqz v16, :cond_f

    if-eqz v13, :cond_16

    instance-of v13, v7, Lpb/j;

    if-nez v13, :cond_15

    add-int/lit8 v15, v15, 0x1

    :cond_15
    move v13, v5

    move-object/from16 v16, v7

    goto :goto_b

    :cond_16
    if-eqz v14, :cond_18

    invoke-virtual {v14}, Lpb/k;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_17

    invoke-virtual {v14}, Lpb/k;->next()Ljava/lang/Object;

    move-result-object v16

    goto :goto_b

    :cond_17
    move-object v14, v8

    :cond_18
    if-ge v15, v6, :cond_20

    add-int/lit8 v16, v15, 0x1

    invoke-virtual {v7, v15}, Lpb/i;->A(I)Lpb/i;

    move-result-object v15

    instance-of v8, v15, Lpb/j;

    if-eqz v8, :cond_19

    new-instance v8, Lpb/k;

    check-cast v15, Lpb/j;

    invoke-direct {v8, v15}, Lpb/k;-><init>(Lpb/j;)V

    invoke-virtual {v8}, Lpb/k;->next()Ljava/lang/Object;

    move-result-object v14

    move/from16 v15, v16

    move-object/from16 v16, v14

    move-object v14, v8

    goto :goto_b

    :cond_19
    move/from16 v17, v16

    move-object/from16 v16, v15

    move/from16 v15, v17

    :goto_b
    move-object/from16 v8, v16

    check-cast v8, Lpb/i;

    invoke-virtual {v8}, Lpb/i;->L()Z

    move-result v16

    if-eqz v16, :cond_1a

    move/from16 v16, v10

    goto :goto_c

    :cond_1a
    move/from16 v16, v10

    instance-of v10, v8, Lpb/q;

    if-eqz v10, :cond_1b

    if-eqz v12, :cond_1c

    invoke-virtual {v8}, Lpb/i;->z()Lpb/h;

    move-result-object v10

    invoke-virtual {v10, v11}, Lpb/h;->h(Lpb/h;)Z

    move-result v10

    if-nez v10, :cond_1c

    :cond_1b
    :goto_c
    move/from16 v10, v16

    const/4 v8, 0x0

    goto :goto_8

    :cond_1c
    check-cast v8, Lpb/q;

    iget-object v10, v8, Lpb/q;->o:Lpb/d;

    invoke-interface {v10, v5}, Lpb/d;->b(I)Lpb/a;

    move-result-object v10

    invoke-static {v0, v1, v10, v2, v3}, Lcc/a;->c(Lgc/e;ZLpb/a;Lgc/e;Lg5/i;)Z

    move-result v10

    or-int/2addr v10, v12

    invoke-virtual {v4}, Lgc/a;->d()Z

    move-result v12

    if-eqz v12, :cond_1d

    goto/16 :goto_13

    :cond_1d
    invoke-virtual {v8}, Lpb/q;->P()Z

    move-result v12

    if-nez v12, :cond_1f

    iget-object v12, v8, Lpb/q;->o:Lpb/d;

    invoke-interface {v12}, Lpb/d;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    iget-object v8, v8, Lpb/q;->o:Lpb/d;

    invoke-interface {v8, v12}, Lpb/d;->b(I)Lpb/a;

    move-result-object v8

    invoke-static {v0, v1, v8, v2, v3}, Lcc/a;->c(Lgc/e;ZLpb/a;Lgc/e;Lg5/i;)Z

    move-result v8

    or-int/2addr v8, v10

    invoke-virtual {v4}, Lgc/a;->d()Z

    move-result v10

    if-eqz v10, :cond_1e

    goto/16 :goto_13

    :cond_1e
    move v12, v8

    goto :goto_c

    :cond_1f
    move v12, v10

    goto :goto_c

    :cond_20
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :goto_d
    invoke-virtual {v0, v9}, Lgc/e;->e(I)Z

    move-result v6

    if-nez v6, :cond_21

    goto/16 :goto_13

    :cond_21
    iget v6, v2, Lgc/e;->c:I

    move/from16 v8, v16

    if-ge v6, v8, :cond_22

    goto/16 :goto_13

    :cond_22
    invoke-virtual {v7}, Lpb/i;->E()I

    move-result v6

    move v9, v5

    move v13, v9

    move v10, v8

    const/4 v12, 0x0

    :goto_e
    if-eqz v10, :cond_24

    :cond_23
    :goto_f
    move v14, v8

    goto :goto_10

    :cond_24
    if-eqz v12, :cond_26

    invoke-virtual {v12}, Lpb/k;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_25

    goto :goto_f

    :cond_25
    const/4 v12, 0x0

    :cond_26
    if-lt v13, v6, :cond_23

    move v14, v5

    :goto_10
    if-eqz v14, :cond_32

    if-eqz v10, :cond_28

    instance-of v10, v7, Lpb/j;

    if-nez v10, :cond_27

    add-int/lit8 v13, v13, 0x1

    :cond_27
    move v10, v5

    move-object v14, v7

    goto :goto_11

    :cond_28
    if-eqz v12, :cond_2a

    invoke-virtual {v12}, Lpb/k;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_29

    invoke-virtual {v12}, Lpb/k;->next()Ljava/lang/Object;

    move-result-object v14

    goto :goto_11

    :cond_29
    const/4 v12, 0x0

    :cond_2a
    if-ge v13, v6, :cond_31

    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v7, v13}, Lpb/i;->A(I)Lpb/i;

    move-result-object v13

    instance-of v15, v13, Lpb/j;

    if-eqz v15, :cond_2b

    new-instance v12, Lpb/k;

    check-cast v13, Lpb/j;

    invoke-direct {v12, v13}, Lpb/k;-><init>(Lpb/j;)V

    invoke-virtual {v12}, Lpb/k;->next()Ljava/lang/Object;

    move-result-object v13

    :cond_2b
    move/from16 v17, v14

    move-object v14, v13

    move/from16 v13, v17

    :goto_11
    check-cast v14, Lpb/i;

    invoke-virtual {v14}, Lpb/i;->L()Z

    move-result v15

    if-eqz v15, :cond_2c

    goto :goto_e

    :cond_2c
    instance-of v15, v14, Lpb/x;

    if-eqz v15, :cond_30

    if-eqz v9, :cond_2d

    invoke-virtual {v14}, Lpb/i;->z()Lpb/h;

    move-result-object v15

    invoke-virtual {v15, v11}, Lpb/h;->h(Lpb/h;)Z

    move-result v15

    if-nez v15, :cond_2d

    goto :goto_e

    :cond_2d
    check-cast v14, Lpb/x;

    iget-object v15, v14, Lpb/x;->o:Lpb/s;

    invoke-static {v0, v1, v15, v2, v3}, Lcc/a;->a(Lgc/e;ZLpb/s;Lgc/e;Lg5/i;)Z

    move-result v15

    or-int/2addr v9, v15

    invoke-virtual {v4}, Lgc/a;->d()Z

    move-result v15

    if-eqz v15, :cond_2e

    goto :goto_13

    :cond_2e
    move v15, v5

    :goto_12
    iget-object v5, v14, Lpb/x;->p:[Lpb/s;

    array-length v8, v5

    if-ge v15, v8, :cond_30

    aget-object v5, v5, v15

    invoke-static {v0, v1, v5, v2, v3}, Lcc/a;->a(Lgc/e;ZLpb/s;Lgc/e;Lg5/i;)Z

    move-result v5

    or-int/2addr v9, v5

    invoke-virtual {v4}, Lgc/a;->d()Z

    move-result v5

    if-eqz v5, :cond_2f

    goto :goto_13

    :cond_2f
    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x1

    goto :goto_12

    :cond_30
    const/4 v5, 0x0

    const/4 v8, 0x1

    goto/16 :goto_e

    :cond_31
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_32
    :goto_13
    return-void
.end method

.method public static c(Lgc/e;ZLpb/a;Lgc/e;Lg5/i;)Z
    .locals 6

    invoke-virtual {p0}, Lgc/e;->d()Lgc/f;

    move-result-object p0

    iget-object v0, p0, Lgc/f;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2, v4, v1}, Lgc/f;->e(Lpb/a;ZLpb/i;)I

    move-result v0

    if-eq v0, v2, :cond_2

    if-eqz v0, :cond_1

    if-eq v0, v3, :cond_0

    move p0, v2

    goto :goto_1

    :cond_0
    const/16 p0, 0x79

    goto :goto_1

    :cond_1
    const/16 p0, 0x78

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lgc/f;->h:Ljava/lang/Object;

    check-cast p0, Lad/a2;

    iget-object v0, p0, Lad/a2;->n:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move p0, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p0, p0, Lad/a2;->o:Ljava/lang/Object;

    check-cast p0, Lnb/a;

    invoke-virtual {p0, v0}, Lnb/a;->a(I)Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_4

    const/16 p0, 0x6f

    goto :goto_1

    :cond_4
    const/16 p0, 0x6e

    :goto_1
    invoke-virtual {p4, p1}, Lg5/i;->q(Z)Lgc/e;

    move-result-object v0

    iget v0, v0, Lgc/e;->c:I

    if-ne p0, v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {p0}, Ly4/s;->m(I)I

    move-result v0

    :goto_2
    if-eq v0, v3, :cond_6

    goto :goto_5

    :cond_6
    invoke-static {p0}, Ly4/s;->z(I)I

    move-result p0

    invoke-virtual {p3}, Lgc/e;->d()Lgc/f;

    move-result-object p3

    invoke-virtual {p3, p2, v4, v1}, Lgc/f;->f(Lpb/a;ZLpb/i;)I

    move-result p2

    invoke-static {p2}, Ly4/s;->z(I)I

    move-result p3

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p4, v0}, Lg5/i;->q(Z)Lgc/e;

    move-result-object v0

    iget v0, v0, Lgc/e;->c:I

    if-ne p2, v2, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {p2}, Ly4/s;->m(I)I

    move-result v0

    :goto_3
    invoke-virtual {p4, p0, p3, p1, v4}, Lg5/i;->G(IIZI)V

    if-eqz v0, :cond_a

    if-eq v0, v3, :cond_9

    if-ne v0, v2, :cond_8

    if-eq p3, v3, :cond_a

    invoke-virtual {p4, v4, p3, p1, v3}, Lg5/i;->G(IIZI)V

    invoke-virtual {p4, v2, p3, p1, v2}, Lg5/i;->G(IIZI)V

    goto :goto_4

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown target dimension: "

    invoke-static {v0, p1}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    if-ne p3, v2, :cond_a

    invoke-virtual {p4, v4, v2, p1, v3}, Lg5/i;->G(IIZI)V

    :cond_a
    :goto_4
    if-ne p3, v2, :cond_b

    return v3

    :cond_b
    :goto_5
    return v4
.end method

.method public static d(Lpb/i;Lpb/i;Lgc/a;)Z
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Lcc/a;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lgc/e;

    invoke-direct {v4, v0}, Lgc/e;-><init>(Lpb/i;)V

    invoke-virtual {v1}, Lpb/i;->z()Lpb/h;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lgc/a;->e(Z)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    iget-object v7, v4, Lgc/e;->b:Lpb/h;

    invoke-virtual {v7, v5}, Lpb/h;->a(Lpb/h;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v8}, Lgc/a;->e(Z)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v4, Lgc/e;->b:Lpb/h;

    invoke-virtual {v5, v7}, Lpb/h;->a(Lpb/h;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_1
    iget-object v7, v4, Lgc/e;->b:Lpb/h;

    invoke-virtual {v7, v5}, Lpb/h;->h(Lpb/h;)Z

    move-result v5

    if-nez v5, :cond_2

    :goto_0
    return v8

    :cond_2
    new-instance v5, Lgc/e;

    invoke-direct {v5, v1}, Lgc/e;-><init>(Lpb/i;)V

    iget-boolean v7, v4, Lgc/e;->l:Z

    if-eqz v7, :cond_3

    iget-boolean v7, v5, Lgc/e;->l:Z

    if-eqz v7, :cond_3

    invoke-virtual {v2}, Lgc/a;->a()V

    invoke-virtual {v2}, Lgc/a;->h()Z

    move-result v0

    return v0

    :cond_3
    invoke-virtual {v4}, Lgc/e;->c()I

    move-result v7

    invoke-virtual {v5}, Lgc/e;->c()I

    move-result v9

    invoke-virtual {v2, v7, v9}, Lgc/a;->b(II)V

    invoke-virtual {v2}, Lgc/a;->d()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v2}, Lgc/a;->a()V

    invoke-virtual {v2}, Lgc/a;->h()Z

    move-result v0

    return v0

    :cond_4
    iget-object v10, v4, Lgc/e;->b:Lpb/h;

    iget-object v11, v5, Lgc/e;->b:Lpb/h;

    invoke-virtual {v2, v10, v11}, Lgc/a;->c(Lpb/h;Lpb/h;)V

    invoke-virtual {v2}, Lgc/a;->d()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v2}, Lgc/a;->a()V

    invoke-virtual {v2}, Lgc/a;->h()Z

    move-result v0

    return v0

    :cond_5
    new-instance v10, Lg5/i;

    const/4 v11, 0x6

    invoke-direct {v10, v11}, Lg5/i;-><init>(I)V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, v10, Lg5/i;->p:Ljava/lang/Object;

    iput-object v2, v10, Lg5/i;->m:Ljava/lang/Object;

    iput-object v4, v10, Lg5/i;->n:Ljava/lang/Object;

    iput-object v5, v10, Lg5/i;->o:Ljava/lang/Object;

    invoke-virtual {v4}, Lgc/e;->c()I

    move-result v11

    invoke-virtual {v5}, Lgc/e;->c()I

    move-result v12

    const/4 v13, 0x2

    if-nez v11, :cond_6

    if-ne v12, v6, :cond_6

    invoke-virtual {v10, v13, v8, v6}, Lg5/i;->F(III)V

    goto :goto_1

    :cond_6
    if-ne v11, v6, :cond_7

    if-nez v12, :cond_7

    invoke-virtual {v10, v8, v13, v6}, Lg5/i;->F(III)V

    goto :goto_1

    :cond_7
    if-nez v11, :cond_8

    if-ne v12, v13, :cond_8

    invoke-virtual {v10, v13, v8, v13}, Lg5/i;->F(III)V

    invoke-virtual {v10, v13, v6, v6}, Lg5/i;->F(III)V

    goto :goto_1

    :cond_8
    if-ne v11, v13, :cond_9

    if-nez v12, :cond_9

    invoke-virtual {v10, v8, v13, v13}, Lg5/i;->F(III)V

    invoke-virtual {v10, v6, v13, v6}, Lg5/i;->F(III)V

    goto :goto_1

    :cond_9
    if-ne v11, v6, :cond_a

    if-ne v12, v13, :cond_a

    invoke-virtual {v10, v13, v8, v13}, Lg5/i;->F(III)V

    goto :goto_1

    :cond_a
    if-ne v11, v13, :cond_b

    if-ne v12, v6, :cond_b

    invoke-virtual {v10, v8, v13, v13}, Lg5/i;->F(III)V

    goto :goto_1

    :cond_b
    const/4 v14, -0x1

    if-eq v11, v14, :cond_c

    if-ne v12, v14, :cond_e

    :cond_c
    if-eq v11, v14, :cond_d

    invoke-virtual {v10, v6}, Lg5/i;->w(Z)V

    :cond_d
    if-eq v12, v14, :cond_e

    invoke-virtual {v10, v8}, Lg5/i;->w(Z)V

    :cond_e
    :goto_1
    if-nez v7, :cond_15

    if-nez v9, :cond_15

    iget-object v2, v4, Lgc/e;->d:Ljava/util/HashSet;

    if-nez v2, :cond_f

    invoke-static {v0}, Lc5/o;->k(Lpb/i;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iput-object v2, v4, Lgc/e;->d:Ljava/util/HashSet;

    :cond_f
    iget-object v0, v4, Lgc/e;->d:Ljava/util/HashSet;

    iget-object v2, v5, Lgc/e;->d:Ljava/util/HashSet;

    if-nez v2, :cond_10

    invoke-static {v1}, Lc5/o;->k(Lpb/i;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iput-object v2, v5, Lgc/e;->d:Ljava/util/HashSet;

    :cond_10
    iget-object v1, v5, Lgc/e;->d:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v8

    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpb/a;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v10, v8, v8, v8}, Lg5/i;->F(III)V

    goto :goto_2

    :cond_12
    invoke-virtual {v10, v8, v13, v8, v8}, Lg5/i;->G(IIZI)V

    :goto_2
    iget-object v3, v10, Lg5/i;->m:Ljava/lang/Object;

    check-cast v3, Lgc/a;

    invoke-virtual {v3}, Lgc/a;->d()Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_3

    :cond_13
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-ge v2, v0, :cond_14

    invoke-virtual {v10, v8, v13, v6, v8}, Lg5/i;->G(IIZI)V

    :cond_14
    :goto_3
    iget-object v0, v10, Lg5/i;->m:Ljava/lang/Object;

    check-cast v0, Lgc/a;

    invoke-virtual {v0}, Lgc/a;->a()V

    iget-object v0, v10, Lg5/i;->m:Ljava/lang/Object;

    check-cast v0, Lgc/a;

    invoke-virtual {v0}, Lgc/a;->h()Z

    move-result v0

    return v0

    :cond_15
    invoke-static {v5, v8, v4, v10}, Lcc/a;->b(Lgc/e;ZLgc/e;Lg5/i;)V

    invoke-virtual {v2}, Lgc/a;->d()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-virtual {v2}, Lgc/a;->h()Z

    move-result v0

    return v0

    :cond_16
    invoke-static {v4, v6, v5, v10}, Lcc/a;->b(Lgc/e;ZLgc/e;Lg5/i;)V

    invoke-virtual {v2}, Lgc/a;->d()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-virtual {v2}, Lgc/a;->h()Z

    move-result v0

    return v0

    :cond_17
    iget-boolean v7, v4, Lgc/e;->i:Z

    if-nez v7, :cond_18

    iget-boolean v7, v4, Lgc/e;->j:Z

    if-eqz v7, :cond_35

    :cond_18
    iget-boolean v7, v5, Lgc/e;->i:Z

    if-nez v7, :cond_19

    iget-boolean v7, v5, Lgc/e;->j:Z

    if-eqz v7, :cond_35

    :cond_19
    iget-object v7, v4, Lgc/e;->b:Lpb/h;

    invoke-virtual {v7}, Lpb/h;->i()Z

    move-result v9

    if-nez v9, :cond_1f

    iget-object v9, v5, Lgc/e;->b:Lpb/h;

    invoke-virtual {v9}, Lpb/h;->i()Z

    move-result v11

    if-nez v11, :cond_1f

    invoke-virtual {v7, v9}, Lpb/h;->h(Lpb/h;)Z

    move-result v11

    if-nez v11, :cond_1a

    goto :goto_9

    :cond_1a
    iget-wide v11, v7, Lpb/h;->l:D

    iget-wide v14, v9, Lpb/h;->l:D

    cmpl-double v16, v11, v14

    if-lez v16, :cond_1b

    move-wide/from16 v18, v11

    goto :goto_4

    :cond_1b
    move-wide/from16 v18, v14

    :goto_4
    iget-wide v11, v7, Lpb/h;->n:D

    iget-wide v14, v9, Lpb/h;->n:D

    cmpl-double v16, v11, v14

    if-lez v16, :cond_1c

    move-wide/from16 v22, v11

    goto :goto_5

    :cond_1c
    move-wide/from16 v22, v14

    :goto_5
    iget-wide v11, v7, Lpb/h;->m:D

    iget-wide v14, v9, Lpb/h;->m:D

    cmpg-double v16, v11, v14

    if-gez v16, :cond_1d

    move-wide/from16 v20, v11

    goto :goto_6

    :cond_1d
    move-wide/from16 v20, v14

    :goto_6
    iget-wide v11, v7, Lpb/h;->o:D

    iget-wide v14, v9, Lpb/h;->o:D

    cmpg-double v7, v11, v14

    if-gez v7, :cond_1e

    move-wide/from16 v24, v11

    goto :goto_7

    :cond_1e
    move-wide/from16 v24, v14

    :goto_7
    new-instance v17, Lpb/h;

    invoke-direct/range {v17 .. v25}, Lpb/h;-><init>(DDDD)V

    :goto_8
    move-object/from16 v7, v17

    goto :goto_a

    :cond_1f
    :goto_9
    new-instance v17, Lpb/h;

    invoke-direct/range {v17 .. v17}, Lpb/h;-><init>()V

    goto :goto_8

    :goto_a
    invoke-virtual {v7}, Lpb/h;->i()Z

    move-result v9

    if-eqz v9, :cond_20

    goto/16 :goto_1b

    :cond_20
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v8, v7, v1, v9}, Lgc/e;->b(ZLpb/h;Lpb/i;Ljava/util/ArrayList;)V

    new-instance v1, Lg5/e;

    const/4 v11, 0x6

    invoke-direct {v1, v11}, Lg5/e;-><init>(I)V

    new-instance v11, Lnb/d;

    invoke-direct {v11}, Lnb/d;-><init>()V

    iput-object v11, v1, Lg5/e;->m:Ljava/lang/Object;

    iput-object v10, v1, Lg5/e;->n:Ljava/lang/Object;

    instance-of v11, v2, Lgc/g;

    if-nez v11, :cond_21

    invoke-virtual {v4}, Lgc/e;->f()Z

    move-result v11

    if-nez v11, :cond_22

    invoke-virtual {v5}, Lgc/e;->f()Z

    move-result v11

    if-eqz v11, :cond_21

    goto :goto_b

    :cond_21
    move/from16 v22, v6

    goto/16 :goto_11

    :cond_22
    :goto_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v6, v7, v0, v3}, Lgc/e;->b(ZLpb/h;Lpb/i;Ljava/util/ArrayList;)V

    new-instance v0, Lf6/v;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v11, Lxb/a;

    invoke-direct {v11}, Lxb/a;-><init>()V

    iput-object v11, v0, Lf6/v;->b:Ljava/lang/Object;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v0, Lf6/v;->d:Ljava/lang/Object;

    iput v8, v0, Lf6/v;->a:I

    iput-object v7, v0, Lf6/v;->c:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lf6/v;->c(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v9}, Lf6/v;->c(Ljava/util/ArrayList;)V

    invoke-virtual {v11}, Lxb/a;->a()V

    new-instance v3, Lcc/b;

    const/4 v7, 0x1

    invoke-direct {v3, v7}, Lcc/b;-><init>(I)V

    iput-object v1, v3, Lcc/b;->b:Lcc/e;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v9, v8

    :goto_c
    if-ge v9, v7, :cond_2a

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v9, v9, 0x1

    check-cast v11, Lwb/a;

    iget-object v14, v0, Lf6/v;->b:Ljava/lang/Object;

    check-cast v14, Lxb/a;

    invoke-virtual {v11}, Lwb/a;->b()Lpb/h;

    move-result-object v15

    invoke-virtual {v14}, Lxb/a;->a()V

    iget-object v13, v14, Lxb/a;->d:Lpb/h;

    invoke-virtual {v13, v15}, Lpb/h;->h(Lpb/h;)Z

    move-result v16

    if-nez v16, :cond_23

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 p0, v0

    move/from16 v22, v6

    goto :goto_f

    :cond_23
    move/from16 v22, v6

    new-instance v6, Lc5/o;

    const/16 v8, 0xa

    move-object/from16 p0, v0

    const/4 v0, 0x0

    invoke-direct {v6, v8, v0}, Lc5/o;-><init>(IB)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lc5/o;->m:Ljava/util/ArrayList;

    invoke-virtual {v14}, Lxb/a;->a()V

    invoke-virtual {v13, v15}, Lpb/h;->h(Lpb/h;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_e

    :cond_24
    iget-object v0, v14, Lxb/a;->e:[I

    if-nez v0, :cond_25

    const/4 v8, 0x0

    invoke-virtual {v14, v8, v15, v6}, Lxb/a;->e(ILpb/h;Lc5/o;)V

    goto :goto_e

    :cond_25
    array-length v8, v0

    add-int/lit8 v13, v8, -0x2

    aget v16, v0, v13

    add-int/lit8 v8, v8, -0x1

    aget v0, v0, v8

    sub-int v0, v0, v16

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v0, :cond_26

    invoke-virtual {v14, v13, v8, v15, v6}, Lxb/a;->f(IILpb/h;Lc5/o;)V

    add-int/lit8 v8, v8, 0x4

    goto :goto_d

    :cond_26
    :goto_e
    iget-object v13, v6, Lc5/o;->m:Ljava/util/ArrayList;

    :goto_f
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v6, 0x0

    :goto_10
    if-ge v6, v0, :cond_29

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    move-object v14, v8

    check-cast v14, Lwb/a;

    iget v8, v14, Lwb/a;->f:I

    iget v15, v11, Lwb/a;->f:I

    if-gt v8, v15, :cond_27

    goto :goto_10

    :cond_27
    iget v15, v14, Lwb/a;->b:I

    iget v8, v14, Lwb/a;->c:I

    move/from16 p1, v0

    iget v0, v11, Lwb/a;->b:I

    move/from16 v18, v0

    iget v0, v11, Lwb/a;->c:I

    move/from16 v19, v0

    move-object/from16 v20, v3

    move/from16 v16, v8

    move-object/from16 v17, v11

    invoke-virtual/range {v14 .. v20}, Lwb/a;->a(IILwb/a;IILwa/h;)V

    invoke-virtual {v1}, Lg5/e;->isDone()Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_12

    :cond_28
    move/from16 v0, p1

    move-object/from16 v11, v17

    move-object/from16 v3, v20

    goto :goto_10

    :cond_29
    move-object/from16 v0, p0

    move/from16 v6, v22

    const/4 v8, 0x0

    const/4 v13, 0x2

    goto/16 :goto_c

    :cond_2a
    move/from16 v22, v6

    goto :goto_12

    :goto_11
    iget-object v6, v3, Lcc/a;->a:Lk0/l;

    if-nez v6, :cond_2b

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move/from16 v8, v22

    invoke-virtual {v4, v8, v7, v0, v6}, Lgc/e;->b(ZLpb/h;Lpb/i;Ljava/util/ArrayList;)V

    new-instance v0, Lk0/l;

    const/4 v8, 0x2

    const/4 v11, 0x0

    invoke-direct {v0, v8, v11}, Lk0/l;-><init>(IZ)V

    new-instance v8, Lzb/d;

    invoke-direct {v8}, Lzb/d;-><init>()V

    iput-object v8, v0, Lk0/l;->m:Ljava/lang/Object;

    iput-object v7, v0, Lk0/l;->n:Ljava/lang/Object;

    invoke-virtual {v0, v6}, Lk0/l;->h(Ljava/util/ArrayList;)V

    iput-object v0, v3, Lcc/a;->a:Lk0/l;

    :cond_2b
    iget-object v0, v3, Lcc/a;->a:Lk0/l;

    invoke-virtual {v0, v9, v1}, Lk0/l;->j(Ljava/util/ArrayList;Lcc/e;)V

    :goto_12
    invoke-virtual {v2}, Lgc/a;->d()Z

    move-result v0

    if-eqz v0, :cond_2c

    goto/16 :goto_1b

    :cond_2c
    iget-object v0, v10, Lg5/i;->p:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2d
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgc/c;

    iget-object v3, v1, Lgc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_14
    if-ge v9, v6, :cond_34

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v9, v9, 0x1

    check-cast v11, Lgc/b;

    iget-boolean v11, v11, Lgc/b;->l:Z

    if-eqz v11, :cond_2e

    const/4 v7, 0x1

    goto :goto_15

    :cond_2e
    const/4 v8, 0x1

    :goto_15
    if-eqz v7, :cond_33

    if-eqz v8, :cond_33

    iget-object v3, v1, Lgc/c;->a:Lpb/a;

    invoke-virtual {v1}, Lgc/c;->a()Lg5/l;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lgc/c;->b(Z)Lpb/i;

    move-result-object v7

    invoke-virtual {v4}, Lgc/e;->d()Lgc/f;

    move-result-object v9

    invoke-virtual {v9, v3, v8, v7}, Lgc/f;->f(Lpb/a;ZLpb/i;)I

    move-result v7

    const/16 v9, 0x78

    if-ne v7, v9, :cond_2f

    move v7, v8

    :goto_16
    const/4 v11, 0x0

    goto :goto_17

    :cond_2f
    const/4 v7, 0x0

    goto :goto_16

    :goto_17
    invoke-virtual {v1, v11}, Lgc/c;->b(Z)Lpb/i;

    move-result-object v1

    invoke-virtual {v5}, Lgc/e;->d()Lgc/f;

    move-result-object v12

    invoke-virtual {v12, v3, v8, v1}, Lgc/f;->f(Lpb/a;ZLpb/i;)I

    move-result v1

    if-ne v1, v9, :cond_30

    move v1, v8

    goto :goto_18

    :cond_30
    move v1, v11

    :goto_18
    invoke-virtual {v6, v8, v7}, Lg5/l;->i(ZZ)V

    invoke-virtual {v6, v11, v1}, Lg5/l;->i(ZZ)V

    iget-object v1, v6, Lg5/l;->n:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v8, 0x0

    :goto_19
    if-ge v8, v3, :cond_32

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v8, v8, 0x1

    check-cast v6, Lgc/d;

    iget-object v7, v10, Lg5/i;->n:Ljava/lang/Object;

    check-cast v7, Lgc/e;

    iget v7, v7, Lgc/e;->c:I

    const/4 v11, 0x2

    if-ne v7, v11, :cond_31

    iget-object v7, v10, Lg5/i;->o:Ljava/lang/Object;

    check-cast v7, Lgc/e;

    iget v7, v7, Lgc/e;->c:I

    if-ne v7, v11, :cond_31

    const/4 v12, 0x1

    invoke-virtual {v6, v12, v12}, Lgc/d;->a(IZ)I

    move-result v7

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Lgc/d;->a(IZ)I

    move-result v9

    invoke-virtual {v10, v7, v9, v11}, Lg5/i;->F(III)V

    invoke-virtual {v6, v11, v12}, Lgc/d;->a(IZ)I

    move-result v7

    invoke-virtual {v6, v11, v13}, Lgc/d;->a(IZ)I

    move-result v9

    invoke-virtual {v10, v7, v9, v11}, Lg5/i;->F(III)V

    goto :goto_1a

    :cond_31
    const/4 v12, 0x1

    const/4 v13, 0x0

    :goto_1a
    invoke-virtual {v6, v13, v12}, Lgc/d;->a(IZ)I

    move-result v7

    invoke-virtual {v6, v13, v13}, Lgc/d;->a(IZ)I

    move-result v6

    invoke-virtual {v10, v7, v6, v12}, Lg5/i;->F(III)V

    goto :goto_19

    :cond_32
    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v2}, Lgc/a;->d()Z

    move-result v1

    if-eqz v1, :cond_2d

    goto :goto_1b

    :cond_33
    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto/16 :goto_14

    :cond_34
    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto/16 :goto_13

    :cond_35
    :goto_1b
    iget-object v0, v10, Lg5/i;->m:Ljava/lang/Object;

    check-cast v0, Lgc/a;

    invoke-virtual {v0}, Lgc/a;->a()V

    iget-object v0, v10, Lg5/i;->m:Ljava/lang/Object;

    check-cast v0, Lgc/a;

    invoke-virtual {v0}, Lgc/a;->h()Z

    move-result v0

    return v0
.end method
