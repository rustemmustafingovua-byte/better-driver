.class public final Lhc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lpb/c;

.field public b:D

.field public c:Lic/b;


# virtual methods
.method public final a()V
    .locals 33

    move-object/from16 v0, p0

    iget-object v1, v0, Lhc/a;->c:Lic/b;

    if-eqz v1, :cond_0

    goto/16 :goto_15

    :cond_0
    iget-object v1, v0, Lhc/a;->a:Lpb/c;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    move-wide v8, v6

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    :goto_0
    if-ge v10, v2, :cond_7

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v10, v10, 0x1

    const-wide/16 v17, 0x0

    move-object/from16 v3, v16

    check-cast v3, Lpb/a;

    move-wide/from16 v19, v6

    const/4 v4, 0x0

    iget-wide v5, v3, Lpb/a;->l:D

    move v7, v4

    move-wide/from16 v21, v5

    iget-wide v4, v3, Lpb/a;->m:D

    cmpg-double v3, v19, v11

    if-gez v3, :cond_1

    const/4 v15, 0x1

    goto :goto_1

    :cond_1
    move v15, v7

    :goto_1
    if-eqz v15, :cond_2

    move-wide v8, v4

    move-wide v13, v8

    move-wide/from16 v11, v21

    move-wide/from16 v19, v11

    goto :goto_2

    :cond_2
    cmpg-double v3, v21, v11

    if-gez v3, :cond_3

    move-wide/from16 v11, v21

    :cond_3
    cmpl-double v3, v21, v19

    if-lez v3, :cond_4

    move-wide/from16 v19, v21

    :cond_4
    cmpg-double v3, v4, v13

    if-gez v3, :cond_5

    move-wide v13, v4

    :cond_5
    cmpl-double v3, v4, v8

    if-lez v3, :cond_6

    move-wide v8, v4

    :cond_6
    :goto_2
    move-wide/from16 v6, v19

    goto :goto_0

    :cond_7
    move-wide/from16 v19, v6

    const/4 v7, 0x0

    const-wide/16 v17, 0x0

    iget-object v1, v0, Lhc/a;->a:Lpb/c;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v7

    :goto_3
    if-ge v4, v3, :cond_8

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lpb/a;

    new-instance v6, Lic/c;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v10, Lpb/a;

    invoke-direct {v10, v5}, Lpb/a;-><init>(Lpb/a;)V

    iput-object v10, v6, Lic/c;->a:Lpb/a;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    new-instance v1, Lic/b;

    iget-wide v3, v0, Lhc/a;->b:D

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lic/b;->a:Ljava/util/ArrayList;

    const/4 v6, 0x3

    new-array v6, v6, [Lic/c;

    iput-object v6, v1, Lic/b;->e:[Lic/c;

    const/4 v10, 0x0

    iput-object v10, v1, Lic/b;->f:Lg5/e;

    move/from16 v16, v7

    new-instance v7, Lpb/p;

    const/16 v21, 0x1

    new-instance v15, Lpb/a;

    invoke-direct {v15}, Lpb/a;-><init>()V

    new-instance v10, Lpb/a;

    invoke-direct {v10}, Lpb/a;-><init>()V

    invoke-direct {v7, v15, v10}, Lpb/p;-><init>(Lpb/a;Lpb/a;)V

    iput-object v7, v1, Lic/b;->g:Lpb/p;

    iput-wide v3, v1, Lic/b;->c:D

    const-wide v23, 0x408f400000000000L    # 1000.0

    div-double v3, v3, v23

    iput-wide v3, v1, Lic/b;->d:D

    cmpg-double v3, v19, v11

    if-gez v3, :cond_9

    move/from16 v3, v21

    goto :goto_4

    :cond_9
    move/from16 v3, v16

    :goto_4
    if-eqz v3, :cond_a

    move-wide/from16 v3, v17

    goto :goto_5

    :cond_a
    sub-double v3, v19, v11

    :goto_5
    cmpg-double v7, v19, v11

    if-gez v7, :cond_b

    move/from16 v7, v21

    goto :goto_6

    :cond_b
    move/from16 v7, v16

    :goto_6
    if-eqz v7, :cond_c

    move-object v10, v6

    move-wide/from16 v6, v17

    goto :goto_7

    :cond_c
    sub-double v23, v8, v13

    move-object v10, v6

    move-wide/from16 v6, v23

    :goto_7
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double/2addr v3, v6

    new-instance v6, Lic/c;

    add-double v23, v19, v11

    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    move-wide/from16 v27, v3

    div-double v3, v23, v25

    add-double v8, v8, v27

    invoke-direct {v6, v3, v4, v8, v9}, Lic/c;-><init>(DD)V

    aput-object v6, v10, v16

    new-instance v3, Lic/c;

    sub-double v11, v11, v27

    sub-double v6, v13, v27

    invoke-direct {v3, v11, v12, v6, v7}, Lic/c;-><init>(DD)V

    aput-object v3, v10, v21

    new-instance v3, Lic/c;

    add-double v6, v19, v27

    sub-double v13, v13, v27

    invoke-direct {v3, v6, v7, v13, v14}, Lic/c;-><init>(DD)V

    const/4 v4, 0x2

    aput-object v3, v10, v4

    aget-object v3, v10, v16

    iget-object v3, v3, Lic/c;->a:Lpb/a;

    aget-object v6, v10, v21

    iget-object v6, v6, Lic/c;->a:Lpb/a;

    iget-wide v7, v3, Lpb/a;->l:D

    iget-wide v6, v6, Lpb/a;->l:D

    aget-object v3, v10, v4

    iget-object v3, v3, Lic/c;->a:Lpb/a;

    iget-wide v6, v3, Lpb/a;->l:D

    aget-object v3, v10, v16

    aget-object v6, v10, v21

    invoke-static {v3, v6}, Lic/a;->d(Lic/c;Lic/c;)Lic/a;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v6, v10, v21

    aget-object v7, v10, v4

    invoke-static {v6, v7}, Lic/a;->d(Lic/c;Lic/c;)Lic/a;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v3, Lic/a;->a:Lic/a;

    iget-object v7, v7, Lic/a;->a:Lic/a;

    invoke-static {v7, v6}, Lic/a;->f(Lic/a;Lic/a;)V

    aget-object v4, v10, v4

    aget-object v7, v10, v16

    invoke-static {v4, v7}, Lic/a;->d(Lic/c;Lic/c;)Lic/a;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v6, Lic/a;->a:Lic/a;

    iget-object v6, v6, Lic/a;->a:Lic/a;

    invoke-static {v6, v4}, Lic/a;->f(Lic/a;Lic/a;)V

    iget-object v4, v4, Lic/a;->a:Lic/a;

    iget-object v4, v4, Lic/a;->a:Lic/a;

    invoke-static {v4, v3}, Lic/a;->f(Lic/a;Lic/a;)V

    iput-object v3, v1, Lic/b;->b:Lic/a;

    new-instance v3, Lg5/e;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lg5/e;-><init>(I)V

    const/4 v4, 0x0

    iput-object v4, v3, Lg5/e;->n:Ljava/lang/Object;

    iput-object v1, v3, Lg5/e;->m:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lic/a;

    iput-object v4, v3, Lg5/e;->n:Ljava/lang/Object;

    iput-object v3, v1, Lic/b;->f:Lg5/e;

    iput-object v1, v0, Lhc/a;->c:Lic/b;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    move/from16 v3, v16

    :goto_8
    if-ge v3, v0, :cond_22

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lic/c;

    iget-object v5, v1, Lic/b;->f:Lg5/e;

    iget-object v6, v1, Lic/b;->a:Ljava/util/ArrayList;

    iget-object v7, v5, Lg5/e;->n:Ljava/lang/Object;

    check-cast v7, Lic/a;

    iget-object v8, v5, Lg5/e;->m:Ljava/lang/Object;

    check-cast v8, Lic/b;

    iget-object v7, v7, Lic/a;->a:Lic/a;

    if-eqz v7, :cond_d

    goto :goto_9

    :cond_d
    iget-object v7, v8, Lic/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lic/a;

    iput-object v7, v5, Lg5/e;->n:Ljava/lang/Object;

    :goto_9
    iget-object v7, v5, Lg5/e;->n:Ljava/lang/Object;

    check-cast v7, Lic/a;

    iget-object v8, v8, Lic/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move/from16 v9, v16

    :goto_a
    add-int/lit8 v9, v9, 0x1

    if-gt v9, v8, :cond_21

    iget-object v10, v7, Lic/a;->b:Lic/c;

    invoke-virtual {v4, v10}, Lic/c;->a(Lic/c;)Z

    move-result v10

    iget-object v11, v4, Lic/c;->a:Lpb/a;

    if-nez v10, :cond_11

    invoke-virtual {v7}, Lic/a;->b()Lic/c;

    move-result-object v10

    invoke-virtual {v4, v10}, Lic/c;->a(Lic/c;)Z

    move-result v10

    if-eqz v10, :cond_e

    goto :goto_b

    :cond_e
    invoke-virtual {v4, v7}, Lic/c;->b(Lic/a;)Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v7, v7, Lic/a;->a:Lic/a;

    iget-object v7, v7, Lic/a;->a:Lic/a;

    goto :goto_a

    :cond_f
    iget-object v10, v7, Lic/a;->c:Lic/a;

    invoke-virtual {v4, v10}, Lic/c;->b(Lic/a;)Z

    move-result v10

    if-nez v10, :cond_10

    iget-object v7, v7, Lic/a;->c:Lic/a;

    goto :goto_a

    :cond_10
    iget-object v10, v7, Lic/a;->a:Lic/a;

    iget-object v10, v10, Lic/a;->a:Lic/a;

    iget-object v10, v10, Lic/a;->a:Lic/a;

    iget-object v10, v10, Lic/a;->c:Lic/a;

    iget-object v10, v10, Lic/a;->a:Lic/a;

    iget-object v10, v10, Lic/a;->a:Lic/a;

    iget-object v10, v10, Lic/a;->a:Lic/a;

    invoke-virtual {v4, v10}, Lic/c;->b(Lic/a;)Z

    move-result v10

    if-nez v10, :cond_11

    iget-object v7, v7, Lic/a;->a:Lic/a;

    iget-object v7, v7, Lic/a;->a:Lic/a;

    iget-object v7, v7, Lic/a;->a:Lic/a;

    iget-object v7, v7, Lic/a;->c:Lic/a;

    iget-object v7, v7, Lic/a;->a:Lic/a;

    iget-object v7, v7, Lic/a;->a:Lic/a;

    iget-object v7, v7, Lic/a;->a:Lic/a;

    goto :goto_a

    :cond_11
    :goto_b
    iput-object v7, v5, Lg5/e;->n:Ljava/lang/Object;

    iget-object v5, v7, Lic/a;->b:Lic/c;

    iget-wide v8, v1, Lic/b;->c:D

    iget-object v5, v5, Lic/c;->a:Lpb/a;

    invoke-virtual {v11, v5}, Lpb/a;->h(Lpb/a;)D

    move-result-wide v12

    cmpg-double v5, v12, v8

    if-gez v5, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {v7}, Lic/a;->b()Lic/c;

    move-result-object v5

    iget-object v5, v5, Lic/c;->a:Lpb/a;

    invoke-virtual {v11, v5}, Lpb/a;->h(Lpb/a;)D

    move-result-wide v12

    cmpg-double v5, v12, v8

    if-gez v5, :cond_13

    :goto_c
    move-object v10, v2

    move/from16 p0, v3

    move/from16 v9, v21

    goto/16 :goto_14

    :cond_13
    iget-object v5, v1, Lic/b;->g:Lpb/p;

    iget-object v8, v7, Lic/a;->b:Lic/c;

    iget-object v8, v8, Lic/c;->a:Lpb/a;

    invoke-virtual {v7}, Lic/a;->b()Lic/c;

    move-result-object v9

    iget-object v9, v9, Lic/c;->a:Lpb/a;

    iget-object v10, v5, Lpb/p;->l:Lpb/a;

    iget-wide v12, v8, Lpb/a;->l:D

    iput-wide v12, v10, Lpb/a;->l:D

    iget-wide v12, v8, Lpb/a;->m:D

    iput-wide v12, v10, Lpb/a;->m:D

    iget-object v5, v5, Lpb/p;->m:Lpb/a;

    iget-wide v12, v9, Lpb/a;->l:D

    iput-wide v12, v5, Lpb/a;->l:D

    iget-wide v8, v9, Lpb/a;->m:D

    iput-wide v8, v5, Lpb/a;->m:D

    invoke-static {v11, v10, v5}, La/a;->w(Lpb/a;Lpb/a;Lpb/a;)D

    move-result-wide v8

    iget-wide v12, v1, Lic/b;->d:D

    cmpg-double v5, v8, v12

    if-gez v5, :cond_14

    invoke-virtual {v7}, Lic/a;->e()Lic/a;

    move-result-object v7

    iget-object v5, v7, Lic/a;->c:Lic/a;

    invoke-virtual {v5}, Lic/a;->e()Lic/a;

    move-result-object v8

    invoke-static {v5, v8}, Lic/a;->f(Lic/a;Lic/a;)V

    iget-object v8, v5, Lic/a;->a:Lic/a;

    iget-object v8, v8, Lic/a;->a:Lic/a;

    invoke-virtual {v8}, Lic/a;->e()Lic/a;

    move-result-object v9

    invoke-static {v8, v9}, Lic/a;->f(Lic/a;Lic/a;)V

    iget-object v8, v5, Lic/a;->a:Lic/a;

    iget-object v9, v8, Lic/a;->a:Lic/a;

    iget-object v10, v9, Lic/a;->a:Lic/a;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    iput-object v12, v5, Lic/a;->a:Lic/a;

    iput-object v12, v9, Lic/a;->a:Lic/a;

    iput-object v12, v8, Lic/a;->a:Lic/a;

    iput-object v12, v10, Lic/a;->a:Lic/a;

    goto :goto_d

    :cond_14
    const/4 v12, 0x0

    :goto_d
    iget-object v5, v7, Lic/a;->b:Lic/c;

    invoke-static {v5, v4}, Lic/a;->d(Lic/c;Lic/c;)Lic/a;

    move-result-object v5

    iget-object v8, v1, Lic/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5, v7}, Lic/a;->f(Lic/a;Lic/a;)V

    move-object v8, v5

    :cond_15
    iget-object v8, v8, Lic/a;->a:Lic/a;

    iget-object v8, v8, Lic/a;->a:Lic/a;

    invoke-static {v7, v8}, Lic/a;->a(Lic/a;Lic/a;)Lic/a;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lic/a;->e()Lic/a;

    move-result-object v7

    invoke-virtual {v7}, Lic/a;->c()Lic/a;

    move-result-object v9

    if-ne v9, v5, :cond_15

    :goto_e
    invoke-virtual {v7}, Lic/a;->e()Lic/a;

    move-result-object v6

    invoke-virtual {v6}, Lic/a;->b()Lic/c;

    move-result-object v8

    invoke-virtual {v8, v7}, Lic/c;->b(Lic/a;)Z

    move-result v8

    if-eqz v8, :cond_16

    iget-object v8, v7, Lic/a;->b:Lic/c;

    invoke-virtual {v6}, Lic/a;->b()Lic/c;

    move-result-object v6

    invoke-virtual {v7}, Lic/a;->b()Lic/c;

    move-result-object v9

    iget-object v8, v8, Lic/c;->a:Lpb/a;

    iget-object v6, v6, Lic/c;->a:Lpb/a;

    iget-object v9, v9, Lic/c;->a:Lpb/a;

    iget-wide v13, v8, Lpb/a;->l:D

    move-wide/from16 v19, v13

    iget-wide v12, v11, Lpb/a;->l:D

    sub-double v14, v19, v12

    move-object v10, v2

    move/from16 p0, v3

    iget-wide v2, v8, Lpb/a;->m:D

    move-wide/from16 v19, v2

    iget-wide v2, v11, Lpb/a;->m:D

    sub-double v19, v19, v2

    move-wide/from16 v23, v2

    iget-wide v2, v6, Lpb/a;->l:D

    sub-double/2addr v2, v12

    move-wide/from16 v25, v2

    iget-wide v2, v6, Lpb/a;->m:D

    sub-double v2, v2, v23

    move-wide/from16 v27, v2

    iget-wide v2, v9, Lpb/a;->l:D

    sub-double/2addr v2, v12

    iget-wide v8, v9, Lpb/a;->m:D

    sub-double v8, v8, v23

    mul-double v12, v14, v27

    mul-double v23, v25, v19

    sub-double v12, v12, v23

    mul-double v23, v25, v8

    mul-double v29, v2, v27

    sub-double v23, v23, v29

    mul-double v29, v2, v19

    mul-double v31, v14, v8

    sub-double v29, v29, v31

    mul-double/2addr v14, v14

    mul-double v19, v19, v19

    add-double v19, v19, v14

    mul-double v14, v25, v25

    mul-double v25, v27, v27

    add-double v25, v25, v14

    mul-double/2addr v2, v2

    mul-double/2addr v8, v8

    add-double/2addr v8, v2

    mul-double v19, v19, v23

    mul-double v25, v25, v29

    add-double v25, v25, v19

    mul-double/2addr v8, v12

    add-double v8, v8, v25

    cmpl-double v2, v8, v17

    if-lez v2, :cond_17

    move/from16 v2, v21

    goto :goto_f

    :cond_16
    move-object v10, v2

    move/from16 p0, v3

    :cond_17
    move/from16 v2, v16

    :goto_f
    invoke-virtual {v7}, Lic/a;->b()Lic/c;

    move-result-object v3

    invoke-virtual {v1, v3}, Lic/b;->a(Lic/c;)Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, v7, Lic/a;->b:Lic/c;

    iget-object v3, v3, Lic/c;->a:Lpb/a;

    invoke-virtual {v7}, Lic/a;->e()Lic/a;

    move-result-object v6

    invoke-virtual {v6}, Lic/a;->b()Lic/c;

    move-result-object v6

    iget-object v6, v6, Lic/c;->a:Lpb/a;

    iget-object v8, v7, Lic/a;->c:Lic/a;

    invoke-virtual {v8}, Lic/a;->b()Lic/c;

    move-result-object v8

    iget-object v8, v8, Lic/c;->a:Lpb/a;

    invoke-static {v6, v8, v3}, Lb6/g;->v(Lpb/a;Lpb/a;Lpb/a;)I

    move-result v3

    move/from16 v6, v21

    if-ne v6, v3, :cond_18

    move v9, v6

    goto :goto_10

    :cond_18
    move v9, v6

    goto :goto_11

    :cond_19
    iget-object v3, v7, Lic/a;->b:Lic/c;

    invoke-virtual {v1, v3}, Lic/b;->a(Lic/c;)Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, v7, Lic/a;->a:Lic/a;

    iget-object v3, v3, Lic/a;->a:Lic/a;

    iget-object v6, v3, Lic/a;->b:Lic/c;

    iget-object v6, v6, Lic/c;->a:Lpb/a;

    invoke-virtual {v3}, Lic/a;->e()Lic/a;

    move-result-object v8

    invoke-virtual {v8}, Lic/a;->b()Lic/c;

    move-result-object v8

    iget-object v8, v8, Lic/c;->a:Lpb/a;

    iget-object v3, v3, Lic/a;->c:Lic/a;

    invoke-virtual {v3}, Lic/a;->b()Lic/c;

    move-result-object v3

    iget-object v3, v3, Lic/c;->a:Lpb/a;

    invoke-static {v8, v3, v6}, Lb6/g;->v(Lpb/a;Lpb/a;Lpb/a;)I

    move-result v3

    const/4 v9, 0x1

    if-ne v9, v3, :cond_1b

    :goto_10
    move v2, v9

    goto :goto_12

    :cond_1a
    const/4 v9, 0x1

    :cond_1b
    :goto_11
    iget-object v3, v7, Lic/a;->c:Lic/a;

    invoke-virtual {v3}, Lic/a;->b()Lic/c;

    move-result-object v3

    invoke-virtual {v7}, Lic/a;->e()Lic/a;

    move-result-object v6

    invoke-virtual {v6}, Lic/a;->b()Lic/c;

    move-result-object v6

    if-ne v3, v4, :cond_1c

    invoke-virtual {v1, v6}, Lic/b;->a(Lic/c;)Z

    move-result v8

    if-nez v8, :cond_1d

    :cond_1c
    if-ne v6, v4, :cond_1e

    invoke-virtual {v1, v3}, Lic/b;->a(Lic/c;)Z

    move-result v3

    if-eqz v3, :cond_1e

    :cond_1d
    move/from16 v2, v16

    :cond_1e
    :goto_12
    if-eqz v2, :cond_1f

    invoke-virtual {v7}, Lic/a;->e()Lic/a;

    move-result-object v2

    iget-object v3, v7, Lic/a;->a:Lic/a;

    iget-object v3, v3, Lic/a;->a:Lic/a;

    invoke-virtual {v3}, Lic/a;->e()Lic/a;

    move-result-object v3

    invoke-static {v7, v2}, Lic/a;->f(Lic/a;Lic/a;)V

    iget-object v6, v7, Lic/a;->a:Lic/a;

    iget-object v6, v6, Lic/a;->a:Lic/a;

    invoke-static {v6, v3}, Lic/a;->f(Lic/a;Lic/a;)V

    invoke-virtual {v2}, Lic/a;->c()Lic/a;

    move-result-object v6

    invoke-static {v7, v6}, Lic/a;->f(Lic/a;Lic/a;)V

    iget-object v6, v7, Lic/a;->a:Lic/a;

    iget-object v6, v6, Lic/a;->a:Lic/a;

    invoke-virtual {v3}, Lic/a;->c()Lic/a;

    move-result-object v8

    invoke-static {v6, v8}, Lic/a;->f(Lic/a;Lic/a;)V

    invoke-virtual {v2}, Lic/a;->b()Lic/c;

    move-result-object v2

    iput-object v2, v7, Lic/a;->b:Lic/c;

    invoke-virtual {v3}, Lic/a;->b()Lic/c;

    move-result-object v2

    iget-object v3, v7, Lic/a;->a:Lic/a;

    iget-object v3, v3, Lic/a;->a:Lic/a;

    iput-object v2, v3, Lic/a;->b:Lic/c;

    invoke-virtual {v7}, Lic/a;->e()Lic/a;

    move-result-object v7

    :goto_13
    const/4 v12, 0x0

    move/from16 v3, p0

    move/from16 v21, v9

    move-object v2, v10

    goto/16 :goto_e

    :cond_1f
    iget-object v2, v7, Lic/a;->c:Lic/a;

    if-ne v2, v5, :cond_20

    :goto_14
    move/from16 v3, p0

    move/from16 v21, v9

    move-object v2, v10

    goto/16 :goto_8

    :cond_20
    iget-object v2, v2, Lic/a;->c:Lic/a;

    iget-object v2, v2, Lic/a;->a:Lic/a;

    iget-object v7, v2, Lic/a;->a:Lic/a;

    goto :goto_13

    :cond_21
    new-instance v0, Landroidx/fragment/app/i0;

    new-instance v1, Lpb/p;

    iget-object v2, v7, Lic/a;->b:Lic/c;

    iget-object v2, v2, Lic/c;->a:Lpb/a;

    invoke-virtual {v7}, Lic/a;->b()Lic/c;

    move-result-object v3

    iget-object v3, v3, Lic/c;->a:Lpb/a;

    invoke-direct {v1, v2, v3}, Lpb/p;-><init>(Lpb/a;Lpb/a;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Locate failed to converge (at edge: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ").  Possible causes include invalid Subdivision topology or very close sites"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    :goto_15
    return-void
.end method
