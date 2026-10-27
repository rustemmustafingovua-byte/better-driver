.class public final Lad/w;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Li9/c;Ly8/c;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lad/w;->l:I

    .line 1
    check-cast p1, La9/i;

    iput-object p1, p0, Lad/w;->n:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ly8/c;I)V
    .locals 0

    .line 2
    iput p3, p0, Lad/w;->l:I

    iput-object p1, p0, Lad/w;->n:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Lw/p;ILy8/c;)V
    .locals 1

    const/16 v0, 0x16

    iput v0, p0, Lad/w;->l:I

    .line 3
    iput-object p1, p0, Lad/w;->n:Ljava/lang/Object;

    iput p2, p0, Lad/w;->m:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method private final f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p0

    sget-object v1, Lu8/s;->l:Lu8/s;

    sget-object v2, Lz8/a;->l:Lz8/a;

    iget v3, v0, Lad/w;->m:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v4, :cond_0

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v3, v0, Lad/w;->n:Ljava/lang/Object;

    check-cast v3, Ldd/e;

    iget-object v3, v3, Ldd/e;->a:Lsc/o;

    iput v4, v0, Lad/w;->m:I

    invoke-virtual {v3, v0}, Lsc/o;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_2

    return-object v2

    :cond_2
    :goto_0
    check-cast v3, Ljava/lang/String;

    iget-object v2, v0, Lad/w;->n:Ljava/lang/Object;

    check-cast v2, Ldd/e;

    sget-object v5, Ldd/e;->Companion:Ldd/d;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "text"

    invoke-static {v3, v5}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lia/c;->d:Lia/b;

    invoke-virtual {v5, v3}, Lia/c;->c(Ljava/lang/String;)Lia/l;

    move-result-object v5

    instance-of v6, v5, Lia/y;

    if-eqz v6, :cond_3

    check-cast v5, Lia/y;

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-nez v5, :cond_5

    :goto_2
    move-object v13, v1

    :cond_4
    move/from16 v17, v11

    goto/16 :goto_6

    :cond_5
    const-string v13, "areas"

    invoke-virtual {v5, v13}, Lia/y;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v13, v5, Lia/e;

    if-eqz v13, :cond_6

    check-cast v5, Lia/e;

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_7

    goto :goto_2

    :cond_7
    iget-object v5, v5, Lia/e;->l:Ljava/util/List;

    new-instance v13, Ljava/util/HashMap;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    mul-int/2addr v14, v11

    invoke-direct {v13, v14}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lia/l;

    invoke-static {v14}, Lia/m;->d(Lia/l;)Lia/e;

    move-result-object v14

    iget-object v15, v14, Lia/e;->l:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    const/4 v7, 0x7

    if-lt v15, v7, :cond_8

    invoke-virtual {v14, v12}, Lia/e;->a(I)Lia/l;

    move-result-object v7

    invoke-static {v7}, Lia/m;->f(Lia/l;)Lia/d0;

    move-result-object v7

    invoke-static {v7}, Lia/m;->c(Lia/d0;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v14, v4}, Lia/e;->a(I)Lia/l;

    move-result-object v15

    invoke-static {v15}, Lia/m;->f(Lia/l;)Lia/d0;

    move-result-object v15

    invoke-static {v15}, Lia/m;->c(Lia/d0;)Ljava/lang/Integer;

    move-result-object v15

    if-eqz v15, :cond_8

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v11}, Lia/e;->a(I)Lia/l;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lia/m;->f(Lia/l;)Lia/d0;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lia/m;->c(Lia/d0;)Ljava/lang/Integer;

    move-result-object v16

    if-eqz v16, :cond_8

    move/from16 v17, v11

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v14, v10}, Lia/e;->a(I)Lia/l;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lia/m;->f(Lia/l;)Lia/d0;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lia/d0;->a()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v16

    if-eqz v16, :cond_a

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    invoke-virtual {v14, v9}, Lia/e;->a(I)Lia/l;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lia/m;->f(Lia/l;)Lia/d0;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lia/d0;->a()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v16

    if-eqz v16, :cond_a

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v21

    invoke-virtual {v14, v8}, Lia/e;->a(I)Lia/l;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lia/m;->f(Lia/l;)Lia/d0;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lia/d0;->a()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v16

    if-eqz v16, :cond_a

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    invoke-virtual {v14, v6}, Lia/e;->a(I)Lia/l;

    move-result-object v14

    invoke-static {v14}, Lia/m;->f(Lia/l;)Lia/d0;

    move-result-object v14

    invoke-static {v14}, Lia/m;->c(Lia/d0;)Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_a

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v25

    invoke-static {v7, v15, v11}, Ldd/d;->a(III)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    new-instance v18, Ldd/c;

    if-eqz v11, :cond_9

    move/from16 v26, v4

    goto :goto_5

    :cond_9
    move/from16 v26, v12

    :goto_5
    sget-object v27, Ldd/j;->m:Ldd/j;

    invoke-direct/range {v18 .. v27}, Ldd/c;-><init>(DDDIZLdd/j;)V

    move-object/from16 v11, v18

    invoke-virtual {v13, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    move/from16 v11, v17

    goto/16 :goto_4

    :goto_6
    iput-object v13, v2, Ldd/e;->b:Ljava/lang/Object;

    iget-object v2, v0, Lad/w;->n:Ljava/lang/Object;

    check-cast v2, Ldd/e;

    sget-object v5, Ldd/e;->Companion:Ldd/d;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lia/c;->d:Lia/b;

    invoke-virtual {v5, v3}, Lia/c;->c(Ljava/lang/String;)Lia/l;

    move-result-object v5

    instance-of v7, v5, Lia/y;

    if-eqz v7, :cond_b

    check-cast v5, Lia/y;

    goto :goto_7

    :cond_b
    const/4 v5, 0x0

    :goto_7
    if-nez v5, :cond_c

    new-instance v5, Lg5/m;

    const/4 v6, 0x4

    invoke-direct {v5, v1, v1, v1, v6}, Lg5/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_b

    :cond_c
    const-string v7, "sites"

    invoke-virtual {v5, v7}, Lia/y;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v7, v5, Lia/e;

    if-eqz v7, :cond_d

    check-cast v5, Lia/e;

    goto :goto_8

    :cond_d
    const/4 v5, 0x0

    :goto_8
    if-nez v5, :cond_e

    new-instance v5, Lg5/m;

    const/4 v6, 0x4

    invoke-direct {v5, v1, v1, v1, v6}, Lg5/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_b

    :cond_e
    iget-object v5, v5, Lia/e;->l:Ljava/util/List;

    new-instance v7, Ljava/util/HashMap;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    invoke-direct {v7, v11}, Ljava/util/HashMap;-><init>(I)V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_f
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lia/l;

    invoke-static {v13}, Lia/m;->d(Lia/l;)Lia/e;

    move-result-object v13

    iget-object v14, v13, Lia/e;->l:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-lt v14, v6, :cond_f

    invoke-virtual {v13, v12}, Lia/e;->a(I)Lia/l;

    move-result-object v14

    invoke-static {v14}, Lia/m;->f(Lia/l;)Lia/d0;

    move-result-object v14

    invoke-static {v14}, Lia/m;->c(Lia/d0;)Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_f

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v13, v4}, Lia/e;->a(I)Lia/l;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lia/m;->f(Lia/l;)Lia/d0;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lia/m;->c(Lia/d0;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_12

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v12, v17

    invoke-virtual {v13, v12}, Lia/e;->a(I)Lia/l;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lia/m;->f(Lia/l;)Lia/d0;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lia/d0;->a()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v17

    if-eqz v17, :cond_11

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v21

    invoke-virtual {v13, v10}, Lia/e;->a(I)Lia/l;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lia/m;->f(Lia/l;)Lia/d0;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lia/d0;->a()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v17

    if-eqz v17, :cond_11

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    invoke-virtual {v13, v9}, Lia/e;->a(I)Lia/l;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lia/m;->f(Lia/l;)Lia/d0;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lia/d0;->a()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v17

    if-eqz v17, :cond_11

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v25

    invoke-virtual {v13, v8}, Lia/e;->a(I)Lia/l;

    move-result-object v13

    invoke-static {v13}, Lia/m;->f(Lia/l;)Lia/d0;

    move-result-object v13

    invoke-static {v13}, Lia/m;->c(Lia/d0;)Ljava/lang/Integer;

    move-result-object v13

    if-eqz v13, :cond_11

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v27

    int-to-long v8, v15

    const/16 v15, 0x20

    shl-long/2addr v8, v15

    int-to-long v12, v4

    or-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v20, Ldd/c;

    const/16 v28, 0x1

    sget-object v29, Ldd/j;->l:Ldd/j;

    invoke-direct/range {v20 .. v29}, Ldd/c;-><init>(DDDIZLdd/j;)V

    move-object/from16 v8, v20

    invoke-virtual {v7, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_10

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    const/4 v6, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v12, 0x0

    const/16 v17, 0x2

    goto/16 :goto_9

    :cond_11
    move/from16 v17, v12

    const/4 v4, 0x1

    const/4 v6, 0x6

    const/4 v12, 0x0

    goto/16 :goto_9

    :cond_12
    const/4 v6, 0x6

    goto/16 :goto_9

    :cond_13
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-static {v5}, Lu8/v;->J(I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-static {v6}, Lu8/m;->v0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lu8/m;->A0(Ljava/util/List;)[I

    move-result-object v6

    invoke-interface {v4, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_14
    new-instance v5, Lg5/m;

    const/4 v6, 0x4

    invoke-direct {v5, v7, v4, v7, v6}, Lg5/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    :goto_b
    iput-object v5, v2, Ldd/e;->c:Lg5/m;

    iget-object v2, v0, Lad/w;->n:Ljava/lang/Object;

    check-cast v2, Ldd/e;

    sget-object v4, Ldd/e;->Companion:Ldd/d;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lia/c;->d:Lia/b;

    invoke-virtual {v4, v3}, Lia/c;->c(Ljava/lang/String;)Lia/l;

    move-result-object v4

    instance-of v5, v4, Lia/y;

    if-eqz v5, :cond_15

    check-cast v4, Lia/y;

    goto :goto_c

    :cond_15
    const/4 v4, 0x0

    :goto_c
    if-nez v4, :cond_16

    goto/16 :goto_10

    :cond_16
    const-string v5, "neighborKm"

    invoke-virtual {v4, v5}, Lia/y;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lia/y;

    if-eqz v5, :cond_17

    check-cast v4, Lia/y;

    goto :goto_d

    :cond_17
    const/4 v4, 0x0

    :goto_d
    if-nez v4, :cond_18

    goto :goto_10

    :cond_18
    iget-object v1, v4, Lia/y;->l:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lia/l;

    invoke-static {v6}, Lr9/r;->U(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_1a

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-static {v5}, Lia/m;->f(Lia/l;)Lia/d0;

    move-result-object v5

    invoke-virtual {v5}, Lia/d0;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    if-eqz v5, :cond_1a

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    new-instance v7, Lt8/j;

    invoke-direct {v7, v5, v6}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_f

    :cond_1a
    const/4 v7, 0x0

    :goto_f
    if-eqz v7, :cond_19

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1b
    invoke-static {v4}, Lu8/v;->M(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v1

    :goto_10
    iput-object v1, v2, Ldd/e;->d:Ljava/util/Map;

    const-string v1, "\"date\"\\s*:\\s*\"([0-9-]{10})\""

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v2, "compile(...)"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x12c

    invoke-static {v2, v3}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v3, "matcher(...)"

    invoke-static {v1, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ly4/s;->b(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lr9/g;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lr9/g;->a()Ljava/util/List;

    move-result-object v1

    check-cast v1, Lr9/e;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_1c
    iget-object v1, v0, Lad/w;->n:Ljava/lang/Object;

    check-cast v1, Ldd/e;

    iget-object v2, v1, Ldd/e;->e:Lx9/l0;

    iget-object v1, v1, Ldd/e;->b:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v0, v0, Lad/w;->n:Ljava/lang/Object;

    check-cast v0, Ldd/e;

    iget-object v0, v0, Ldd/e;->c:Lg5/m;

    iget-object v0, v0, Lg5/m;->m:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method

.method private final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast v0, Lm0/b1;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, p0, Lad/w;->m:I

    sget-object v3, Lt8/z;->a:Lt8/z;

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    return-object v3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lm0/b1;->d()Lt8/j;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v2, p1, Lt8/j;->l:Ljava/lang/Object;

    check-cast v2, Lp2/g;

    iget-object p1, p1, Lt8/j;->m:Ljava/lang/Object;

    check-cast p1, Lp2/l0;

    iget-wide v5, p1, Lp2/l0;->a:J

    iget-object p1, v0, Lm0/b1;->w:Lm0/u;

    if-eqz p1, :cond_3

    iput v4, p0, Lad/w;->m:I

    invoke-virtual {p1, v2, v5, v6, p0}, Lm0/u;->c(Ljava/lang/CharSequence;JLa9/i;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v3

    :goto_0
    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object v3
.end method

.method private final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lad/w;->m:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    new-instance p1, La6/k;

    invoke-direct {p1}, La6/k;-><init>()V

    iget-object v1, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast v1, Lo0/g5;

    iget-object v3, v1, Lo0/g5;->z:Ls/i;

    iget-object v3, v3, Ls/i;->a:Lx9/b0;

    new-instance v4, Lb0/s1;

    const/4 v5, 0x4

    invoke-direct {v4, v5, p1, v1}, Lb0/s1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput v2, p0, Lad/w;->m:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, p0}, Lx9/b0;->k(Lx9/b0;Lx9/h;Ly8/c;)V

    return-object v0
.end method

.method private final l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, p0, Lad/w;->m:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iput v3, p0, Lad/w;->m:I

    const-string p1, "link"

    invoke-static {v0, p1, p0}, Lod/m;->R(Landroid/content/Context;Ljava/lang/String;La9/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_3
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method private final m(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast v0, Lp/h0;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, p0, Lad/w;->m:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p1, Lf2/l1;->s:Lr0/s2;

    invoke-static {v0, p1}, Le2/l;->h(Le2/i;Lr0/m1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf2/p2;

    invoke-interface {p1}, Lf2/p2;->b()J

    move-result-wide v4

    iput v3, p0, Lad/w;->m:I

    invoke-static {v4, v5, p0}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    iget-object p0, v0, Lp/h0;->X:Li9/a;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    :cond_3
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method private final n(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lad/w;->m:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    new-instance v4, La6/k;

    invoke-direct {v4}, La6/k;-><init>()V

    new-instance v5, La6/k;

    invoke-direct {v5}, La6/k;-><init>()V

    new-instance v6, La6/k;

    invoke-direct {v6}, La6/k;-><init>()V

    iget-object p1, p0, Lad/w;->n:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Lp/i0;

    iget-object p1, v7, Lp/i0;->z:Ls/i;

    iget-object p1, p1, Ls/i;->a:Lx9/b0;

    new-instance v3, Lb0/s0;

    const/4 v8, 0x1

    invoke-direct/range {v3 .. v8}, Lb0/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput v2, p0, Lad/w;->m:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v3, p0}, Lx9/b0;->k(Lx9/b0;Lx9/h;Ly8/c;)V

    return-object v0
.end method

.method private final p(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lad/w;->m:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast p1, Lp/p0;

    iput v2, p0, Lad/w;->m:I

    const/4 v1, 0x0

    invoke-static {p1, v1, p0}, Lr5/h1;->b(Le2/j;Li9/a;La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method private final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast v0, Lp/h1;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, p0, Lad/w;->m:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    iget-object p1, v0, Lp/h1;->J:Lw9/e;

    if-eqz p1, :cond_4

    iput v4, p0, Lad/w;->m:I

    invoke-virtual {p1, p0}, Lw9/e;->h(Ly8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p1, v0, Lp/h1;->E:Lm2/j;

    if-eqz p1, :cond_3

    new-instance p1, Ln/p1;

    const/16 v2, 0x19

    invoke-direct {p1, v2}, Ln/p1;-><init>(I)V

    iput v3, p0, Lad/w;->m:I

    invoke-static {p1, p0}, Lr0/r;->J(Li9/c;La9/i;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    iget-object p1, v0, Lp/h1;->E:Lm2/j;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lm2/j;->m:Ljava/lang/Object;

    check-cast p1, Landroid/widget/Magnifier;

    invoke-virtual {p1}, Landroid/widget/Magnifier;->update()V

    goto :goto_0
.end method

.method private final r(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast v0, Lp/m1;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, p0, Lad/w;->m:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    new-instance p1, Lod/x4;

    const/4 v2, 0x6

    invoke-direct {p1, v2, v0}, Lod/x4;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Lr0/r;->F(Li9/a;)Lc5/n;

    move-result-object p1

    new-instance v2, Landroidx/lifecycle/m0;

    const/4 v4, 0x0

    const/16 v5, 0xd

    invoke-direct {v2, v0, v4, v5}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput v3, p0, Lad/w;->m:I

    invoke-static {p1, v2, p0}, Lx9/c0;->f(Lx9/g;Li9/e;La9/i;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method private final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lad/w;->m:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast p1, Lgc/f;

    iget-object p1, p1, Lgc/f;->f:Ljava/lang/Object;

    check-cast p1, Lw9/e;

    iput v2, p0, Lad/w;->m:I

    new-instance v1, Lp/b;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, p1, v2, v3}, Lp/b;-><init>(Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v1, p0}, Lu9/v;->g(Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method

.method private final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lad/w;->m:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p1, Lsc/i0;->R:Lx9/l0;

    new-instance v1, Lf2/y2;

    iget-object v3, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast v3, Landroid/app/Application;

    const/4 v4, 0x4

    invoke-direct {v1, v4, v3}, Lf2/y2;-><init>(ILjava/lang/Object;)V

    iput v2, p0, Lad/w;->m:I

    invoke-virtual {p1, v1, p0}, Lx9/l0;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    return-object v0
.end method

.method private final u(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lad/w;->m:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->p()Lid/c1;

    move-result-object p1

    iget-object v1, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iput v2, p0, Lad/w;->m:I

    invoke-virtual {p1, v1, p0}, Lid/c1;->i(Ljava/util/List;La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method private final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lad/w;->m:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast p1, Lvc/f;

    iput v2, p0, Lad/w;->m:I

    invoke-static {p1, p0}, Lvc/f;->a(Lvc/f;La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method private final w(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast p1, Lw/p;

    iget p0, p0, Lad/w;->m:I

    iget-object v0, p1, Lw/p;->e:Lf8/p2;

    iget-object v1, v0, Lf8/p2;->b:Ljava/lang/Object;

    check-cast v1, Lr0/b1;

    invoke-virtual {v1}, Lr0/b1;->g()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, p0, :cond_0

    iget-object v1, v0, Lf8/p2;->c:Ljava/lang/Object;

    check-cast v1, Lr0/b1;

    invoke-virtual {v1}, Lr0/b1;->g()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p1, Lw/p;->n:Lx/s;

    invoke-virtual {v1}, Lx/s;->c()V

    iput-object v2, v1, Lx/s;->b:Ld1/c0;

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lf8/p2;->h(II)V

    iput-object v2, v0, Lf8/p2;->d:Ljava/lang/Object;

    iget-object p0, p1, Lw/p;->k:Le2/g0;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Le2/g0;->k()V

    :cond_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method private final x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lad/w;->m:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast p1, Lg5/c;

    iget-object p1, p1, Lg5/c;->n:Ljava/lang/Object;

    check-cast p1, Ln/k;

    new-instance v1, Ljava/lang/Float;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Ljava/lang/Float;-><init>(F)V

    new-instance v4, Ljava/lang/Float;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v4, v5}, Ljava/lang/Float;-><init>(F)V

    const/high16 v5, 0x43c80000    # 400.0f

    invoke-static {v3, v5, v4, v2}, Ln/d;->m(FFLjava/lang/Object;I)Ln/r0;

    move-result-object v3

    iput v2, p0, Lad/w;->m:I

    new-instance v2, Lgd/e;

    const/16 v4, 0xe

    invoke-direct {v2, v4}, Lgd/e;-><init>(I)V

    invoke-static {p1, v1, v3, v2, p0}, Ln/d;->f(Ln/k;Ljava/lang/Float;Ln/x;Li9/c;La9/i;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method private final y(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lad/w;->m:I

    sget-object v2, Lt8/z;->a:Lt8/z;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast p1, Lx9/m;

    iput v3, p0, Lad/w;->m:I

    sget-object v1, Ly9/s;->l:Ly9/s;

    invoke-virtual {p1, v1, p0}, Lx9/m;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v2

    :goto_0
    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    return-object v2
.end method

.method private final z(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast v0, Ly1/k0;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, p0, Lad/w;->m:I

    const/4 v3, 0x2

    if-eqz v2, :cond_2

    const/4 p0, 0x1

    if-eq v2, p0, :cond_1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, v0, Ly1/k0;->B:Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    iput v3, p0, Lad/w;->m:I

    invoke-interface {p1, v0, p0}, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;->invoke(Ly1/x;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    iget v0, p0, Lad/w;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lad/w;

    iget-object p0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast p0, Lua/nav/geo/c;

    const/16 v0, 0x1a

    invoke-direct {p1, p0, p2, v0}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Lad/w;

    iget-object p0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast p0, Ly1/k0;

    const/16 v0, 0x19

    invoke-direct {p1, p0, p2, v0}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_1
    new-instance p1, Lad/w;

    iget-object p0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast p0, Lx9/m;

    const/16 v0, 0x18

    invoke-direct {p1, p0, p2, v0}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_2
    new-instance p1, Lad/w;

    iget-object p0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast p0, Lg5/c;

    const/16 v0, 0x17

    invoke-direct {p1, p0, p2, v0}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_3
    new-instance p1, Lad/w;

    iget-object v0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast v0, Lw/p;

    iget p0, p0, Lad/w;->m:I

    invoke-direct {p1, v0, p0, p2}, Lad/w;-><init>(Lw/p;ILy8/c;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lad/w;

    iget-object p0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast p0, Lvc/f;

    const/16 v0, 0x15

    invoke-direct {p1, p0, p2, v0}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_5
    new-instance p1, Lad/w;

    iget-object p0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    const/16 v0, 0x14

    invoke-direct {p1, p0, p2, v0}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_6
    new-instance p1, Lad/w;

    iget-object p0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast p0, Landroid/app/Application;

    const/16 v0, 0x13

    invoke-direct {p1, p0, p2, v0}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_7
    new-instance p1, Lad/w;

    iget-object p0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast p0, Lgc/f;

    const/16 v0, 0x12

    invoke-direct {p1, p0, p2, v0}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_8
    new-instance p1, Lad/w;

    iget-object p0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast p0, Lp/m1;

    const/16 v0, 0x11

    invoke-direct {p1, p0, p2, v0}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_9
    new-instance p1, Lad/w;

    iget-object p0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast p0, Lp/h1;

    const/16 v0, 0x10

    invoke-direct {p1, p0, p2, v0}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_a
    new-instance p1, Lad/w;

    iget-object p0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast p0, Lp/p0;

    const/16 v0, 0xf

    invoke-direct {p1, p0, p2, v0}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_b
    new-instance p1, Lad/w;

    iget-object p0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast p0, Lp/i0;

    const/16 v0, 0xe

    invoke-direct {p1, p0, p2, v0}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_c
    new-instance p1, Lad/w;

    iget-object p0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast p0, Lp/h0;

    const/16 v0, 0xd

    invoke-direct {p1, p0, p2, v0}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_d
    new-instance p1, Lad/w;

    iget-object p0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    const/16 v0, 0xc

    invoke-direct {p1, p0, p2, v0}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_e
    new-instance p1, Lad/w;

    iget-object p0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast p0, Lo0/g5;

    const/16 v0, 0xb

    invoke-direct {p1, p0, p2, v0}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_f
    new-instance p1, Lad/w;

    iget-object p0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast p0, La9/i;

    invoke-direct {p1, p0, p2}, Lad/w;-><init>(Li9/c;Ly8/c;)V

    return-object p1

    :pswitch_10
    new-instance v0, Lad/w;

    iget-object p0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast p0, Lm0/b1;

    const/16 v1, 0x9

    invoke-direct {v0, p0, p2, v1}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    check-cast p1, Ll1/b;

    return-object v0

    :pswitch_11
    new-instance p1, Lad/w;

    iget-object p0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast p0, Lkd/j;

    const/16 v0, 0x8

    invoke-direct {p1, p0, p2, v0}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_12
    new-instance p1, Lad/w;

    iget-object p0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast p0, Ldd/i;

    const/4 v0, 0x7

    invoke-direct {p1, p0, p2, v0}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_13
    new-instance p1, Lad/w;

    iget-object p0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast p0, Ldd/e;

    const/4 v0, 0x6

    invoke-direct {p1, p0, p2, v0}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_14
    new-instance p1, Lad/w;

    iget-object p0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast p0, Lbd/l;

    const/4 v0, 0x5

    invoke-direct {p1, p0, p2, v0}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_15
    new-instance p1, Lad/w;

    iget-object p0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast p0, Lb0/t1;

    const/4 v0, 0x4

    invoke-direct {p1, p0, p2, v0}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_16
    new-instance p1, Lad/w;

    iget-object p0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast p0, Lk0/h;

    const/4 v0, 0x3

    invoke-direct {p1, p0, p2, v0}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_17
    new-instance p1, Lad/w;

    iget-object p0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast p0, Lua/nav/guidance/NavService;

    const/4 v0, 0x2

    invoke-direct {p1, p0, p2, v0}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_18
    new-instance p1, Lad/w;

    iget-object p0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast p0, Lad/j0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_19
    new-instance p1, Lad/w;

    iget-object p0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast p0, Lad/x;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lad/w;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/w;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/w;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/w;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/w;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/w;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/w;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/w;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/w;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lr/s1;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/w;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/w;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_4
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/w;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/w;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/w;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/w;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/w;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/w;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0

    :pswitch_7
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/w;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/w;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/w;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/w;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/w;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/w;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0

    :pswitch_a
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/w;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/w;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/w;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/w;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/w;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/w;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/w;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/w;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/w;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/w;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/w;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/w;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p1, Ll1/b;

    iget-wide v0, p1, Ll1/b;->a:J

    check-cast p2, Ly8/c;

    new-instance p1, Lad/w;

    iget-object p0, p0, Lad/w;->n:Ljava/lang/Object;

    check-cast p0, Lm0/b1;

    const/16 v0, 0x9

    invoke-direct {p1, p0, p2, v0}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    invoke-virtual {p1, p0}, Lad/w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/w;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/w;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/w;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/w;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/w;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/w;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/w;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/w;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/w;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/w;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/w;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/w;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/w;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/w;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/w;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/w;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/w;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/w;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 72

    move-object/from16 v0, p0

    iget v1, v0, Lad/w;->l:I

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    const/4 v6, 0x1

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lad/w;->m:I

    if-eqz v2, :cond_1

    if-ne v2, v6, :cond_0

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v0, Lad/w;->n:Ljava/lang/Object;

    check-cast v2, Lua/nav/geo/c;

    iput v6, v0, Lad/w;->m:I

    invoke-virtual {v2, v0}, Lua/nav/geo/c;->g(La9/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_1
    return-object v1

    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lad/w;->z(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lad/w;->y(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-direct/range {p0 .. p1}, Lad/w;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-direct/range {p0 .. p1}, Lad/w;->w(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lad/w;->v(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lad/w;->u(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lad/w;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_7
    invoke-direct/range {p0 .. p1}, Lad/w;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_8
    invoke-direct/range {p0 .. p1}, Lad/w;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_9
    invoke-direct/range {p0 .. p1}, Lad/w;->q(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_a
    invoke-direct/range {p0 .. p1}, Lad/w;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_b
    invoke-direct/range {p0 .. p1}, Lad/w;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_c
    invoke-direct/range {p0 .. p1}, Lad/w;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_d
    invoke-direct/range {p0 .. p1}, Lad/w;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_e
    invoke-direct/range {p0 .. p1}, Lad/w;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_f
    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lad/w;->m:I

    if-eqz v2, :cond_4

    if-ne v2, v6, :cond_3

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v0, Lad/w;->n:Ljava/lang/Object;

    check-cast v2, La9/i;

    iput v6, v0, Lad/w;->m:I

    invoke-interface {v2, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_3
    return-object v1

    :pswitch_10
    invoke-direct/range {p0 .. p1}, Lad/w;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_11
    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lad/w;->m:I

    if-eqz v2, :cond_7

    if-ne v2, v6, :cond_6

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v0, Lad/w;->n:Ljava/lang/Object;

    check-cast v2, Lkd/j;

    iput v6, v0, Lad/w;->m:I

    invoke-virtual {v2, v0}, Lkd/j;->d(La9/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_8

    goto :goto_5

    :cond_8
    :goto_4
    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_5
    return-object v1

    :pswitch_12
    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lad/w;->m:I

    if-eqz v2, :cond_a

    if-ne v2, v6, :cond_9

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_6

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v0, Lad/w;->n:Ljava/lang/Object;

    check-cast v2, Ldd/i;

    iput v6, v0, Lad/w;->m:I

    invoke-static {v2, v0}, Ldd/i;->a(Ldd/i;La9/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_b

    goto :goto_7

    :cond_b
    :goto_6
    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_7
    return-object v1

    :pswitch_13
    invoke-direct/range {p0 .. p1}, Lad/w;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_14
    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lad/w;->m:I

    if-eqz v2, :cond_d

    if-ne v2, v6, :cond_c

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_8

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v0, Lad/w;->n:Ljava/lang/Object;

    check-cast v2, Lbd/l;

    iget-object v2, v2, Lbd/l;->a:Lsc/t;

    iput v6, v0, Lad/w;->m:I

    invoke-virtual {v2, v0}, Lsc/t;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_e

    goto/16 :goto_a

    :cond_e
    :goto_8
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lbd/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iget-object v5, v0, Lad/w;->n:Ljava/lang/Object;

    check-cast v5, Lbd/l;

    new-instance v7, Lbd/e;

    invoke-direct {v7, v1}, Lbd/e;-><init>(Ljava/util/List;)V

    iput-object v7, v5, Lbd/l;->b:Lbd/e;

    iget-object v5, v0, Lad/w;->n:Ljava/lang/Object;

    check-cast v5, Lbd/l;

    invoke-static {v2}, Lbd/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lbd/l;->c:Ljava/lang/String;

    iget-object v2, v0, Lad/w;->n:Ljava/lang/Object;

    check-cast v2, Lbd/l;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_9

    :cond_f
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbd/j;

    iget-object v7, v7, Lbd/j;->c:Ljava/lang/String;

    const-string v8, "signal"

    invoke-static {v7, v8}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    move v3, v6

    :cond_11
    :goto_9
    iput-boolean v3, v2, Lbd/l;->d:Z

    iget-object v2, v0, Lad/w;->n:Ljava/lang/Object;

    check-cast v2, Lbd/l;

    iget-object v2, v2, Lbd/l;->e:Lx9/l0;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v4, v3}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, v0, Lad/w;->n:Ljava/lang/Object;

    check-cast v0, Lbd/l;

    iget-object v0, v0, Lbd/l;->f:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr v1, v6

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v4, v2}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_a
    return-object v1

    :pswitch_15
    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lad/w;->m:I

    if-eqz v2, :cond_13

    if-ne v2, v6, :cond_12

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object v1, Lt8/z;->a:Lt8/z;

    goto :goto_b

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v0, Lad/w;->n:Ljava/lang/Object;

    check-cast v2, Lb0/t1;

    iput v6, v0, Lad/w;->m:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lk/h0;

    invoke-direct {v4}, Lk/h0;-><init>()V

    iget-object v5, v2, Lb0/t1;->a:Ls/i;

    iget-object v5, v5, Ls/i;->a:Lx9/b0;

    new-instance v6, Lb0/s1;

    invoke-direct {v6, v3, v4, v2}, Lb0/s1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v0}, Lx9/b0;->k(Lx9/b0;Lx9/h;Ly8/c;)V

    :goto_b
    return-object v1

    :pswitch_16
    sget-object v1, Lt8/z;->a:Lt8/z;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v7, v0, Lad/w;->m:I

    if-eqz v7, :cond_15

    if-ne v7, v6, :cond_14

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_d

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v5, v0, Lad/w;->n:Ljava/lang/Object;

    check-cast v5, Lk0/h;

    iput v6, v0, Lad/w;->m:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lad/t0;

    invoke-direct {v6, v5, v4, v2}, Lad/t0;-><init>(Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v6, v0}, Lu9/v;->g(Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_16

    goto :goto_c

    :cond_16
    move-object v0, v1

    :goto_c
    if-ne v0, v3, :cond_17

    move-object v1, v3

    :cond_17
    :goto_d
    return-object v1

    :pswitch_17
    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lad/w;->m:I

    if-eqz v2, :cond_19

    if-ne v2, v6, :cond_18

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_e

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object v2, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->l()Lad/j0;

    move-result-object v2

    iget-object v2, v2, Lad/j0;->k:Lx9/l0;

    new-instance v5, Lad/t0;

    iget-object v7, v0, Lad/w;->n:Ljava/lang/Object;

    check-cast v7, Lua/nav/guidance/NavService;

    invoke-direct {v5, v7, v4, v3}, Lad/t0;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput v6, v0, Lad/w;->m:I

    invoke-static {v2, v5, v0}, Lx9/c0;->f(Lx9/g;Li9/e;La9/i;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_1a

    goto :goto_f

    :cond_1a
    :goto_e
    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_f
    return-object v1

    :pswitch_18
    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lad/w;->m:I

    if-eqz v2, :cond_1c

    if-ne v2, v6, :cond_1b

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_10

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v0, Lad/w;->n:Ljava/lang/Object;

    check-cast v2, Lad/j0;

    iput v6, v0, Lad/w;->m:I

    invoke-static {v2, v0}, Lad/j0;->a(Lad/j0;La9/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_1d

    goto :goto_11

    :cond_1d
    :goto_10
    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_11
    return-object v1

    :pswitch_19
    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v7, v0, Lad/w;->m:I

    if-eqz v7, :cond_1f

    if-ne v7, v6, :cond_1e

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v15, v1

    move v2, v6

    goto/16 :goto_62

    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    :goto_12
    iget-object v5, v0, Lad/w;->n:Ljava/lang/Object;

    move-object v7, v5

    check-cast v7, Lad/x;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iget-object v5, v7, Lad/x;->a:Ldd/k0;

    iget-object v5, v5, Ldd/k0;->j:Ldd/m;

    iget-object v5, v5, Ldd/m;->h:Lx9/l0;

    invoke-virtual {v5}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldd/n;

    iget-object v8, v7, Lad/x;->o:Li9/a;

    invoke-interface {v8}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const-wide/high16 v16, 0x403e000000000000L    # 30.0

    if-nez v8, :cond_24

    iget-object v8, v5, Ldd/n;->c:Ldd/l0;

    if-eqz v8, :cond_24

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    iget-wide v13, v8, Ldd/l0;->c:J

    move-object/from16 p1, v5

    iget-wide v4, v7, Lad/x;->m:J

    cmp-long v4, v13, v4

    if-eqz v4, :cond_25

    iput-wide v13, v7, Lad/x;->m:J

    iget-object v4, v7, Lad/x;->d:Lad/r;

    iget-wide v9, v8, Ldd/l0;->d:D

    iget-wide v2, v8, Ldd/l0;->e:D

    iget-object v5, v8, Ldd/l0;->g:Ljava/lang/Float;

    iget-object v15, v8, Ldd/l0;->h:Ljava/lang/Float;

    iget-object v8, v8, Ldd/l0;->i:Ljava/lang/Float;

    iput-wide v13, v4, Lad/r;->g:J

    iput-wide v9, v4, Lad/r;->a:D

    iput-wide v2, v4, Lad/r;->b:D

    iput-wide v13, v4, Lad/r;->c:J

    if-eqz v5, :cond_20

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    iput-object v9, v4, Lad/r;->h:Ljava/lang/Double;

    iput-wide v2, v4, Lad/r;->f:D

    :cond_20
    if-eqz v5, :cond_21

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    cmpl-double v2, v2, v18

    if-ltz v2, :cond_21

    if-eqz v15, :cond_21

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, v4, Lad/r;->d:D

    iput-boolean v6, v4, Lad/r;->e:Z

    iput-wide v13, v4, Lad/r;->i:J

    iget-object v2, v4, Lad/r;->t:Lad/i;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v9, v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v10}, Lad/i;->e(D)D

    move-result-wide v13

    iput-wide v13, v2, Lad/i;->a:D

    iget-wide v13, v2, Lad/i;->e:D

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_21

    iget-wide v13, v2, Lad/i;->e:D

    invoke-static {v13, v14, v9, v10}, Lad/i;->a(DD)D

    move-result-wide v9

    const-wide v13, 0x3fb999999999999aL    # 0.1

    invoke-virtual {v2, v9, v10, v13, v14}, Lad/i;->d(DD)V

    :cond_21
    if-eqz v8, :cond_22

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_13

    :cond_22
    const/high16 v2, 0x41700000    # 15.0f

    :goto_13
    float-to-double v2, v2

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    cmpl-double v5, v2, v16

    if-lez v5, :cond_23

    move-wide/from16 v2, v16

    :cond_23
    iput-wide v2, v4, Lad/r;->j:D

    const-wide/16 v2, 0x0

    iput-wide v2, v4, Lad/r;->k:D

    iget-object v2, v4, Lad/r;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v4, Lad/r;->p:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v4, Lad/r;->q:Lad/f1;

    iget-object v2, v2, Lad/f1;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    iput-wide v2, v4, Lad/r;->r:D

    iput-wide v2, v4, Lad/r;->s:D

    const-wide/16 v2, -0x1

    iput-wide v2, v4, Lad/r;->l:J

    goto :goto_14

    :cond_24
    move-object/from16 p1, v5

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    :cond_25
    :goto_14
    iget-object v2, v7, Lad/x;->o:Li9/a;

    invoke-interface {v2}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-wide/16 v24, 0x9c4

    const-wide v26, 0x400ccccccccccccdL    # 3.6

    if-nez v2, :cond_32

    iget-object v2, v7, Lad/x;->d:Lad/r;

    iget-boolean v2, v2, Lad/r;->e:Z

    if-nez v2, :cond_32

    move-object/from16 v5, p1

    iget-object v2, v5, Ldd/n;->a:Ldd/l0;

    if-nez v2, :cond_26

    goto/16 :goto_1a

    :cond_26
    iget-object v8, v2, Ldd/l0;->h:Ljava/lang/Float;

    if-eqz v8, :cond_33

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget-object v9, v2, Ldd/l0;->g:Ljava/lang/Float;

    if-eqz v9, :cond_33

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    sget v10, Lb6/g;->l:I

    if-ltz v10, :cond_27

    sget-wide v28, Lb6/g;->m:J

    sub-long v28, v11, v28

    cmp-long v15, v28, v24

    if-lez v15, :cond_28

    :cond_27
    const-wide/high16 v28, 0x4008000000000000L    # 3.0

    goto :goto_15

    :cond_28
    const-wide/high16 v28, 0x4008000000000000L    # 3.0

    int-to-double v3, v10

    div-double v3, v3, v26

    sget-wide v30, Lb6/g;->n:D

    mul-double v3, v3, v30

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_16

    :goto_15
    const/4 v3, 0x0

    :goto_16
    if-eqz v3, :cond_34

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget-object v10, v5, Ldd/n;->b:Ldd/y0;

    if-eqz v10, :cond_29

    iget-object v10, v10, Ldd/y0;->b:Ljava/util/List;

    goto :goto_17

    :cond_29
    const/4 v10, 0x0

    :goto_17
    if-nez v10, :cond_2a

    sget-object v10, Lu8/r;->l:Lu8/r;

    :cond_2a
    move-object/from16 v30, v10

    iget-boolean v10, v2, Ldd/l0;->l:Z

    if-nez v10, :cond_34

    invoke-interface/range {v30 .. v30}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2c

    :cond_2b
    const-wide/16 v36, 0x1388

    goto :goto_18

    :cond_2c
    invoke-interface/range {v30 .. v30}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-wide/16 v36, 0x1388

    const-string v13, "mock"

    invoke-static {v15, v13}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_35

    const-string v13, "outside_ua"

    invoke-static {v15, v13}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2d

    goto/16 :goto_1b

    :goto_18
    iget-wide v13, v2, Ldd/l0;->c:J

    sub-long v13, v11, v13

    cmp-long v10, v13, v36

    if-gtz v10, :cond_35

    iget-object v2, v2, Ldd/l0;->i:Ljava/lang/Float;

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_19

    :cond_2e
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    :goto_19
    const/high16 v10, 0x42c80000    # 100.0f

    cmpl-float v2, v2, v10

    if-lez v2, :cond_2f

    goto/16 :goto_1b

    :cond_2f
    cmpg-double v2, v3, v28

    if-ltz v2, :cond_35

    float-to-double v9, v9

    sub-double v13, v9, v3

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide/high16 v31, 0x3fd0000000000000L    # 0.25

    move-object/from16 p1, v7

    mul-double v6, v3, v31

    move-wide/from16 v31, v3

    move-wide/from16 v2, v18

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    cmpl-double v2, v13, v6

    if-lez v2, :cond_30

    move-object/from16 v7, p1

    goto :goto_1b

    :cond_30
    move-object/from16 v7, p1

    iget-object v2, v7, Lad/x;->d:Lad/r;

    float-to-double v13, v8

    iget-boolean v3, v2, Lad/r;->e:Z

    if-eqz v3, :cond_31

    goto :goto_1b

    :cond_31
    const-wide v33, 0x4076800000000000L    # 360.0

    rem-double v13, v13, v33

    add-double v13, v13, v33

    rem-double v13, v13, v33

    iput-wide v13, v2, Lad/r;->d:D

    const/4 v4, 0x1

    iput-boolean v4, v2, Lad/r;->e:Z

    iget-object v3, v7, Lad/x;->a:Ldd/k0;

    float-to-int v4, v8

    mul-double v9, v9, v26

    double-to-int v6, v9

    mul-double v8, v31, v26

    double-to-int v8, v8

    const/16 v34, 0x0

    const/16 v35, 0x3e

    const-string v31, "|"

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-static/range {v30 .. v35}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v9

    const-string v10, " gps_kmh="

    const-string v13, " obd_kmh="

    const-string v14, "free_heading_seed hd="

    invoke-static {v14, v4, v10, v6, v13}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " verdict="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ldd/k0;->n(Ljava/lang/String;)V

    goto :goto_1b

    :cond_32
    move-object/from16 v5, p1

    :cond_33
    :goto_1a
    const-wide/high16 v28, 0x4008000000000000L    # 3.0

    :cond_34
    const-wide/16 v36, 0x1388

    :cond_35
    :goto_1b
    iget-object v3, v5, Ldd/n;->d:Ldd/l0;

    if-eqz v3, :cond_40

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    iget-wide v13, v3, Ldd/l0;->c:J

    iget-wide v8, v7, Lad/x;->n:J

    cmp-long v4, v13, v8

    if-eqz v4, :cond_3f

    iput-wide v13, v7, Lad/x;->n:J

    iget-object v4, v7, Lad/x;->d:Lad/r;

    iget-wide v8, v3, Ldd/l0;->d:D

    move-wide/from16 v39, v8

    iget-wide v8, v3, Ldd/l0;->e:D

    iget-object v3, v3, Ldd/l0;->i:Ljava/lang/Float;

    if-eqz v3, :cond_36

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_1c

    :cond_36
    const/high16 v3, 0x43960000    # 300.0f

    :goto_1c
    float-to-double v2, v3

    iget-object v6, v4, Lad/r;->p:Ljava/util/ArrayList;

    const-wide v34, 0x4062c00000000000L    # 150.0

    cmpl-double v10, v2, v34

    if-lez v10, :cond_37

    const-wide v34, 0x40b3880000000000L    # 5000.0

    cmpg-double v15, v2, v34

    if-gtz v15, :cond_37

    new-instance v38, Lad/q;

    move-wide/from16 v43, v2

    move-wide/from16 v41, v8

    move-wide/from16 v45, v13

    invoke-direct/range {v38 .. v46}, Lad/q;-><init>(DDDJ)V

    move-object v15, v1

    move/from16 v34, v10

    move-object/from16 v10, v38

    move-wide/from16 v8, v39

    move-wide/from16 v13, v41

    move-wide/from16 v0, v43

    move-wide/from16 v2, v45

    iput-object v10, v4, Lad/r;->n:Lad/q;

    goto :goto_1d

    :cond_37
    move-object v15, v1

    move-wide v0, v2

    move/from16 v34, v10

    move-wide v2, v13

    move-wide v13, v8

    move-wide/from16 v8, v39

    :goto_1d
    if-gtz v34, :cond_38

    invoke-virtual {v4, v2, v3}, Lad/r;->c(J)Z

    move-result v10

    if-eqz v10, :cond_39

    :cond_38
    :goto_1e
    move-wide/from16 v34, v11

    goto/16 :goto_22

    :cond_39
    move-wide/from16 v34, v11

    iget-wide v10, v4, Lad/r;->a:D

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-eqz v10, :cond_3a

    iput-wide v8, v4, Lad/r;->a:D

    iput-wide v13, v4, Lad/r;->b:D

    iput-wide v2, v4, Lad/r;->c:J

    move-wide/from16 v39, v8

    const-wide/high16 v10, 0x4039000000000000L    # 25.0

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    iput-wide v8, v4, Lad/r;->j:D

    const-wide/16 v8, 0x0

    iput-wide v8, v4, Lad/r;->k:D

    iput-wide v2, v4, Lad/r;->l:J

    move-wide/from16 v43, v0

    move-wide/from16 v45, v2

    move-object/from16 v38, v4

    move-wide/from16 v41, v13

    invoke-virtual/range {v38 .. v46}, Lad/r;->a(DDDJ)V

    goto/16 :goto_22

    :cond_3a
    move-wide/from16 v39, v8

    move-wide/from16 v41, v13

    move-wide v8, v0

    move-object v0, v4

    iget-wide v10, v0, Lad/r;->a:D

    iget-wide v12, v0, Lad/r;->b:D

    move-wide/from16 v44, v41

    move-wide/from16 v42, v39

    move-wide/from16 v38, v10

    move-wide/from16 v40, v12

    invoke-static/range {v38 .. v45}, Lad/r;->b(DDDD)D

    move-result-wide v10

    move-wide/from16 v39, v42

    move-wide/from16 v41, v44

    const-wide/high16 v43, 0x4004000000000000L    # 2.5

    iget-wide v12, v0, Lad/r;->j:D

    mul-double v12, v12, v43

    move-wide/from16 v45, v2

    const-wide v1, 0x406f400000000000L    # 250.0

    invoke-static {v1, v2, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    cmpl-double v3, v10, v3

    if-lez v3, :cond_3e

    new-instance v38, Lad/q;

    move-wide/from16 v43, v8

    invoke-direct/range {v38 .. v46}, Lad/q;-><init>(DDDJ)V

    move-object/from16 v8, v38

    move-wide/from16 v3, v45

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1f
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x3

    if-le v8, v9, :cond_3b

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1f

    :cond_3b
    const/4 v13, 0x0

    invoke-static {v6}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lad/q;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v10, v9, :cond_41

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3c

    goto :goto_21

    :cond_3c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v13

    :goto_20
    if-ge v10, v9, :cond_3d

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lad/q;

    move-wide/from16 v53, v1

    iget-wide v1, v11, Lad/q;->b:D

    iget-wide v11, v11, Lad/q;->c:D

    iget-wide v13, v8, Lad/q;->b:D

    move-wide/from16 v45, v1

    iget-wide v1, v8, Lad/q;->c:D

    move-wide/from16 v51, v1

    move-wide/from16 v47, v11

    move-wide/from16 v49, v13

    invoke-static/range {v45 .. v52}, Lad/r;->b(DDDD)D

    move-result-wide v1

    cmpg-double v1, v1, v53

    if-gtz v1, :cond_41

    move-wide/from16 v1, v53

    const/4 v13, 0x0

    goto :goto_20

    :cond_3d
    :goto_21
    iget-wide v1, v8, Lad/q;->b:D

    iget-wide v9, v8, Lad/q;->c:D

    iput-wide v1, v0, Lad/r;->a:D

    iput-wide v9, v0, Lad/r;->b:D

    iget-wide v1, v8, Lad/q;->d:D

    const-wide/high16 v10, 0x4039000000000000L    # 25.0

    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lad/r;->j:D

    const-wide/16 v8, 0x0

    iput-wide v8, v0, Lad/r;->k:D

    iget-object v1, v0, Lad/r;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lad/r;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lad/r;->q:Lad/f1;

    iget-object v1, v1, Lad/f1;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    iput-wide v1, v0, Lad/r;->r:D

    iput-wide v1, v0, Lad/r;->s:D

    iput-wide v3, v0, Lad/r;->l:J

    move-object/from16 v38, v0

    move-wide/from16 v45, v3

    invoke-virtual/range {v38 .. v46}, Lad/r;->a(DDDJ)V

    goto :goto_22

    :cond_3e
    move-wide/from16 v13, v41

    move-wide/from16 v2, v45

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-wide v10, v0, Lad/r;->j:D

    mul-double/2addr v10, v10

    mul-double v20, v8, v8

    add-double v41, v10, v20

    div-double v42, v10, v41

    move-wide/from16 v46, v8

    iget-wide v8, v0, Lad/r;->a:D

    move-wide/from16 v44, v8

    move-wide/from16 v38, v39

    move-wide/from16 v40, v8

    invoke-static/range {v38 .. v45}, Lm/a;->b(DDDD)D

    move-result-wide v8

    move-wide/from16 v50, v10

    move-wide/from16 v48, v38

    iget-wide v10, v0, Lad/r;->b:D

    move-wide/from16 v44, v10

    move-wide/from16 v40, v10

    move-wide/from16 v38, v13

    invoke-static/range {v38 .. v45}, Lm/a;->b(DDDD)D

    move-result-wide v10

    move-wide/from16 v41, v38

    iput-wide v8, v0, Lad/r;->a:D

    iput-wide v10, v0, Lad/r;->b:D

    div-double v13, v30, v50

    div-double v8, v30, v20

    add-double/2addr v8, v13

    div-double v13, v30, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4039000000000000L    # 25.0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    iput-wide v8, v0, Lad/r;->j:D

    iput-wide v2, v0, Lad/r;->l:J

    move-object/from16 v38, v0

    move-wide/from16 v43, v46

    move-wide/from16 v39, v48

    move-wide/from16 v45, v2

    invoke-virtual/range {v38 .. v46}, Lad/r;->a(DDDJ)V

    goto :goto_22

    :cond_3f
    move-object v15, v1

    goto/16 :goto_1e

    :cond_40
    move-object v15, v1

    move-wide/from16 v34, v11

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    :cond_41
    :goto_22
    iget-object v0, v7, Lad/x;->d:Lad/r;

    iget-object v1, v7, Lad/x;->h:Lad/l;

    move-wide/from16 v11, v34

    invoke-virtual {v1, v11, v12}, Lad/l;->d(J)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, v0, Lad/r;->a:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    const-wide v13, 0x408f400000000000L    # 1000.0

    const-wide/16 v20, 0x0

    const-wide/high16 v34, 0x402e000000000000L    # 15.0

    const-wide v38, 0x3fd3333333333333L    # 0.3

    const-string v6, "GPS"

    if-eqz v2, :cond_45

    iget-object v1, v0, Lad/r;->n:Lad/q;

    if-eqz v1, :cond_43

    iget-wide v8, v1, Lad/q;->a:J

    sub-long v8, v11, v8

    const-wide/32 v16, 0x1d4c0

    cmp-long v2, v8, v16

    if-gtz v2, :cond_42

    goto :goto_23

    :cond_42
    const/4 v1, 0x0

    :goto_23
    if-nez v1, :cond_44

    :cond_43
    const-wide/16 v54, 0xbb8

    goto :goto_24

    :cond_44
    new-instance v40, Lad/s;

    new-instance v2, Lua/nav/routing/GeoPoint;

    iget-wide v8, v1, Lad/q;->b:D

    const-wide/16 v54, 0xbb8

    iget-wide v3, v1, Lad/q;->c:D

    invoke-direct {v2, v8, v9, v3, v4}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    iget-wide v3, v0, Lad/r;->d:D

    double-to-float v0, v3

    iget-wide v3, v1, Lad/q;->d:D

    const/16 v52, 0x0

    const/16 v53, 0xd80

    const/16 v43, 0x0

    const-wide/16 v44, 0x0

    const/16 v46, 0x1

    const-string v49, "NET\u2248"

    const-wide/16 v50, 0x0

    move/from16 v42, v0

    move-object/from16 v41, v2

    move-wide/from16 v47, v3

    invoke-direct/range {v40 .. v53}, Lad/s;-><init>(Lua/nav/routing/GeoPoint;FZDZDLjava/lang/String;JZI)V

    move-object/from16 p1, v5

    move-object/from16 v0, v40

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    move-wide/from16 v40, v13

    goto/16 :goto_3e

    :goto_24
    move-object/from16 p1, v5

    move-wide/from16 v40, v13

    const/4 v0, 0x0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    goto/16 :goto_3e

    :cond_45
    const-wide/16 v54, 0xbb8

    invoke-virtual {v0, v11, v12}, Lad/r;->c(J)Z

    move-result v3

    iget-wide v8, v0, Lad/r;->c:J

    sub-long v8, v11, v8

    long-to-double v8, v8

    div-double v40, v8, v13

    const-wide/16 v42, 0x0

    const-wide/high16 v44, 0x4008000000000000L    # 3.0

    invoke-static/range {v40 .. v45}, Lg6/c1;->d(DDD)D

    move-result-wide v8

    if-eqz v3, :cond_47

    :cond_46
    :goto_25
    move-wide/from16 v40, v13

    const/4 v2, 0x0

    goto :goto_26

    :cond_47
    sget v2, Lb6/g;->l:I

    if-ltz v2, :cond_46

    sget-wide v40, Lb6/g;->m:J

    sub-long v40, v11, v40

    cmp-long v4, v40, v24

    if-lez v4, :cond_48

    goto :goto_25

    :cond_48
    move-wide/from16 v40, v13

    int-to-double v13, v2

    div-double v13, v13, v26

    sget-wide v42, Lb6/g;->n:D

    mul-double v13, v13, v42

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :goto_26
    const-wide v42, 0x1fffffffffffffffL

    if-eqz v3, :cond_4a

    iget-object v1, v0, Lad/r;->h:Ljava/lang/Double;

    if-eqz v1, :cond_49

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    :goto_27
    move v10, v3

    const-wide/32 v44, 0xea60

    :goto_28
    move-wide v3, v1

    goto :goto_2d

    :cond_49
    iget-wide v1, v0, Lad/r;->f:D

    goto :goto_27

    :cond_4a
    if-eqz v2, :cond_4b

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_27

    :cond_4b
    const-wide/32 v44, 0xea60

    iget-wide v13, v0, Lad/r;->g:J

    cmp-long v2, v13, v20

    if-lez v2, :cond_4c

    sub-long v13, v11, v13

    goto :goto_29

    :cond_4c
    move-wide/from16 v13, v42

    :goto_29
    iget-object v2, v0, Lad/r;->q:Lad/f1;

    invoke-virtual {v2, v11, v12}, Lad/f1;->b(J)Lad/c1;

    move-result-object v2

    if-nez v1, :cond_4d

    if-nez v2, :cond_4d

    cmp-long v4, v13, v44

    if-lez v4, :cond_4d

    move v10, v3

    const-wide/16 v3, 0x0

    goto :goto_2d

    :cond_4d
    move v10, v3

    iget-wide v3, v0, Lad/r;->g:J

    cmp-long v3, v3, v20

    if-lez v3, :cond_4e

    iget-object v3, v0, Lad/r;->h:Ljava/lang/Double;

    :goto_2a
    const/4 v4, 0x0

    goto :goto_2b

    :cond_4e
    const/4 v3, 0x0

    goto :goto_2a

    :goto_2b
    invoke-static {v3, v13, v14, v4, v2}, Lad/t2;->a(Ljava/lang/Double;JLjava/lang/Double;Lad/c1;)D

    move-result-wide v2

    if-eqz v1, :cond_4f

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    goto :goto_2c

    :cond_4f
    move-wide/from16 v13, v30

    :goto_2c
    mul-double v1, v2, v13

    goto :goto_28

    :goto_2d
    iput-wide v3, v0, Lad/r;->f:D

    iget-object v1, v0, Lad/r;->t:Lad/i;

    iget-wide v13, v1, Lad/i;->a:D

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_51

    iget-wide v13, v1, Lad/i;->e:D

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_50

    goto :goto_2e

    :cond_50
    iget-wide v1, v1, Lad/i;->a:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_2f

    :cond_51
    :goto_2e
    const/4 v1, 0x0

    :goto_2f
    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    if-eqz v10, :cond_52

    cmpg-double v2, v3, v18

    if-gez v2, :cond_53

    :cond_52
    if-eqz v1, :cond_53

    iget-object v2, v0, Lad/r;->t:Lad/i;

    invoke-virtual {v2}, Lad/i;->b()Z

    move-result v2

    if-eqz v2, :cond_53

    const/4 v13, 0x1

    goto :goto_30

    :cond_53
    const/4 v13, 0x0

    :goto_30
    if-eqz v13, :cond_54

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lad/r;->d:D

    const/4 v2, 0x1

    iput-boolean v2, v0, Lad/r;->e:Z

    :cond_54
    iget-boolean v1, v0, Lad/r;->e:Z

    move-wide/from16 v60, v3

    if-eqz v1, :cond_57

    iget-wide v2, v0, Lad/r;->i:J

    cmp-long v1, v2, v20

    if-lez v1, :cond_55

    sub-long v1, v11, v2

    const-wide/16 v30, 0x3a98

    cmp-long v1, v1, v30

    if-gtz v1, :cond_55

    if-eqz v13, :cond_56

    :cond_55
    if-eqz v13, :cond_57

    iget-object v1, v0, Lad/r;->t:Lad/i;

    invoke-virtual {v1}, Lad/i;->c()Z

    move-result v1

    if-eqz v1, :cond_57

    :cond_56
    const/16 v68, 0x1

    goto :goto_31

    :cond_57
    const/16 v68, 0x0

    :goto_31
    iget-boolean v1, v0, Lad/r;->e:Z

    if-eqz v1, :cond_58

    const-wide/16 v22, 0x0

    cmpl-double v1, v60, v22

    if-lez v1, :cond_58

    cmpl-double v1, v8, v22

    if-lez v1, :cond_58

    mul-double v1, v60, v8

    iget-wide v13, v0, Lad/r;->d:D

    invoke-static {v13, v14}, Lsc/c;->c(D)D

    move-result-wide v13

    move-object/from16 p1, v5

    iget-wide v4, v0, Lad/r;->a:D

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    mul-double v30, v30, v1

    const-wide v46, 0x40fafcc000000000L    # 110540.0

    div-double v30, v30, v46

    add-double v4, v30, v4

    iput-wide v4, v0, Lad/r;->a:D

    iget-wide v4, v0, Lad/r;->b:D

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v1

    move-wide/from16 v46, v4

    iget-wide v3, v0, Lad/r;->a:D

    invoke-static {v3, v4}, Lsc/c;->c(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    const-wide v48, 0x40fb2d8000000000L    # 111320.0

    mul-double v3, v3, v48

    div-double/2addr v13, v3

    add-double v13, v13, v46

    iput-wide v13, v0, Lad/r;->b:D

    if-nez v10, :cond_59

    iget-wide v3, v0, Lad/r;->k:D

    add-double/2addr v3, v1

    iput-wide v3, v0, Lad/r;->k:D

    goto :goto_32

    :cond_58
    move-object/from16 p1, v5

    :cond_59
    :goto_32
    const-wide v13, 0x4075e00000000000L    # 350.0

    if-nez v10, :cond_5b

    const-wide/16 v22, 0x0

    cmpl-double v5, v8, v22

    if-lez v5, :cond_5b

    const-wide v46, 0x3fb47ae147ae147bL    # 0.08

    iget-wide v1, v0, Lad/r;->l:J

    cmp-long v1, v1, v20

    if-lez v1, :cond_5a

    move-wide v1, v13

    goto :goto_33

    :cond_5a
    const-wide v1, 0x4082c00000000000L    # 600.0

    :goto_33
    iget-wide v3, v0, Lad/r;->j:D

    mul-double v50, v60, v46

    mul-double v50, v50, v8

    add-double v50, v50, v3

    mul-double v8, v8, v38

    add-double v8, v8, v50

    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lad/r;->j:D

    goto :goto_34

    :cond_5b
    const-wide v46, 0x3fb47ae147ae147bL    # 0.08

    :goto_34
    iput-wide v11, v0, Lad/r;->c:J

    iget-wide v1, v0, Lad/r;->g:J

    cmp-long v3, v1, v20

    if-lez v3, :cond_5c

    sub-long v42, v11, v1

    :cond_5c
    if-nez v10, :cond_5d

    const-wide/16 v1, 0x7530

    cmp-long v1, v42, v1

    if-lez v1, :cond_5d

    const/16 v62, 0x1

    goto :goto_35

    :cond_5d
    const/16 v62, 0x0

    :goto_35
    iget-wide v1, v0, Lad/r;->l:J

    cmp-long v3, v1, v20

    if-lez v3, :cond_5e

    sub-long v1, v11, v1

    cmp-long v1, v1, v44

    if-gez v1, :cond_5e

    const/4 v2, 0x1

    goto :goto_36

    :cond_5e
    const/4 v2, 0x0

    :goto_36
    if-eqz v10, :cond_5f

    move-wide/from16 v63, v34

    goto :goto_39

    :cond_5f
    iget-wide v3, v0, Lad/r;->j:D

    move-wide/from16 v8, v16

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    iget-wide v8, v0, Lad/r;->k:D

    cmp-long v1, v42, v54

    if-gez v1, :cond_60

    move-wide/from16 v8, v34

    goto :goto_38

    :cond_60
    if-eqz v2, :cond_61

    goto :goto_37

    :cond_61
    const-wide v13, 0x4082c00000000000L    # 600.0

    :goto_37
    mul-double v8, v8, v46

    const-wide/high16 v32, 0x4039000000000000L    # 25.0

    add-double v8, v8, v32

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    cmpg-double v1, v8, v16

    if-gez v1, :cond_62

    move-wide/from16 v8, v16

    :cond_62
    :goto_38
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    move-wide/from16 v63, v3

    :goto_39
    new-instance v1, Lua/nav/routing/GeoPoint;

    iget-wide v3, v0, Lad/r;->a:D

    iget-wide v8, v0, Lad/r;->b:D

    invoke-direct {v1, v3, v4, v8, v9}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    iget-wide v3, v0, Lad/r;->d:D

    double-to-float v3, v3

    iget-boolean v4, v0, Lad/r;->e:Z

    if-eqz v10, :cond_63

    move-object/from16 v65, v6

    goto :goto_3b

    :cond_63
    if-eqz v2, :cond_64

    const-string v2, "DR+NET"

    :goto_3a
    move-object/from16 v65, v2

    goto :goto_3b

    :cond_64
    const-string v2, "DR"

    goto :goto_3a

    :goto_3b
    if-nez v10, :cond_66

    iget-wide v8, v0, Lad/r;->g:J

    cmp-long v0, v8, v20

    if-gtz v0, :cond_65

    goto :goto_3c

    :cond_65
    const/16 v0, 0x3e8

    int-to-long v8, v0

    div-long v42, v42, v8

    move-wide/from16 v66, v42

    goto :goto_3d

    :cond_66
    :goto_3c
    move-wide/from16 v66, v20

    :goto_3d
    new-instance v56, Lad/s;

    const/16 v69, 0xb00

    move-object/from16 v57, v1

    move/from16 v58, v3

    move/from16 v59, v4

    invoke-direct/range {v56 .. v69}, Lad/s;-><init>(Lua/nav/routing/GeoPoint;FZDZDLjava/lang/String;JZI)V

    move-object/from16 v0, v56

    :goto_3e
    if-eqz v0, :cond_87

    iget-object v1, v7, Lad/x;->a:Ldd/k0;

    iget-object v2, v7, Lad/x;->c:Lp/a1;

    iget-object v8, v0, Lad/s;->a:Lua/nav/routing/GeoPoint;

    iget-wide v3, v0, Lad/s;->d:D

    iget-boolean v5, v0, Lad/s;->c:Z

    iget v13, v0, Lad/s;->b:F

    const-string v14, " v="

    if-nez v8, :cond_67

    :goto_3f
    move-object/from16 v50, v6

    move-wide/from16 v28, v11

    goto/16 :goto_4b

    :cond_67
    invoke-virtual {v2}, Lp/a1;->invoke()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lua/nav/Tuning;

    iget-boolean v9, v9, Lua/nav/Tuning;->u:Z

    if-eqz v9, :cond_68

    iget-object v9, v7, Lad/x;->i:Li9/a;

    invoke-interface {v9}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_68

    iget-boolean v9, v0, Lad/s;->j:Z

    if-eqz v9, :cond_69

    :cond_68
    move-object/from16 v42, v0

    move-object/from16 v50, v6

    move-wide/from16 v28, v11

    const/4 v4, 0x0

    goto/16 :goto_4a

    :cond_69
    iget-object v9, v0, Lad/s;->g:Ljava/lang/String;

    invoke-static {v9, v6}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    const-string v10, " off="

    move/from16 v16, v9

    const-string v9, " kind="

    if-eqz v16, :cond_71

    invoke-virtual {v2}, Lp/a1;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lua/nav/Tuning;

    iget-boolean v2, v2, Lua/nav/Tuning;->v:Z

    if-nez v2, :cond_6a

    const/4 v2, 0x0

    iput-object v2, v7, Lad/x;->u:Ljava/lang/Long;

    iput-object v2, v7, Lad/x;->v:Lid/a0;

    goto :goto_3f

    :cond_6a
    move-object/from16 v16, v9

    move-object v2, v10

    const-wide/high16 v9, 0x4039000000000000L    # 25.0

    move-wide/from16 v70, v3

    move-object/from16 v3, v16

    move-wide/from16 v16, v70

    invoke-virtual/range {v7 .. v12}, Lad/x;->b(Lua/nav/routing/GeoPoint;DJ)V

    move-object/from16 v42, v8

    if-eqz v5, :cond_6b

    float-to-double v4, v13

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v45, v4

    goto :goto_40

    :cond_6b
    const/16 v45, 0x0

    :goto_40
    iget-boolean v4, v0, Lad/s;->k:Z

    iget-wide v8, v0, Lad/s;->d:D

    iget-object v5, v7, Lad/x;->q:Ljava/util/List;

    iget-object v10, v7, Lad/x;->u:Ljava/lang/Long;

    iget-object v13, v7, Lad/x;->v:Lid/a0;

    move-object/from16 v31, v0

    const-string v0, "roads"

    invoke-static {v5, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_6d

    if-eqz v45, :cond_6d

    cmpg-double v0, v8, v28

    if-gez v0, :cond_6c

    goto :goto_41

    :cond_6c
    const-wide/high16 v43, 0x4039000000000000L    # 25.0

    move-object/from16 v48, v5

    move-wide/from16 v46, v8

    move-object/from16 v49, v10

    move-object/from16 v50, v13

    invoke-static/range {v42 .. v50}, Lid/i1;->c(Lua/nav/routing/GeoPoint;DLjava/lang/Double;DLjava/util/List;Ljava/lang/Long;Lid/a0;)Lid/n0;

    move-result-object v0

    goto :goto_42

    :cond_6d
    :goto_41
    const/4 v0, 0x0

    :goto_42
    if-nez v0, :cond_6e

    const/4 v4, 0x0

    iput-object v4, v7, Lad/x;->u:Ljava/lang/Long;

    iput-object v4, v7, Lad/x;->v:Lid/a0;

    move-object/from16 v50, v6

    move-wide/from16 v28, v11

    move-object/from16 v0, v31

    goto/16 :goto_4b

    :cond_6e
    iget-object v4, v0, Lid/n0;->c:Lid/a0;

    iget-wide v8, v4, Lid/a0;->a:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v7, Lad/x;->u:Ljava/lang/Long;

    iput-object v4, v7, Lad/x;->v:Lid/a0;

    iget-object v5, v7, Lad/x;->w:Ljava/lang/Long;

    if-nez v5, :cond_6f

    goto :goto_43

    :cond_6f
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    cmp-long v5, v8, v28

    if-eqz v5, :cond_70

    :goto_43
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v7, Lad/x;->w:Ljava/lang/Long;

    iget-object v4, v4, Lid/a0;->b:Lid/f0;

    move-wide/from16 v28, v11

    iget-wide v10, v0, Lid/n0;->d:D

    double-to-int v5, v10

    mul-double v10, v16, v26

    double-to-int v10, v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "road_snap_gps road="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldd/k0;->n(Ljava/lang/String;)V

    goto :goto_44

    :cond_70
    move-wide/from16 v28, v11

    :goto_44
    iget-object v0, v0, Lid/n0;->a:Lua/nav/routing/GeoPoint;

    const/16 v48, 0x0

    const/16 v49, 0xefe

    const/16 v44, 0x0

    const/16 v45, 0x0

    const-wide/16 v46, 0x0

    move-object/from16 v43, v0

    move-object/from16 v42, v31

    invoke-static/range {v42 .. v49}, Lad/s;->a(Lad/s;Lua/nav/routing/GeoPoint;FZDLua/nav/routing/GeoPoint;I)Lad/s;

    move-result-object v0

    move-object/from16 v50, v6

    goto/16 :goto_4b

    :cond_71
    move-wide/from16 v16, v3

    move-object/from16 v42, v8

    move-object v3, v9

    move-object v2, v10

    move-wide/from16 v28, v11

    iget-wide v8, v0, Lad/s;->f:D

    const-wide/high16 v45, 0x4039000000000000L    # 25.0

    const-wide/high16 v47, 0x4069000000000000L    # 200.0

    move-wide/from16 v43, v8

    invoke-static/range {v43 .. v48}, Lg6/c1;->d(DDD)D

    move-result-wide v43

    move-object/from16 v8, v42

    move-wide/from16 v9, v43

    invoke-virtual/range {v7 .. v12}, Lad/x;->b(Lua/nav/routing/GeoPoint;DJ)V

    if-eqz v5, :cond_72

    float-to-double v4, v13

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v45, v4

    goto :goto_45

    :cond_72
    const/16 v45, 0x0

    :goto_45
    iget-wide v4, v0, Lad/s;->d:D

    iget-object v8, v7, Lad/x;->q:Ljava/util/List;

    iget-object v9, v7, Lad/x;->u:Ljava/lang/Long;

    iget-object v10, v7, Lad/x;->v:Lid/a0;

    move-wide/from16 v46, v4

    move-object/from16 v48, v8

    move-object/from16 v49, v9

    move-object/from16 v50, v10

    invoke-static/range {v42 .. v50}, Lid/i1;->c(Lua/nav/routing/GeoPoint;DLjava/lang/Double;DLjava/util/List;Ljava/lang/Long;Lid/a0;)Lid/n0;

    move-result-object v4

    move-wide/from16 v9, v43

    if-nez v4, :cond_73

    const/4 v5, 0x0

    iput-object v5, v7, Lad/x;->u:Ljava/lang/Long;

    iput-object v5, v7, Lad/x;->v:Lid/a0;

    goto/16 :goto_3f

    :cond_73
    move-wide/from16 v28, v11

    iget-wide v11, v4, Lid/n0;->b:D

    iget-object v5, v4, Lid/n0;->c:Lid/a0;

    move-wide/from16 v31, v11

    iget-wide v11, v5, Lid/a0;->a:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v7, Lad/x;->u:Ljava/lang/Long;

    iput-object v5, v7, Lad/x;->v:Lid/a0;

    iget-wide v11, v5, Lid/a0;->a:J

    iget-object v8, v7, Lad/x;->w:Ljava/lang/Long;

    if-nez v8, :cond_74

    goto :goto_46

    :cond_74
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v42

    cmp-long v8, v11, v42

    if-eqz v8, :cond_75

    :goto_46
    iget-wide v11, v5, Lid/a0;->a:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v7, Lad/x;->w:Ljava/lang/Long;

    iget-wide v11, v5, Lid/a0;->a:J

    iget-object v5, v5, Lid/a0;->b:Lid/f0;

    move-object v8, v6

    move-object/from16 v33, v7

    iget-wide v6, v4, Lid/n0;->d:D

    double-to-int v6, v6

    move-object/from16 v50, v8

    mul-double v7, v16, v26

    double-to-int v7, v7

    double-to-int v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "road_snap road="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " r="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldd/k0;->n(Ljava/lang/String;)V

    move-object/from16 v7, v33

    goto :goto_47

    :cond_75
    move-object/from16 v50, v6

    :goto_47
    iget-object v1, v7, Lad/x;->d:Lad/r;

    iget-object v2, v4, Lid/n0;->a:Lua/nav/routing/GeoPoint;

    iget-wide v5, v2, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v2, v2, Lua/nav/routing/GeoPoint;->b:D

    if-eqz v45, :cond_76

    invoke-static/range {v31 .. v32}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object/from16 v61, v8

    :goto_48
    move-object/from16 v56, v1

    move-wide/from16 v59, v2

    move-wide/from16 v57, v5

    goto :goto_49

    :cond_76
    const/16 v61, 0x0

    goto :goto_48

    :goto_49
    invoke-virtual/range {v56 .. v61}, Lad/r;->d(DDLjava/lang/Double;)V

    iget-object v1, v4, Lid/n0;->a:Lua/nav/routing/GeoPoint;

    if-eqz v45, :cond_77

    move-wide/from16 v2, v31

    double-to-float v13, v2

    :cond_77
    move/from16 v44, v13

    const/16 v48, 0x0

    const/16 v49, 0xefc

    const/16 v45, 0x0

    const-wide/16 v46, 0x0

    move-object/from16 v42, v0

    move-object/from16 v43, v1

    invoke-static/range {v42 .. v49}, Lad/s;->a(Lad/s;Lua/nav/routing/GeoPoint;FZDLua/nav/routing/GeoPoint;I)Lad/s;

    move-result-object v0

    goto :goto_4b

    :goto_4a
    iput-object v4, v7, Lad/x;->u:Ljava/lang/Long;

    iput-object v4, v7, Lad/x;->v:Lid/a0;

    move-object/from16 v0, v42

    :goto_4b
    iget-object v1, v7, Lad/x;->e:Lid/d0;

    if-eqz v1, :cond_78

    invoke-virtual {v1}, Lid/d0;->a()Lad/q1;

    move-result-object v1

    if-nez v1, :cond_79

    :cond_78
    move-object/from16 v56, v0

    move-wide/from16 v11, v28

    move-object/from16 v8, v50

    goto/16 :goto_53

    :cond_79
    iget-object v2, v0, Lad/s;->g:Ljava/lang/String;

    move-object/from16 v8, v50

    invoke-static {v2, v8}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7a

    iget-boolean v2, v0, Lad/s;->j:Z

    if-nez v2, :cond_7a

    iget-object v2, v7, Lad/x;->i:Li9/a;

    invoke-interface {v2}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_7a

    iget-wide v2, v1, Lad/q1;->h:J

    sub-long v11, v28, v2

    const-wide/16 v2, 0x7d0

    cmp-long v2, v11, v2

    if-gtz v2, :cond_7a

    iget-wide v2, v1, Lad/q1;->c:D

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v2, v4

    if-gez v2, :cond_7b

    :cond_7a
    move-object/from16 v56, v0

    move-wide/from16 v11, v28

    goto/16 :goto_53

    :cond_7b
    iget-object v2, v1, Lad/q1;->a:Lua/nav/routing/GeoPoint;

    sget v3, Lb6/g;->l:I

    if-ltz v3, :cond_7d

    sget-wide v4, Lb6/g;->m:J

    sub-long v11, v28, v4

    cmp-long v4, v11, v24

    if-lez v4, :cond_7c

    goto :goto_4c

    :cond_7c
    int-to-double v3, v3

    div-double v3, v3, v26

    sget-wide v5, Lb6/g;->n:D

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    goto :goto_4d

    :cond_7d
    :goto_4c
    const/4 v4, 0x0

    :goto_4d
    iget-object v3, v0, Lad/s;->a:Lua/nav/routing/GeoPoint;

    iget-wide v5, v7, Lad/x;->x:J

    sub-long v42, v28, v5

    const-wide/16 v44, 0x0

    const-wide/16 v46, 0x5dc

    invoke-static/range {v42 .. v47}, Lg6/c1;->h(JJJ)J

    move-result-wide v5

    long-to-double v5, v5

    div-double v5, v5, v40

    move-wide/from16 v11, v28

    iput-wide v11, v7, Lad/x;->x:J

    if-eqz v4, :cond_7f

    if-eqz v3, :cond_7f

    sget-object v9, Ldd/t0;->Companion:Ldd/s0;

    move-object v10, v4

    move-wide/from16 v16, v5

    iget-wide v4, v3, Lua/nav/routing/GeoPoint;->a:D

    move-wide/from16 v40, v4

    iget-wide v4, v3, Lua/nav/routing/GeoPoint;->b:D

    iget-object v6, v1, Lad/q1;->a:Lua/nav/routing/GeoPoint;

    move-wide/from16 v42, v4

    iget-wide v4, v6, Lua/nav/routing/GeoPoint;->a:D

    move-wide/from16 v44, v4

    iget-wide v4, v6, Lua/nav/routing/GeoPoint;->b:D

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v46, v4

    invoke-static/range {v40 .. v47}, Ldd/s0;->a(DDDD)D

    move-result-wide v4

    cmpl-double v6, v4, v34

    if-lez v6, :cond_7f

    const-wide/high16 v24, 0x4079000000000000L    # 400.0

    cmpg-double v6, v4, v24

    if-gez v6, :cond_7f

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    cmpg-double v6, v24, v38

    if-gez v6, :cond_7e

    goto :goto_4e

    :cond_7e
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide/high16 v18, 0x4020000000000000L    # 8.0

    add-double v9, v9, v18

    move-wide/from16 v18, v9

    :goto_4e
    mul-double v9, v16, v18

    cmpg-double v6, v9, v4

    if-gez v6, :cond_7f

    div-double v44, v9, v4

    new-instance v2, Lua/nav/routing/GeoPoint;

    iget-wide v4, v3, Lua/nav/routing/GeoPoint;->a:D

    iget-object v6, v1, Lad/q1;->a:Lua/nav/routing/GeoPoint;

    iget-wide v9, v6, Lua/nav/routing/GeoPoint;->a:D

    move-wide/from16 v46, v4

    move-wide/from16 v42, v4

    move-wide/from16 v40, v9

    invoke-static/range {v40 .. v47}, Lm/a;->b(DDDD)D

    move-result-wide v4

    iget-wide v9, v3, Lua/nav/routing/GeoPoint;->b:D

    move-wide/from16 v42, v9

    iget-wide v9, v6, Lua/nav/routing/GeoPoint;->b:D

    move-wide/from16 v46, v42

    move-wide/from16 v40, v9

    invoke-static/range {v40 .. v47}, Lm/a;->b(DDDD)D

    move-result-wide v9

    invoke-direct {v2, v4, v5, v9, v10}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    :cond_7f
    iget-object v3, v7, Lad/x;->d:Lad/r;

    iget-wide v4, v2, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v9, v2, Lua/nav/routing/GeoPoint;->b:D

    iget-object v6, v1, Lad/q1;->b:Ljava/lang/Double;

    move-object/from16 v40, v3

    move-wide/from16 v41, v4

    move-object/from16 v45, v6

    move-wide/from16 v43, v9

    invoke-virtual/range {v40 .. v45}, Lad/r;->d(DDLjava/lang/Double;)V

    iget-object v3, v1, Lad/q1;->b:Ljava/lang/Double;

    if-eqz v3, :cond_80

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    double-to-float v3, v3

    :goto_4f
    move/from16 v58, v3

    goto :goto_50

    :cond_80
    iget v3, v0, Lad/s;->b:F

    goto :goto_4f

    :goto_50
    iget-boolean v3, v0, Lad/s;->c:Z

    if-nez v3, :cond_82

    iget-object v3, v1, Lad/q1;->b:Ljava/lang/Double;

    if-eqz v3, :cond_81

    goto :goto_51

    :cond_81
    const/16 v59, 0x0

    goto :goto_52

    :cond_82
    :goto_51
    const/16 v59, 0x1

    :goto_52
    iget-wide v3, v1, Lad/q1;->d:D

    const-wide/high16 v42, 0x402e000000000000L    # 15.0

    const-wide v44, 0x40a7700000000000L    # 3000.0

    move-wide/from16 v40, v3

    invoke-static/range {v40 .. v45}, Lg6/c1;->d(DDD)D

    move-result-wide v60

    iget-object v1, v1, Lad/q1;->f:Lua/nav/routing/GeoPoint;

    const/16 v63, 0x698

    move-object/from16 v56, v0

    move-object/from16 v62, v1

    move-object/from16 v57, v2

    invoke-static/range {v56 .. v63}, Lad/s;->a(Lad/s;Lua/nav/routing/GeoPoint;FZDLua/nav/routing/GeoPoint;I)Lad/s;

    move-result-object v0

    goto :goto_54

    :goto_53
    move-object/from16 v0, v56

    :goto_54
    iget-object v1, v7, Lad/x;->j:Lx9/l0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, v7, Lad/x;->i:Li9/a;

    invoke-interface {v1}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_87

    iget-object v1, v0, Lad/s;->g:Ljava/lang/String;

    invoke-static {v1, v8}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_87

    iget-wide v1, v7, Lad/x;->z:J

    sub-long v1, v11, v1

    cmp-long v1, v1, v36

    if-ltz v1, :cond_87

    iput-wide v11, v7, Lad/x;->z:J

    iget-object v1, v0, Lad/s;->a:Lua/nav/routing/GeoPoint;

    iget-object v2, v7, Lad/x;->a:Ldd/k0;

    iget-object v3, v0, Lad/s;->g:Ljava/lang/String;

    if-eqz v1, :cond_83

    iget-wide v5, v1, Lua/nav/routing/GeoPoint;->a:D

    const/4 v8, 0x5

    invoke-static {v5, v6, v8}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v5

    goto :goto_55

    :cond_83
    const/4 v8, 0x5

    move-object v5, v4

    :goto_55
    if-eqz v1, :cond_84

    iget-wide v9, v1, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v9, v10, v8}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v1

    goto :goto_56

    :cond_84
    move-object v1, v4

    :goto_56
    iget-boolean v6, v0, Lad/s;->c:Z

    if-eqz v6, :cond_85

    iget v6, v0, Lad/s;->b:F

    float-to-int v6, v6

    goto :goto_57

    :cond_85
    const/4 v6, -0x1

    :goto_57
    iget-boolean v9, v0, Lad/s;->k:Z

    move v10, v9

    iget-wide v8, v0, Lad/s;->d:D

    mul-double v8, v8, v26

    double-to-int v8, v8

    move-object v9, v5

    iget-wide v4, v0, Lad/s;->f:D

    double-to-int v4, v4

    iget-boolean v0, v0, Lad/s;->i:Z

    iget-object v5, v7, Lad/x;->q:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v13, v7, Lad/x;->p:Lsc/a0;

    if-eqz v13, :cond_86

    const/4 v13, 0x1

    :goto_58
    move-object/from16 v16, v9

    goto :goto_59

    :cond_86
    const/4 v13, 0x0

    goto :goto_58

    :goto_59
    const-string v9, " pos="

    move/from16 v17, v10

    const-string v10, ","

    move-object/from16 v18, v15

    const-string v15, "free_state src="

    move-wide/from16 v34, v11

    move-object/from16 v11, v16

    invoke-static {v15, v3, v9, v11, v10}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " hd="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rel="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v17

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " unc="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " snap="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " roads="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " provider="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ldd/k0;->n(Ljava/lang/String;)V

    goto :goto_5a

    :cond_87
    move-wide/from16 v34, v11

    move-object/from16 v18, v15

    :goto_5a
    iget-object v0, v7, Lad/x;->g:Lad/f2;

    if-eqz v0, :cond_92

    move-object/from16 v5, p1

    iget-object v4, v5, Ldd/n;->c:Ldd/l0;

    if-eqz v4, :cond_88

    iget-object v1, v7, Lad/x;->o:Li9/a;

    invoke-interface {v1}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_88

    iget-wide v1, v4, Ldd/l0;->c:J

    sub-long v11, v34, v1

    const-wide/16 v1, 0x5dc

    cmp-long v1, v11, v1

    if-gtz v1, :cond_88

    goto :goto_5b

    :cond_88
    const/4 v4, 0x0

    :goto_5b
    iget-object v1, v7, Lad/x;->h:Lad/l;

    move-wide/from16 v11, v34

    invoke-virtual {v1, v11, v12}, Lad/l;->a(J)Z

    move-result v1

    if-eqz v1, :cond_92

    if-eqz v4, :cond_89

    iget-object v1, v4, Ldd/l0;->g:Ljava/lang/Float;

    if-eqz v1, :cond_89

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    goto :goto_5c

    :cond_89
    const/4 v4, 0x0

    :goto_5c
    iget-object v1, v7, Lad/x;->h:Lad/l;

    iget-wide v2, v1, Lad/l;->j:D

    iget-wide v5, v1, Lad/l;->i:D

    iget-wide v8, v1, Lad/l;->k:D

    if-eqz v4, :cond_8a

    const-wide/16 v22, 0x0

    cmpg-double v1, v2, v22

    if-gtz v1, :cond_8b

    :cond_8a
    const-wide/16 v10, -0x1

    goto :goto_60

    :cond_8b
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    cmpg-double v1, v13, v38

    if-gez v1, :cond_8e

    iget-wide v13, v0, Lad/f2;->d:J

    cmp-long v1, v13, v20

    if-gez v1, :cond_8c

    iput-wide v11, v0, Lad/f2;->d:J

    :cond_8c
    iget-wide v13, v0, Lad/f2;->d:J

    sub-long/2addr v11, v13

    cmp-long v1, v11, v54

    if-ltz v1, :cond_8d

    iget-object v4, v0, Lad/f2;->b:Lu8/k;

    goto :goto_5e

    :cond_8d
    :goto_5d
    const/4 v4, 0x0

    goto :goto_5e

    :cond_8e
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    cmpl-double v1, v10, v12

    if-lez v1, :cond_8f

    const-wide/16 v10, -0x1

    iput-wide v10, v0, Lad/f2;->d:J

    iget-object v4, v0, Lad/f2;->c:Lu8/k;

    goto :goto_5e

    :cond_8f
    const-wide/16 v10, -0x1

    iput-wide v10, v0, Lad/f2;->d:J

    goto :goto_5d

    :goto_5e
    if-nez v4, :cond_90

    goto :goto_61

    :cond_90
    new-instance v1, Lad/e2;

    double-to-float v2, v2

    double-to-float v3, v5

    double-to-float v5, v8

    invoke-direct {v1, v2, v3, v5}, Lad/e2;-><init>(FFF)V

    invoke-virtual {v4, v1}, Lu8/k;->addLast(Ljava/lang/Object;)V

    :goto_5f
    iget v1, v4, Lu8/k;->n:I

    const/16 v2, 0xfa0

    if-le v1, v2, :cond_91

    invoke-virtual {v4}, Lu8/k;->removeFirst()Ljava/lang/Object;

    goto :goto_5f

    :cond_91
    iget v1, v0, Lad/f2;->f:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lad/f2;->f:I

    iget v1, v0, Lad/f2;->e:I

    add-int/2addr v1, v2

    iput v1, v0, Lad/f2;->e:I

    const/16 v3, 0x258

    if-lt v1, v3, :cond_92

    invoke-virtual {v0}, Lad/f2;->f()V

    goto :goto_61

    :goto_60
    iput-wide v10, v0, Lad/f2;->d:J

    :cond_92
    :goto_61
    iget-object v0, v7, Lad/x;->d:Lad/r;

    iget-object v0, v0, Lad/r;->t:Lad/i;

    invoke-virtual {v0}, Lad/i;->b()Z

    move-result v1

    iget-boolean v3, v7, Lad/x;->y:Z

    if-eq v1, v3, :cond_93

    invoke-virtual {v0}, Lad/i;->b()Z

    move-result v1

    iput-boolean v1, v7, Lad/x;->y:Z

    iget-object v1, v7, Lad/x;->a:Ldd/k0;

    invoke-virtual {v0}, Lad/i;->b()Z

    move-result v3

    iget-wide v4, v0, Lad/i;->i:D

    double-to-int v4, v4

    iget-boolean v0, v0, Lad/i;->j:Z

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "compass_health="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " bias="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bias_known="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ldd/k0;->n(Ljava/lang/String;)V

    :cond_93
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lad/w;->m:I

    const-wide/16 v3, 0x1f4

    invoke-static {v3, v4, v0}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v15, v18

    if-ne v1, v15, :cond_94

    return-object v15

    :cond_94
    :goto_62
    move v6, v2

    move-object v1, v15

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_12

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
