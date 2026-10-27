.class public abstract Le6/c;
.super Lr5/h1;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final l:Ld6/j;


# direct methods
.method public constructor <init>(Ld6/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le6/c;->l:Ld6/j;

    return-void
.end method

.method public static N(Lf6/d;Lj6/n;ZZ)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lj6/n;->w(I)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_12

    const-class v2, Ljava/lang/CharSequence;

    if-ne v1, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_10

    const-class v2, Ljava/lang/Integer;

    if-ne v1, v2, :cond_1

    goto :goto_3

    :cond_1
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_e

    const-class v2, Ljava/lang/Long;

    if-ne v1, v2, :cond_2

    goto :goto_2

    :cond_2
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_c

    const-class v2, Ljava/lang/Double;

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_a

    const-class v2, Ljava/lang/Boolean;

    if-ne v1, v2, :cond_4

    goto :goto_0

    :cond_4
    const-class v2, Ljava/math/BigInteger;

    if-ne v1, v2, :cond_6

    if-nez p2, :cond_5

    if-eqz p3, :cond_6

    :cond_5
    const/4 v2, 0x4

    invoke-virtual {p0, p1, v2, p2}, Lf6/d;->d(Lj6/n;IZ)Z

    :cond_6
    const-class v2, Ljava/math/BigDecimal;

    if-ne v1, v2, :cond_8

    if-nez p2, :cond_7

    if-eqz p3, :cond_8

    :cond_7
    const/4 p3, 0x6

    invoke-virtual {p0, p1, p3, p2}, Lf6/d;->d(Lj6/n;IZ)Z

    :cond_8
    if-eqz p2, :cond_9

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lf6/d;->b(Lj6/n;Z[Le6/y;I)V

    return v3

    :cond_9
    return v0

    :cond_a
    :goto_0
    if-nez p2, :cond_b

    if-eqz p3, :cond_13

    :cond_b
    const/4 p3, 0x7

    invoke-virtual {p0, p1, p3, p2}, Lf6/d;->d(Lj6/n;IZ)Z

    return v3

    :cond_c
    :goto_1
    if-nez p2, :cond_d

    if-eqz p3, :cond_13

    :cond_d
    const/4 p3, 0x5

    invoke-virtual {p0, p1, p3, p2}, Lf6/d;->d(Lj6/n;IZ)Z

    return v3

    :cond_e
    :goto_2
    if-nez p2, :cond_f

    if-eqz p3, :cond_13

    :cond_f
    const/4 p3, 0x3

    invoke-virtual {p0, p1, p3, p2}, Lf6/d;->d(Lj6/n;IZ)Z

    return v3

    :cond_10
    :goto_3
    if-nez p2, :cond_11

    if-eqz p3, :cond_13

    :cond_11
    const/4 p3, 0x2

    invoke-virtual {p0, p1, p3, p2}, Lf6/d;->d(Lj6/n;IZ)Z

    return v3

    :cond_12
    :goto_4
    if-nez p2, :cond_14

    if-eqz p3, :cond_13

    goto :goto_5

    :cond_13
    return v3

    :cond_14
    :goto_5
    invoke-virtual {p0, p1, v3, p2}, Lf6/d;->d(Lj6/n;IZ)Z

    return v3
.end method

.method public static P(Lb6/h;Lj6/t;)Lu6/l;
    .locals 14

    iget-object v0, p1, Lj6/t;->e:Lj6/c;

    invoke-virtual {p1}, Lj6/t;->e()Lj6/h;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lb6/x;->A:Lb6/x;

    invoke-virtual {p0, v2}, Ld6/m;->m(Lb6/x;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lj6/h;->m()Ljava/lang/reflect/Member;

    move-result-object v2

    sget-object v3, Lb6/x;->B:Lb6/x;

    invoke-virtual {p0, v3}, Ld6/m;->m(Lb6/x;)Z

    move-result v3

    invoke-static {v2, v3}, Lu6/h;->e(Ljava/lang/reflect/Member;Z)V

    :cond_0
    invoke-virtual {p0}, Ld6/m;->d()Lb6/d;

    move-result-object v2

    sget-object v3, Lb6/x;->M:Lb6/x;

    invoke-virtual {p0, v3}, Ld6/m;->m(Lb6/x;)Z

    move-result v9

    iget-object v5, v0, Lj6/c;->m:Ljava/lang/Class;

    invoke-static {v5}, Lu6/l;->a(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v6

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    array-length p0, v6

    :cond_1
    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_2

    aget-object v3, v6, p0

    :try_start_0
    invoke-virtual {p1, v3}, Lj6/h;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to access @JsonValue of Enum value "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v4, Lu6/l;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v0, v6}, Lb6/d;->i(Lj6/c;[Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p0

    :goto_1
    move-object v8, p0

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    :goto_2
    invoke-virtual {p1}, Lj6/a;->f()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p0}, Lu6/h;->G(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    :cond_4
    const-class p1, Ljava/lang/Long;

    if-eq p0, p1, :cond_6

    const-class p1, Ljava/lang/Integer;

    if-eq p0, p1, :cond_6

    const-class p1, Ljava/lang/Short;

    if-eq p0, p1, :cond_6

    const-class p1, Ljava/lang/Byte;

    if-ne p0, p1, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    move v10, v1

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v1, 0x1

    goto :goto_3

    :goto_5
    invoke-direct/range {v4 .. v10}, Lu6/l;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;Ljava/lang/Enum;ZZ)V

    return-object v4

    :cond_7
    invoke-virtual {p0}, Ld6/m;->d()Lb6/d;

    move-result-object p1

    sget-object v2, Lb6/x;->M:Lb6/x;

    invoke-virtual {p0, v2}, Ld6/m;->m(Lb6/x;)Z

    move-result v8

    iget-object v4, v0, Lj6/c;->m:Ljava/lang/Class;

    invoke-static {v4}, Lu6/l;->a(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v5

    array-length v2, v5

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v5, v2}, Lb6/d;->q(Ld6/m;Lj6/c;[Ljava/lang/Enum;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    new-array v3, v3, [[Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v5, v3}, Lb6/d;->n(Ld6/m;Lj6/c;[Ljava/lang/Enum;[[Ljava/lang/String;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    array-length p0, v5

    move v7, v1

    :goto_6
    if-ge v7, p0, :cond_a

    aget-object v9, v5, v7

    aget-object v10, v2, v7

    if-nez v10, :cond_8

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    :cond_8
    invoke-virtual {v6, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v10, v3, v7

    if-eqz v10, :cond_9

    array-length v11, v10

    move v12, v1

    :goto_7
    if-ge v12, v11, :cond_9

    aget-object v13, v10, v12

    invoke-virtual {v6, v13, v9}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_a
    new-instance v3, Lu6/l;

    invoke-virtual {p1, v0, v5}, Lb6/d;->i(Lj6/c;[Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v7

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lu6/l;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;Ljava/lang/Enum;ZZ)V

    return-object v3
.end method

.method public static Q(Lb6/i;Lj6/a;)Lb6/n;
    .locals 1

    iget-object v0, p0, Lb6/i;->q:Lb6/h;

    invoke-virtual {v0}, Ld6/m;->d()Lb6/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb6/d;->m(Lj6/a;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lb6/i;->P(Ljava/lang/Object;)Lb6/n;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static R(Lb6/i;Lj6/a;)Lb6/w;
    .locals 1

    iget-object v0, p0, Lb6/i;->q:Lb6/h;

    invoke-virtual {v0}, Ld6/m;->d()Lb6/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb6/d;->w(Lj6/a;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lb6/i;->p0(Ljava/lang/Object;)Lb6/w;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final L(Lb6/i;Lj6/t;)Lg6/n1;
    .locals 29

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v7, v1, Lb6/i;->q:Lb6/h;

    iget-object v0, v2, Lj6/t;->b:Lj6/e0;

    const/16 v8, 0x9

    if-nez v0, :cond_0

    new-instance v0, Lg5/i;

    invoke-direct {v0, v8}, Lg5/i;-><init>(I)V

    :goto_0
    move-object v9, v0

    goto :goto_1

    :cond_0
    iget-boolean v3, v0, Lj6/e0;->j:Z

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lj6/e0;->m()V

    :cond_1
    iget-object v0, v0, Lj6/e0;->m:Lg5/i;

    goto :goto_0

    :goto_1
    iget-object v10, v2, Lj6/t;->a:Lb6/l;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v10, Lb6/l;->o:Ljava/lang/Class;

    iget-object v11, v2, Lj6/t;->e:Lj6/c;

    invoke-virtual {v7, v0, v11}, Ld6/n;->i(Ljava/lang/Class;Lj6/c;)Lj6/m0;

    move-result-object v12

    new-instance v13, Lf6/d;

    invoke-direct {v13, v2, v7}, Lf6/d;-><init>(Lj6/t;Ld6/m;)V

    iget-object v0, v9, Lg5/i;->m:Ljava/lang/Object;

    check-cast v0, Lj6/i0;

    const/4 v3, 0x0

    iget-boolean v4, v13, Lf6/d;->c:Z

    iget-boolean v5, v13, Lf6/d;->b:Z

    iget-object v6, v13, Lf6/d;->d:[Lj6/n;

    if-eqz v0, :cond_e

    move/from16 v16, v8

    iget-object v8, v0, Lj6/i0;->a:Lj6/n;

    invoke-virtual {v8}, Lj6/n;->u()I

    move-result v17

    if-nez v17, :cond_3

    if-eqz v8, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v8}, Lj6/a;->b()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Member;

    invoke-static {v0, v4}, Lu6/h;->e(Ljava/lang/reflect/Member;Z)V

    :cond_2
    aput-object v8, v6, v3

    move/from16 v20, v3

    move/from16 v21, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    :goto_2
    const/16 v18, 0x0

    move v7, v4

    goto/16 :goto_a

    :cond_3
    invoke-virtual {v7}, Ld6/m;->d()Lb6/d;

    move-result-object v14

    const/16 v18, 0x0

    iget-object v15, v0, Lj6/i0;->f:Ljava/util/ArrayList;

    if-eqz v15, :cond_5

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, v0, Lj6/i0;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v15, v15, [Lj6/v;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj6/v;

    goto :goto_4

    :cond_5
    :goto_3
    new-array v0, v3, [Lj6/v;

    :goto_4
    invoke-static {v14, v8, v0}, Ld1/c0;->b(Lb6/d;Lj6/n;[Lj6/v;)Ld1/c0;

    move-result-object v8

    iget v14, v8, Ld1/c0;->b:I

    new-array v15, v14, [Le6/y;

    move v0, v4

    const/16 v19, -0x1

    move v4, v3

    :goto_5
    if-ge v4, v14, :cond_d

    iget-object v3, v8, Ld1/c0;->d:Ljava/lang/Object;

    check-cast v3, [Lg5/m;

    aget-object v3, v3, v4

    move/from16 v21, v0

    iget-object v0, v3, Lg5/m;->o:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lr5/b;

    iget-object v0, v3, Lg5/m;->m:Ljava/lang/Object;

    check-cast v0, Lj6/m;

    iget-object v3, v3, Lg5/m;->n:Ljava/lang/Object;

    check-cast v3, Lj6/v;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lj6/v;->b()Lb6/i0;

    move-result-object v3

    move-object/from16 v23, v3

    goto :goto_6

    :cond_6
    move-object/from16 v23, v18

    :goto_6
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move/from16 v24, v4

    invoke-virtual {v7}, Ld6/m;->d()Lb6/d;

    move-result-object v4

    invoke-virtual {v4, v0}, Lb6/d;->m0(Lj6/a;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-gez v19, :cond_7

    move-object/from16 v25, v7

    move/from16 v7, v21

    move/from16 v4, v24

    move/from16 v19, v4

    const/16 v20, 0x0

    move/from16 v21, v5

    move-object/from16 v24, v6

    move-object v5, v0

    move-object/from16 v3, v23

    move-object/from16 v6, v22

    move-object/from16 v0, p0

    goto/16 :goto_9

    :cond_7
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "More than one \'any-setter\' specified (parameter #%d vs #%d)"

    invoke-virtual {v1, v2, v3, v0}, Lb6/i;->t0(Lj6/t;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v18

    :cond_8
    if-nez v23, :cond_b

    invoke-virtual {v7}, Ld6/m;->d()Lb6/d;

    move-result-object v3

    invoke-virtual {v3, v0}, Lb6/d;->g0(Lj6/h;)Lu6/r;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-static/range {v24 .. v24}, Lg5/e;->j(I)Lb6/i0;

    move-result-object v3

    move-object v4, v6

    const/4 v6, 0x0

    move/from16 v20, v24

    move-object/from16 v24, v4

    move/from16 v4, v20

    move-object/from16 v25, v7

    move/from16 v7, v21

    const/16 v20, 0x0

    move/from16 v21, v5

    move-object v5, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Le6/c;->O(Lb6/i;Lj6/t;Lb6/i0;ILj6/m;Lr5/b;)Le6/l;

    move-result-object v3

    aput-object v3, v15, v4

    goto :goto_7

    :cond_9
    move-object/from16 v25, v7

    move/from16 v7, v21

    move/from16 v4, v24

    const/16 v20, 0x0

    move/from16 v21, v5

    move-object/from16 v24, v6

    move-object v5, v0

    :goto_7
    if-nez v23, :cond_c

    if-eqz v22, :cond_a

    goto :goto_8

    :cond_a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, v8}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "Argument #%d of Creator %s has no property name (and is not Injectable): can not use as property-based Creator"

    invoke-virtual {v1, v2, v3, v0}, Lb6/i;->t0(Lj6/t;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v18

    :cond_b
    move-object/from16 v25, v7

    move/from16 v7, v21

    move/from16 v4, v24

    const/16 v20, 0x0

    move/from16 v21, v5

    move-object/from16 v24, v6

    move-object v5, v0

    :cond_c
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v6, v22

    move-object/from16 v3, v23

    :goto_9
    invoke-virtual/range {v0 .. v6}, Le6/c;->O(Lb6/i;Lj6/t;Lb6/i0;ILj6/m;Lr5/b;)Le6/l;

    move-result-object v3

    aput-object v3, v15, v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v0, v7

    move/from16 v3, v20

    move/from16 v5, v21

    move-object/from16 v6, v24

    move-object/from16 v7, v25

    goto/16 :goto_5

    :cond_d
    move/from16 v20, v3

    move/from16 v21, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    move v7, v0

    iget-object v0, v8, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v0, Lj6/n;

    invoke-virtual {v13, v0, v15}, Lf6/d;->c(Lj6/n;[Le6/y;)V

    goto :goto_a

    :cond_e
    move/from16 v20, v3

    move/from16 v21, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    move/from16 v16, v8

    goto/16 :goto_2

    :goto_a
    iget-object v0, v9, Lg5/i;->n:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_f

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_f
    invoke-virtual/range {v25 .. v25}, Ld6/m;->d()Lb6/d;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move/from16 v15, v20

    :goto_b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj6/i0;

    iget-object v0, v0, Lj6/i0;->a:Lj6/n;

    move-object/from16 v1, v18

    invoke-static {v8, v0, v1}, Ld1/c0;->b(Lb6/d;Lj6/n;[Lj6/v;)Ld1/c0;

    move-result-object v0

    iget v1, v0, Ld1/c0;->b:I

    iget-object v2, v0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v2, Lj6/n;

    new-array v4, v1, [Le6/y;

    if-nez v1, :cond_10

    invoke-virtual {v13, v2, v4}, Lf6/d;->c(Lj6/n;[Le6/y;)V

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v26, v8

    move-object/from16 v28, v9

    move-object/from16 v27, v12

    move-object/from16 v22, v14

    move/from16 v23, v15

    :goto_c
    const/4 v3, 0x1

    goto/16 :goto_f

    :cond_10
    move-object v5, v4

    move/from16 v4, v20

    const/4 v6, -0x1

    :goto_d
    if-ge v4, v1, :cond_13

    iget-object v3, v0, Ld1/c0;->d:Ljava/lang/Object;

    check-cast v3, [Lg5/m;

    aget-object v3, v3, v4

    move-object/from16 v22, v0

    iget-object v0, v3, Lg5/m;->m:Ljava/lang/Object;

    check-cast v0, Lj6/m;

    iget-object v3, v3, Lg5/m;->o:Ljava/lang/Object;

    check-cast v3, Lr5/b;

    if-eqz v3, :cond_11

    move/from16 v23, v6

    move-object v6, v3

    const/4 v3, 0x0

    move-object/from16 v26, v8

    move-object/from16 v28, v9

    move-object/from16 v27, v12

    move-object/from16 v8, v22

    move/from16 v9, v23

    move-object v12, v5

    move-object/from16 v22, v14

    move/from16 v23, v15

    move-object v5, v0

    move v14, v1

    move-object v15, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v6}, Le6/c;->O(Lb6/i;Lj6/t;Lb6/i0;ILj6/m;Lr5/b;)Le6/l;

    move-result-object v3

    aput-object v3, v12, v4

    move v6, v9

    goto :goto_e

    :cond_11
    move-object/from16 v26, v8

    move-object/from16 v28, v9

    move-object/from16 v27, v12

    move/from16 v23, v15

    move-object/from16 v8, v22

    move-object v15, v2

    move-object v12, v5

    move v9, v6

    move-object/from16 v22, v14

    move-object/from16 v2, p2

    move v14, v1

    move-object/from16 v1, p1

    if-gez v9, :cond_12

    move v6, v4

    :goto_e
    add-int/lit8 v4, v4, 0x1

    move-object v0, v8

    move-object v5, v12

    move v1, v14

    move-object v2, v15

    move-object/from16 v14, v22

    move/from16 v15, v23

    move-object/from16 v8, v26

    move-object/from16 v12, v27

    move-object/from16 v9, v28

    goto :goto_d

    :cond_12
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v3, v8}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "More than one argument (#%d and #%d) left as delegating for Creator %s: only one allowed"

    invoke-virtual {v1, v2, v3, v0}, Lb6/i;->t0(Lj6/t;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v18, 0x0

    throw v18

    :cond_13
    move-object/from16 v26, v8

    move-object/from16 v28, v9

    move-object/from16 v27, v12

    move-object/from16 v22, v14

    move/from16 v23, v15

    move-object v8, v0

    move v14, v1

    move-object v15, v2

    move-object v12, v5

    move v9, v6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-ltz v9, :cond_15

    const/4 v0, 0x1

    if-ne v14, v0, :cond_14

    invoke-static {v13, v15, v0, v0}, Le6/c;->N(Lf6/d;Lj6/n;ZZ)Z

    move-result v3

    goto :goto_f

    :cond_14
    invoke-virtual {v13, v15, v0, v12, v9}, Lf6/d;->b(Lj6/n;Z[Le6/y;I)V

    goto/16 :goto_c

    :goto_f
    or-int v15, v23, v3

    move-object/from16 v14, v22

    move-object/from16 v8, v26

    move-object/from16 v12, v27

    move-object/from16 v9, v28

    const/16 v18, 0x0

    goto/16 :goto_b

    :cond_15
    const-string v0, "No argument left as delegating for Creator %s: exactly one required"

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lb6/i;->t0(Lj6/t;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v18, 0x0

    throw v18

    :cond_16
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v28, v9

    move-object/from16 v27, v12

    move/from16 v23, v15

    invoke-virtual {v10}, Lb6/l;->b0()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, v11, Lj6/c;->y:Ljava/lang/Boolean;

    if-nez v0, :cond_19

    iget-object v0, v11, Lj6/c;->m:Ljava/lang/Class;

    sget-object v3, Lu6/h;->a:[Ljava/lang/annotation/Annotation;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_18

    invoke-static {v0}, Lu6/h;->w(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_17

    move-object/from16 v15, v18

    goto :goto_10

    :cond_17
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v15

    :goto_10
    if-eqz v15, :cond_18

    const/4 v3, 0x1

    goto :goto_11

    :cond_18
    move/from16 v3, v20

    :goto_11
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v11, Lj6/c;->y:Ljava/lang/Boolean;

    :cond_19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_1a
    :goto_12
    move-object/from16 v12, v27

    move-object/from16 v7, v28

    goto/16 :goto_17

    :cond_1b
    aget-object v0, v24, v20

    if-eqz v0, :cond_1c

    goto :goto_13

    :cond_1c
    invoke-virtual {v11}, Lj6/c;->j()Lg5/m;

    move-result-object v0

    iget-object v0, v0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v0, Lj6/d;

    if-eqz v0, :cond_1e

    if-eqz v21, :cond_1d

    invoke-virtual {v0}, Lj6/d;->b()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Member;

    invoke-static {v3, v7}, Lu6/h;->e(Ljava/lang/reflect/Member;Z)V

    :cond_1d
    aput-object v0, v24, v20

    :cond_1e
    :goto_13
    iget-object v0, v10, Lb6/l;->o:Ljava/lang/Class;

    invoke-static {v0}, Lu6/h;->u(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const-class v3, Ljava/lang/Throwable;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_12

    :cond_1f
    move-object/from16 v7, v28

    iget-object v0, v7, Lg5/i;->o:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_20

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_20
    invoke-virtual/range {v25 .. v25}, Ld6/m;->d()Lb6/d;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_14
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj6/i0;

    iget-object v3, v0, Lj6/i0;->a:Lj6/n;

    invoke-virtual {v3}, Lj6/n;->u()I

    move-result v10

    iget-object v11, v0, Lj6/i0;->a:Lj6/n;

    const/4 v0, 0x1

    if-ne v10, v0, :cond_21

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Lj6/h;->m()Ljava/lang/reflect/Member;

    move-result-object v0

    move-object/from16 v12, v27

    iget-object v3, v12, Lj6/m0;->o:Lr5/g;

    invoke-virtual {v3, v0}, Lr5/g;->a(Ljava/lang/reflect/Member;)Z

    move-result v0

    move/from16 v3, v20

    invoke-static {v13, v11, v3, v0}, Le6/c;->N(Lf6/d;Lj6/n;ZZ)Z

    goto :goto_14

    :cond_21
    move-object/from16 v12, v27

    new-array v14, v10, [Le6/y;

    const/4 v4, 0x0

    const/4 v15, 0x0

    :goto_15
    if-ge v4, v10, :cond_24

    invoke-virtual {v11, v4}, Lj6/n;->t(I)Lj6/m;

    move-result-object v5

    invoke-virtual {v8, v5}, Lb6/d;->u(Lj6/h;)Lr5/b;

    move-result-object v6

    if-eqz v6, :cond_23

    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Le6/c;->O(Lb6/i;Lj6/t;Lb6/i0;ILj6/m;Lr5/b;)Le6/l;

    move-result-object v3

    aput-object v3, v14, v4

    :cond_22
    move-object/from16 v1, p1

    goto :goto_16

    :cond_23
    invoke-virtual {v8, v5}, Lb6/d;->g0(Lj6/h;)Lu6/r;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-static {v4}, Lg5/e;->j(I)Lb6/i0;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v6}, Le6/c;->O(Lb6/i;Lj6/t;Lb6/i0;ILj6/m;Lr5/b;)Le6/l;

    move-result-object v3

    aput-object v3, v14, v4

    :goto_16
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, p2

    goto :goto_15

    :cond_24
    add-int/lit8 v15, v15, 0x1

    if-ne v15, v10, :cond_25

    const/4 v3, 0x0

    invoke-virtual {v13, v11, v3, v14, v3}, Lf6/d;->b(Lj6/n;Z[Le6/y;I)V

    move-object/from16 v2, p2

    move/from16 v20, v3

    move-object/from16 v27, v12

    goto :goto_14

    :cond_25
    move-object/from16 v2, p2

    move-object/from16 v27, v12

    const/16 v20, 0x0

    goto :goto_14

    :cond_26
    move-object/from16 v12, v27

    :goto_17
    if-nez v23, :cond_29

    iget-object v0, v7, Lg5/i;->p:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_27

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_28
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj6/i0;

    iget-object v3, v2, Lj6/i0;->a:Lj6/n;

    invoke-virtual {v3}, Lj6/n;->u()I

    move-result v3

    iget-object v2, v2, Lj6/i0;->a:Lj6/n;

    const/4 v4, 0x1

    if-ne v3, v4, :cond_28

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lj6/h;->m()Ljava/lang/reflect/Member;

    move-result-object v3

    iget-object v4, v12, Lj6/m0;->o:Lr5/g;

    invoke-virtual {v4, v3}, Lr5/g;->a(Ljava/lang/reflect/Member;)Z

    move-result v3

    const/4 v4, 0x0

    invoke-static {v13, v2, v4, v3}, Le6/c;->N(Lf6/d;Lj6/n;ZZ)Z

    goto :goto_18

    :cond_29
    const/16 v0, 0x8

    aget-object v2, v24, v0

    iget-object v3, v13, Lf6/d;->g:[Le6/y;

    invoke-virtual {v13, v1, v2, v3}, Lf6/d;->a(Lb6/i;Lj6/n;[Le6/y;)Lb6/l;

    move-result-object v2

    const/16 v3, 0xa

    aget-object v4, v24, v3

    iget-object v5, v13, Lf6/d;->h:[Le6/y;

    invoke-virtual {v13, v1, v4, v5}, Lf6/d;->a(Lb6/i;Lj6/n;[Le6/y;)Lb6/l;

    move-result-object v1

    iget-object v4, v13, Lf6/d;->a:Lj6/t;

    iget-object v4, v4, Lj6/t;->a:Lb6/l;

    new-instance v5, Lg6/n1;

    invoke-direct {v5, v4}, Lg6/n1;-><init>(Lb6/l;)V

    const/16 v20, 0x0

    aget-object v4, v24, v20

    aget-object v0, v24, v0

    iget-object v6, v13, Lf6/d;->g:[Le6/y;

    aget-object v7, v24, v16

    iget-object v8, v13, Lf6/d;->i:[Le6/y;

    iput-object v4, v5, Lg6/n1;->n:Lj6/n;

    iput-object v0, v5, Lg6/n1;->r:Lj6/n;

    iput-object v2, v5, Lg6/n1;->q:Lb6/l;

    iput-object v6, v5, Lg6/n1;->s:[Le6/y;

    iput-object v7, v5, Lg6/n1;->o:Lj6/n;

    iput-object v8, v5, Lg6/n1;->p:[Le6/y;

    aget-object v0, v24, v3

    iget-object v2, v13, Lf6/d;->h:[Le6/y;

    iput-object v0, v5, Lg6/n1;->u:Lj6/n;

    iput-object v1, v5, Lg6/n1;->t:Lb6/l;

    iput-object v2, v5, Lg6/n1;->v:[Le6/y;

    const/16 v19, 0x1

    aget-object v0, v24, v19

    iput-object v0, v5, Lg6/n1;->w:Lj6/n;

    const/4 v0, 0x2

    aget-object v0, v24, v0

    iput-object v0, v5, Lg6/n1;->x:Lj6/n;

    const/4 v0, 0x3

    aget-object v0, v24, v0

    iput-object v0, v5, Lg6/n1;->y:Lj6/n;

    const/4 v0, 0x4

    aget-object v0, v24, v0

    iput-object v0, v5, Lg6/n1;->z:Lj6/n;

    const/4 v0, 0x5

    aget-object v0, v24, v0

    iput-object v0, v5, Lg6/n1;->A:Lj6/n;

    const/4 v0, 0x6

    aget-object v0, v24, v0

    iput-object v0, v5, Lg6/n1;->B:Lj6/n;

    const/4 v0, 0x7

    aget-object v0, v24, v0

    iput-object v0, v5, Lg6/n1;->C:Lj6/n;

    return-object v5
.end method

.method public final M(Ljava/lang/Class;)Lb6/n;
    .locals 3

    iget-object p0, p0, Le6/c;->l:Ld6/j;

    invoke-virtual {p0}, Ld6/j;->b()Lu6/d;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Lu6/d;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lu6/d;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le6/p;

    check-cast v0, Lcom/fasterxml/jackson/databind/module/b;

    iget-object v2, v0, Lcom/fasterxml/jackson/databind/module/b;->l:Ljava/util/HashMap;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lt6/b;

    invoke-direct {v1, p1}, Lt6/b;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb6/n;

    if-nez v1, :cond_2

    iget-boolean v2, v0, Lcom/fasterxml/jackson/databind/module/b;->m:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/module/b;->l:Ljava/util/HashMap;

    new-instance v1, Lt6/b;

    const-class v2, Ljava/lang/Enum;

    invoke-direct {v1, v2}, Lt6/b;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lb6/n;

    :cond_2
    :goto_0
    if-eqz v1, :cond_0

    :cond_3
    return-object v1
.end method

.method public final O(Lb6/i;Lj6/t;Lb6/i0;ILj6/m;Lr5/b;)Le6/l;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p5

    iget-object v2, v1, Lb6/i;->q:Lb6/h;

    invoke-virtual {v2}, Ld6/m;->d()Lb6/d;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    sget-object v3, Lb6/h0;->u:Lb6/h0;

    move-object v5, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v8}, Lb6/d;->r0(Lj6/h;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v8}, Lb6/d;->M(Lj6/a;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v8}, Lb6/d;->R(Lj6/a;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v8}, Lb6/d;->L(Lj6/a;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v6, v7, v9}, Lb6/h0;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lb6/h0;

    move-result-object v5

    invoke-virtual {v3, v8}, Lb6/d;->j0(Lj6/a;)Lb6/i0;

    move-result-object v3

    move-object/from16 v17, v5

    move-object v5, v3

    move-object/from16 v3, v17

    :goto_0
    iget-object v6, v8, Lj6/m;->o:Lb6/l;

    invoke-virtual {v0, v1, v8, v6}, Le6/c;->U(Lb6/i;Lj6/h;Lb6/l;)Lb6/l;

    move-result-object v6

    iget-object v7, v6, Lb6/l;->r:Ljava/lang/Object;

    check-cast v7, Ln6/d;

    if-nez v7, :cond_1

    invoke-virtual {v0, v2, v6}, Le6/c;->S(Lb6/h;Lb6/l;)Lo6/a;

    move-result-object v7

    :cond_1
    invoke-virtual {v2}, Ld6/m;->d()Lb6/d;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v8}, Lb6/d;->c0(Lj6/a;)Lr5/n0;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lr5/n0;->b()Lr5/b1;

    move-result-object v4

    invoke-virtual {v0}, Lr5/n0;->a()Lr5/b1;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v4

    :goto_1
    iget-object v9, v6, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v2, v9}, Ld6/n;->e(Ljava/lang/Class;)Ld6/d;

    iget-object v2, v2, Ld6/n;->r:La6/n;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lr5/n0;->n:Lr5/n0;

    if-nez v4, :cond_3

    invoke-virtual {v2}, Lr5/n0;->b()Lr5/b1;

    move-result-object v4

    :cond_3
    move-object v15, v4

    if-nez v0, :cond_4

    invoke-virtual {v2}, Lr5/n0;->a()Lr5/b1;

    move-result-object v0

    :cond_4
    move-object/from16 v16, v0

    if-nez v15, :cond_6

    if-eqz v16, :cond_5

    goto :goto_3

    :cond_5
    move-object v11, v3

    :goto_2
    move-object/from16 v0, p2

    goto :goto_4

    :cond_6
    :goto_3
    new-instance v9, Lb6/h0;

    iget-object v10, v3, Lb6/h0;->l:Ljava/lang/Boolean;

    iget-object v11, v3, Lb6/h0;->m:Ljava/lang/String;

    iget-object v12, v3, Lb6/h0;->n:Ljava/lang/Integer;

    iget-object v13, v3, Lb6/h0;->o:Ljava/lang/String;

    iget-object v14, v3, Lb6/h0;->p:Lb6/g0;

    invoke-direct/range {v9 .. v16}, Lb6/h0;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lb6/g0;Lr5/b1;Lr5/b1;)V

    move-object v11, v9

    goto :goto_2

    :goto_4
    iget-object v0, v0, Lj6/t;->e:Lj6/c;

    iget-object v0, v0, Lj6/c;->u:Lu6/b;

    new-instance v2, Le6/l;

    move-object/from16 v3, p3

    move/from16 v9, p4

    move-object/from16 v10, p6

    move-object v4, v6

    move-object v6, v7

    move-object v7, v0

    invoke-direct/range {v2 .. v11}, Le6/l;-><init>(Lb6/i0;Lb6/l;Lb6/i0;Ln6/d;Lu6/b;Lj6/m;ILr5/b;Lb6/h0;)V

    invoke-static {v1, v8}, Le6/c;->Q(Lb6/i;Lj6/a;)Lb6/n;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, v4, Lb6/l;->q:Ljava/lang/Object;

    check-cast v0, Lb6/n;

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v1, v0, v2, v4}, Lb6/i;->d0(Lb6/n;Lb6/f;Lb6/l;)Lb6/n;

    move-result-object v0

    invoke-virtual {v2, v0}, Le6/l;->G(Lb6/n;)Le6/y;

    move-result-object v0

    check-cast v0, Le6/l;

    return-object v0

    :cond_8
    return-object v2
.end method

.method public final S(Lb6/h;Lb6/l;)Lo6/a;
    .locals 5

    iget-object v0, p2, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ld6/m;->l(Ljava/lang/Class;)Lj6/t;

    move-result-object v0

    iget-object v0, v0, Lj6/t;->e:Lj6/c;

    invoke-virtual {p1}, Ld6/m;->d()Lb6/d;

    move-result-object v1

    invoke-virtual {v1, p2, p1, v0}, Lb6/d;->f0(Lb6/l;Ld6/m;Lj6/c;)Lo6/n;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object p0, p1, Ld6/m;->m:Ld6/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v2

    :cond_0
    iget-object v3, p1, Ld6/n;->o:Lo6/m;

    invoke-virtual {v3, p1, v0}, Lo6/m;->E(Ld6/m;Lj6/c;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, v1, Lo6/n;->f:Ljava/lang/Class;

    if-nez v3, :cond_2

    invoke-virtual {p2}, Lb6/l;->a0()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1, p2}, Le6/c;->t(Lb6/h;Lb6/l;)Lb6/l;

    move-result-object p0

    iget-object v3, p2, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p0, v3}, Lb6/l;->Z(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    iget-object v3, v1, Lo6/n;->f:Ljava/lang/Class;

    if-ne v3, p0, :cond_1

    goto :goto_0

    :cond_1
    const-class v3, Lo6/n;

    const-string v4, "withDefaultImpl"

    invoke-static {v3, v1, v4}, Lu6/h;->F(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lo6/n;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    iput-boolean v4, v3, Lo6/n;->d:Z

    iget-object v4, v1, Lo6/n;->a:Lr5/t0;

    iput-object v4, v3, Lo6/n;->a:Lr5/t0;

    iget-object v4, v1, Lo6/n;->b:Lr5/s0;

    iput-object v4, v3, Lo6/n;->b:Lr5/s0;

    iget-object v4, v1, Lo6/n;->c:Ljava/lang/String;

    iput-object v4, v3, Lo6/n;->c:Ljava/lang/String;

    iget-boolean v4, v1, Lo6/n;->d:Z

    iput-boolean v4, v3, Lo6/n;->d:Z

    iget-object v4, v1, Lo6/n;->g:Lo6/p;

    iput-object v4, v3, Lo6/n;->g:Lo6/p;

    iput-object p0, v3, Lo6/n;->f:Ljava/lang/Class;

    iget-object p0, v1, Lo6/n;->e:Ljava/lang/Boolean;

    iput-object p0, v3, Lo6/n;->e:Ljava/lang/Boolean;

    move-object v1, v3

    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {v1, p1, p2, v0}, Lo6/n;->a(Lb6/h;Lb6/l;Ljava/util/ArrayList;)Lo6/a;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lu6/h;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lh6/b;

    invoke-direct {p2, v2, p1}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public final T(Lb6/i;Lj6/t;)Le6/c0;
    .locals 5

    iget-object v0, p1, Lb6/i;->q:Lb6/h;

    iget-object v1, p2, Lj6/t;->e:Lj6/c;

    iget-object v2, p2, Lj6/t;->a:Lb6/l;

    invoke-virtual {v0}, Ld6/m;->d()Lb6/d;

    move-result-object v3

    invoke-virtual {v3, v1}, Lb6/d;->h0(Lj6/c;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    instance-of v4, v1, Le6/c0;

    if-eqz v4, :cond_0

    move-object v3, v1

    check-cast v3, Le6/c0;

    goto :goto_0

    :cond_0
    instance-of v4, v1, Ljava/lang/Class;

    if-eqz v4, :cond_3

    check-cast v1, Ljava/lang/Class;

    invoke-static {v1}, Lu6/h;->t(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const-class v3, Le6/c0;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ld6/m;->j()V

    sget-object v3, Lb6/x;->A:Lb6/x;

    invoke-virtual {v0, v3}, Ld6/m;->m(Lb6/x;)Z

    move-result v0

    invoke-static {v1, v0}, Lu6/h;->h(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Le6/c0;

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "AnnotationIntrospector returned Class "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "; expected Class<ValueInstantiator>"

    invoke-static {v1, p1, p2}, La6/q;->i(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "AnnotationIntrospector returned key deserializer definition of type "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; expected type KeyDeserializer or Class<KeyDeserializer> instead"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    if-nez v3, :cond_5

    iget-object v0, v2, Lb6/l;->o:Ljava/lang/Class;

    invoke-static {v0}, Ll7/a;->l(Ljava/lang/Class;)Le6/b0;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-virtual {p0, p1, p2}, Le6/c;->L(Lb6/i;Lj6/t;)Lg6/n1;

    move-result-object v3

    :cond_5
    iget-object p0, p0, Le6/c;->l:Ld6/j;

    iget-object p0, p0, Ld6/j;->p:[Le6/d0;

    array-length p1, p0

    if-lez p1, :cond_8

    const/4 p1, 0x0

    :goto_1
    array-length p2, p0

    if-ge p1, p2, :cond_8

    array-length p2, p0

    if-ge p1, p2, :cond_7

    add-int/lit8 p2, p1, 0x1

    aget-object p1, p0, p1

    check-cast p1, Lcom/fasterxml/jackson/databind/module/f;

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/module/f;->l:Ljava/util/HashMap;

    new-instance v0, Lt6/b;

    iget-object v1, v2, Lb6/l;->o:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lt6/b;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le6/c0;

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    move-object v3, p1

    :goto_2
    move p1, p2

    goto :goto_1

    :cond_7
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_8
    return-object v3
.end method

.method public final U(Lb6/i;Lj6/h;Lb6/l;)Lb6/l;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v1, Lb6/i;->q:Lb6/h;

    invoke-virtual {v4}, Ld6/m;->d()Lb6/d;

    move-result-object v5

    if-nez v5, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v6, v3, Lt6/g;

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Lb6/l;->T()Lb6/l;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v2}, Lb6/d;->w(Lj6/a;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Lb6/i;->p0(Ljava/lang/Object;)Lb6/w;

    move-result-object v6

    if-eqz v6, :cond_1

    check-cast v3, Lt6/g;

    new-instance v7, Lt6/g;

    iget-object v8, v3, Lb6/l;->o:Ljava/lang/Class;

    iget-object v9, v3, Lt6/l;->v:Lt6/o;

    iget-object v10, v3, Lt6/l;->t:Lb6/l;

    iget-object v11, v3, Lt6/l;->u:[Lb6/l;

    iget-object v12, v3, Lt6/g;->x:Lb6/l;

    invoke-virtual {v12, v6}, Lb6/l;->o0(Ljava/lang/Object;)Lb6/l;

    move-result-object v12

    iget-object v13, v3, Lt6/g;->y:Lb6/l;

    iget-object v14, v3, Lb6/l;->q:Ljava/lang/Object;

    iget-object v15, v3, Lb6/l;->r:Ljava/lang/Object;

    iget-boolean v3, v3, Lb6/l;->s:Z

    move/from16 v16, v3

    invoke-direct/range {v7 .. v16}, Lt6/g;-><init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;Lb6/l;Lb6/l;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object v3, v7

    :cond_1
    invoke-virtual {v3}, Lb6/l;->W()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5, v2}, Lb6/d;->d(Lj6/a;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Lb6/i;->P(Ljava/lang/Object;)Lb6/n;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v3, v1}, Lb6/l;->k0(Lb6/n;)Lb6/l;

    move-result-object v3

    :cond_2
    invoke-virtual {v4}, Ld6/m;->d()Lb6/d;

    move-result-object v1

    invoke-virtual {v1, v4, v2, v3}, Lb6/d;->K(Ld6/m;Lj6/h;Lb6/l;)Lo6/n;

    move-result-object v1

    invoke-virtual {v3}, Lb6/l;->Q()Lb6/l;

    move-result-object v6

    if-nez v1, :cond_3

    invoke-virtual {v0, v4, v6}, Le6/c;->S(Lb6/h;Lb6/l;)Lo6/a;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v7, v4, Ld6/n;->o:Lo6/m;

    invoke-virtual {v7, v4, v2, v6}, Lo6/m;->F(Ld6/m;Lj6/h;Lb6/l;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v1, v4, v6, v7}, Lo6/n;->a(Lb6/h;Lb6/l;Ljava/util/ArrayList;)Lo6/a;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v3, v1}, Lb6/l;->j0(Ljava/lang/Object;)Lb6/l;

    move-result-object v3

    :cond_4
    invoke-virtual {v4}, Ld6/m;->d()Lb6/d;

    move-result-object v1

    invoke-virtual {v1, v4, v2, v3}, Lb6/d;->S(Ld6/m;Lj6/h;Lb6/l;)Lo6/n;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual {v0, v4, v3}, Le6/c;->S(Lb6/h;Lb6/l;)Lo6/a;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v0, v4, Ld6/n;->o:Lo6/m;

    invoke-virtual {v0, v4, v2, v3}, Lo6/m;->F(Ld6/m;Lj6/h;Lb6/l;)Ljava/util/ArrayList;

    move-result-object v0

    :try_start_0
    invoke-virtual {v1, v4, v3, v0}, Lo6/n;->a(Lb6/h;Lb6/l;Ljava/util/ArrayList;)Lo6/a;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {v3, v0}, Lb6/l;->n0(Ljava/lang/Object;)Lb6/l;

    move-result-object v3

    :cond_6
    invoke-virtual {v5, v4, v2, v3}, Lb6/d;->v0(Ld6/m;Lj6/a;Lb6/l;)Lb6/l;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lu6/h;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lh6/b;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
.end method

.method public abstract V(Ld6/j;)Le6/h;
.end method

.method public final d(Lb6/i;Lt6/c;Lj6/t;)Lb6/n;
    .locals 12

    iget-object v0, p2, Lt6/c;->x:Lb6/l;

    iget-object v1, p2, Lb6/l;->o:Ljava/lang/Class;

    iget-object v2, v0, Lb6/l;->q:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Lb6/n;

    iget-object v2, p1, Lb6/i;->q:Lb6/h;

    iget-object v3, v0, Lb6/l;->r:Ljava/lang/Object;

    check-cast v3, Ln6/d;

    if-nez v3, :cond_0

    invoke-virtual {p0, v2, v0}, Le6/c;->S(Lb6/h;Lb6/l;)Lo6/a;

    move-result-object v3

    :cond_0
    iget-object v10, p0, Le6/c;->l:Ld6/j;

    invoke-virtual {v10}, Ld6/j;->b()Lu6/d;

    move-result-object v4

    :cond_1
    invoke-virtual {v4}, Lu6/d;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lu6/d;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le6/p;

    check-cast v5, Lcom/fasterxml/jackson/databind/module/b;

    invoke-virtual {v5, p2}, Lcom/fasterxml/jackson/databind/module/b;->a(Lb6/l;)Lb6/n;

    move-result-object v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_2
    move-object v5, v6

    :goto_0
    if-nez v5, :cond_3

    if-nez v7, :cond_3

    const-class v4, Ljava/util/EnumSet;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v5, Lg6/q;

    invoke-direct {v5, v0}, Lg6/q;-><init>(Lb6/l;)V

    :cond_3
    if-nez v5, :cond_1d

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    const/4 v8, 0x1

    if-nez v4, :cond_4

    invoke-virtual {p2}, Lb6/l;->a0()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    sget-object v4, Le6/b;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-eqz v1, :cond_5

    iget-object v4, v2, Ld6/m;->m:Ld6/a;

    iget-object v4, v4, Ld6/a;->l:Lt6/p;

    invoke-virtual {v4, p2, v1, v8}, Lt6/p;->k(Lb6/l;Ljava/lang/Class;Z)Lb6/l;

    move-result-object v1

    check-cast v1, Lt6/c;

    goto :goto_1

    :cond_5
    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_6

    invoke-virtual {v2, v1}, Lb6/h;->s(Lb6/l;)Lj6/t;

    move-result-object p3

    move-object v4, v1

    goto :goto_2

    :cond_6
    move-object v4, p2

    :goto_2
    if-nez v5, :cond_1d

    invoke-virtual {p0, p1, p3}, Le6/c;->T(Lb6/i;Lj6/t;)Le6/c0;

    move-result-object v5

    invoke-virtual {v5}, Le6/c0;->k()Z

    move-result p0

    if-nez p0, :cond_1b

    const-class p0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v4, p0}, Lb6/l;->Z(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_7

    new-instance p0, Lg6/a;

    invoke-direct {p0, v4, v7, v3, v5}, Lg6/i;-><init>(Lt6/c;Lb6/n;Ln6/d;Le6/c0;)V

    return-object p0

    :cond_7
    iget-object p0, v4, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "java.util."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_a

    :cond_8
    const-string p1, "java.util.Collections$"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 p1, 0x16

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_9
    move-object p1, v6

    :goto_3
    const/4 p2, 0x4

    const-class p3, Ljava/util/Set;

    const-string v1, "Set"

    const-class v2, Ljava/util/List;

    const-string v9, "List"

    if-eqz p1, :cond_15

    const-string p0, "Unmodifiable"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/16 v11, 0xc

    if-eqz p0, :cond_a

    invoke-virtual {p1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_a
    move-object p0, v6

    :goto_4
    if-eqz p0, :cond_c

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p0, Lf6/m;

    invoke-virtual {v4, p3}, Lt6/l;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lf6/m;-><init>(ILb6/l;)V

    goto/16 :goto_7

    :cond_b
    invoke-virtual {p0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    new-instance p0, Lf6/m;

    invoke-virtual {v4, v2}, Lt6/l;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object p1

    const/4 p2, 0x5

    invoke-direct {p0, p2, p1}, Lf6/m;-><init>(ILb6/l;)V

    goto/16 :goto_7

    :cond_c
    const-string p0, "Singleton"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/16 p2, 0x9

    if-eqz p0, :cond_d

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_d
    move-object p0, v6

    :goto_5
    if-eqz p0, :cond_f

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    new-instance p0, Lf6/m;

    invoke-virtual {v4, p3}, Lt6/l;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object p1

    invoke-direct {p0, v8, p1}, Lf6/m;-><init>(ILb6/l;)V

    goto :goto_7

    :cond_e
    invoke-virtual {p0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    new-instance p0, Lf6/m;

    invoke-virtual {v4, v2}, Lt6/l;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object p1

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lf6/m;-><init>(ILb6/l;)V

    goto :goto_7

    :cond_f
    const-string p0, "Synchronized"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-virtual {p1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_10
    move-object p0, v6

    :goto_6
    if-eqz p0, :cond_13

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    new-instance p0, Lf6/m;

    invoke-virtual {v4, p3}, Lt6/l;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object p1

    const/4 p2, 0x7

    invoke-direct {p0, p2, p1}, Lf6/m;-><init>(ILb6/l;)V

    goto :goto_7

    :cond_11
    invoke-virtual {p0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    new-instance p0, Lf6/m;

    invoke-virtual {v4, v2}, Lt6/l;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lf6/m;-><init>(ILb6/l;)V

    goto :goto_7

    :cond_12
    const-string p1, "Collection"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    new-instance p0, Lf6/m;

    const-class p1, Ljava/util/Collection;

    invoke-virtual {v4, p1}, Lt6/l;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object p1

    const/16 p2, 0x8

    invoke-direct {p0, p2, p1}, Lf6/m;-><init>(ILb6/l;)V

    goto :goto_7

    :cond_13
    move-object p0, v6

    :goto_7
    if-nez p0, :cond_14

    goto/16 :goto_a

    :cond_14
    new-instance v6, Lg6/e1;

    invoke-direct {v6, p0}, Lg6/e1;-><init>(Lf6/m;)V

    goto :goto_a

    :cond_15
    const-string p1, "java.util.Arrays$"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_16
    move-object p1, v6

    :goto_8
    const/16 v8, 0xb

    if-eqz p1, :cond_17

    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1a

    new-instance v6, Lg6/e1;

    new-instance p0, Lf6/m;

    invoke-virtual {v4, v2}, Lt6/l;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object p1

    invoke-direct {p0, v8, p1}, Lf6/m;-><init>(ILb6/l;)V

    invoke-direct {v6, p0}, Lg6/e1;-><init>(Lf6/m;)V

    goto :goto_a

    :cond_17
    const-string p1, "java.util.ImmutableCollections$"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/16 p1, 0x1f

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_9

    :cond_18
    move-object p0, v6

    :goto_9
    if-eqz p0, :cond_1a

    invoke-virtual {p0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_19

    new-instance v6, Lg6/e1;

    new-instance p0, Lf6/m;

    invoke-virtual {v4, v2}, Lt6/l;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object p1

    invoke-direct {p0, v8, p1}, Lf6/m;-><init>(ILb6/l;)V

    invoke-direct {v6, p0}, Lg6/e1;-><init>(Lf6/m;)V

    goto :goto_a

    :cond_19
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1a

    new-instance v6, Lg6/e1;

    new-instance p0, Lf6/m;

    invoke-virtual {v4, p3}, Lt6/l;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lf6/m;-><init>(ILb6/l;)V

    invoke-direct {v6, p0}, Lg6/e1;-><init>(Lf6/m;)V

    :cond_1a
    :goto_a
    if-eqz v6, :cond_1b

    return-object v6

    :cond_1b
    const-class p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lb6/l;->Z(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1c

    new-instance v3, Lg6/p1;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v8, v7

    invoke-direct/range {v3 .. v9}, Lg6/p1;-><init>(Lb6/l;Le6/c0;Lb6/n;Lb6/n;Le6/r;Ljava/lang/Boolean;)V

    move-object v5, v3

    goto :goto_b

    :cond_1c
    new-instance p0, Lg6/i;

    invoke-direct {p0, v4, v7, v3, v5}, Lg6/i;-><init>(Lt6/c;Lb6/n;Ln6/d;Le6/c0;)V

    move-object v5, p0

    :cond_1d
    :goto_b
    invoke-virtual {v10}, Ld6/j;->c()Z

    move-result p0

    if-eqz p0, :cond_1e

    invoke-virtual {v10}, Ld6/j;->a()Lu6/d;

    move-result-object p0

    :goto_c
    invoke-virtual {p0}, Lu6/d;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Lu6/d;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le6/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_c

    :cond_1e
    return-object v5
.end method

.method public final t(Lb6/h;Lb6/l;)Lb6/l;
    .locals 7

    :goto_0
    iget-object v0, p2, Lb6/l;->o:Ljava/lang/Class;

    iget-object v1, p0, Le6/c;->l:Ld6/j;

    iget-object v1, v1, Ld6/j;->o:[Lb6/a;

    array-length v2, v1

    const/4 v3, 0x0

    if-lez v2, :cond_4

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    :cond_0
    move v5, v2

    :goto_2
    if-eqz v5, :cond_4

    array-length v5, v1

    if-ge v4, v5, :cond_3

    add-int/lit8 v5, v4, 0x1

    aget-object v4, v1, v4

    check-cast v4, Lcom/fasterxml/jackson/databind/module/a;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Lcom/fasterxml/jackson/databind/module/a;->l:Ljava/util/HashMap;

    new-instance v6, Lt6/b;

    invoke-direct {v6, v0}, Lt6/b;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    if-nez v4, :cond_1

    move-object v4, v3

    goto :goto_3

    :cond_1
    iget-object v6, p1, Ld6/m;->m:Ld6/a;

    iget-object v6, v6, Ld6/a;->l:Lt6/p;

    invoke-virtual {v6, p2, v4, v2}, Lt6/p;->k(Lb6/l;Ljava/lang/Class;Z)Lb6/l;

    move-result-object v4

    :goto_3
    if-eqz v4, :cond_2

    invoke-virtual {v4, v0}, Lb6/l;->Z(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_2

    move-object v3, v4

    goto :goto_4

    :cond_2
    move v4, v5

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_4
    :goto_4
    if-nez v3, :cond_5

    return-object p2

    :cond_5
    iget-object v1, v3, Lb6/l;->o:Ljava/lang/Class;

    if-eq v0, v1, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object p2, v3

    goto :goto_0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid abstract type resolution from "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": latter is not a subtype of former"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
