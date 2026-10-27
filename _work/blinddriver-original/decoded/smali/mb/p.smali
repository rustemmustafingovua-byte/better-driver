.class public final Lmb/p;
.super Lhb/d;
.source "SourceFile"


# instance fields
.field public final f:Lmb/l6;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x7

    invoke-direct {p0, v0}, La/a;-><init>(I)V

    new-instance v0, Lmb/l6;

    invoke-direct {v0}, Lmb/l6;-><init>()V

    iput-object v0, p0, Lmb/p;->f:Lmb/l6;

    const-string p0, "SC"

    iget-object v1, v0, Lmb/l6;->f:Lmb/a;

    iput-object p0, v1, Lmb/a;->i:Ljava/lang/String;

    const-class p0, Ljava/lang/Object;

    iput-object p0, v0, Lmb/l6;->h:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final varargs F(Ljava/io/StringReader;Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p2

    new-instance v1, Lmb/j6;

    const/4 v2, 0x0

    move-object/from16 v3, p1

    invoke-direct {v1, v2, v3}, Lmb/j6;-><init>(Ljava/lang/String;Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    const-string v4, "\""

    if-eqz v3, :cond_19

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_18

    const/4 v5, 0x0

    aget-object v3, v3, v5

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    move-object/from16 v7, p0

    iget-object v7, v7, Lmb/p;->f:Lmb/l6;

    iget-object v8, v7, Lmb/l6;->f:Lmb/a;

    iget-object v9, v7, Lmb/l6;->f:Lmb/a;

    iput-object v0, v8, Lmb/a;->j:[Ljava/lang/Class;

    new-array v0, v6, [Z

    aput-boolean v6, v0, v5

    invoke-virtual {v7, v6}, Lmb/l6;->G(I)V

    invoke-virtual {v7, v5}, Lmb/l6;->F(I)Lmb/k6;

    move-result-object v10

    aget-boolean v0, v0, v5

    iput-boolean v0, v10, Lmb/k6;->a:Z

    new-array v0, v6, [Z

    aput-boolean v5, v0, v5

    invoke-virtual {v7, v6}, Lmb/l6;->G(I)V

    invoke-virtual {v7, v5}, Lmb/l6;->F(I)Lmb/k6;

    move-result-object v10

    aget-boolean v0, v0, v5

    iput-boolean v0, v10, Lmb/k6;->b:Z

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v7, v6}, Lmb/l6;->G(I)V

    invoke-virtual {v7, v5}, Lmb/l6;->F(I)Lmb/k6;

    move-result-object v10

    aget-object v0, v0, v5

    iput-object v0, v10, Lmb/k6;->c:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v6}, Lmb/l6;->G(I)V

    invoke-virtual {v7, v5}, Lmb/l6;->F(I)Lmb/k6;

    move-result-object v10

    aget-object v0, v0, v5

    iput-object v0, v10, Lmb/k6;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    filled-new-array/range {p3 .. p3}, [[Ljava/lang/String;

    move-result-object v10

    filled-new-array {v0}, [[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v7, v6}, Lmb/l6;->G(I)V

    invoke-virtual {v7, v6}, Lmb/l6;->G(I)V

    invoke-virtual {v7, v5}, Lmb/l6;->F(I)Lmb/k6;

    move-result-object v11

    aget-object v10, v10, v5

    invoke-virtual {v10}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    iput-object v10, v11, Lmb/k6;->e:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-virtual {v0}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    iput-object v0, v11, Lmb/k6;->f:[Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v0

    filled-new-array {v0}, [[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v7, v6}, Lmb/l6;->G(I)V

    invoke-virtual {v7, v5}, Lmb/l6;->F(I)Lmb/k6;

    move-result-object v3

    aget-object v0, v0, v5

    iput-object v0, v3, Lmb/k6;->g:[Ljava/lang/Class;

    filled-new-array {v1}, [Lmb/j6;

    move-result-object v0

    new-instance v1, Lmb/d6;

    aget-object v0, v0, v5

    invoke-direct {v1, v0}, Lmb/d6;-><init>(Lmb/j6;)V

    filled-new-array {v1}, [Lmb/d6;

    move-result-object v0

    const/4 v3, -0x1

    iput v3, v1, Lmb/d6;->d:I

    invoke-virtual {v7, v6}, Lmb/l6;->G(I)V

    aget-object v1, v0, v5

    iget-object v10, v1, Lmb/d6;->a:Lmb/j6;

    iget-object v10, v10, Lmb/j6;->b:Ljava/lang/String;

    iget-object v11, v8, Lmb/a;->f:Lmb/o6;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v13, v8, Lmb/a;->g:[Ljava/lang/String;

    array-length v14, v13

    move v15, v5

    :goto_0
    if-ge v15, v14, :cond_0

    aget-object v3, v13, v15

    new-instance v5, Lmb/d6;

    new-instance v6, Lmb/j6;

    move-object/from16 p2, v0

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v2, v0}, Lmb/j6;-><init>(Ljava/lang/String;Ljava/io/Reader;)V

    invoke-direct {v5, v6}, Lmb/d6;-><init>(Lmb/j6;)V

    iget v0, v8, Lmb/a;->h:I

    iput v0, v5, Lmb/d6;->d:I

    invoke-virtual {v5}, Lmb/d6;->G()Lmb/f0;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lmb/d6;->o0(I)Ljava/lang/String;

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p2

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 p2, v0

    :goto_1
    const-string v0, "import"

    invoke-virtual {v1, v0}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v1}, Lmb/d6;->G()Lmb/f0;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v1, v2}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lmb/f0;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmb/f0;

    const/4 v1, 0x1

    new-array v2, v1, [[Lmb/f1;

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lmb/l6;->F(I)Lmb/k6;

    move-result-object v3

    iget-object v3, v3, Lmb/k6;->c:Ljava/lang/Class;

    aget-object v5, p2, v1

    invoke-virtual {v5}, Lmb/d6;->B()Lmb/y4;

    move-result-object v1

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v3, v6, :cond_2

    new-instance v3, Lmb/h2;

    invoke-direct {v3, v1}, Lmb/h2;-><init>(Lmb/y4;)V

    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    :cond_2
    new-instance v3, Lmb/w4;

    invoke-virtual {v5}, Lmb/d6;->g()Lhb/c;

    move-result-object v6

    invoke-direct {v3, v6, v1}, Lmb/w4;-><init>(Lhb/c;Lmb/y4;)V

    goto :goto_2

    :goto_3
    invoke-virtual {v5, v1}, Lmb/d6;->g0(I)Z

    move-result v6

    if-eqz v6, :cond_17

    new-array v4, v1, [Lmb/f1;

    const/4 v1, 0x0

    aput-object v3, v4, v1

    aput-object v4, v2, v1

    new-array v3, v1, [Lmb/u3;

    filled-new-array {v3}, [[Lmb/u3;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v1}, Lmb/l6;->F(I)Lmb/k6;

    move-result-object v5

    aget-object v2, v2, v1

    aget-object v3, v3, v1

    array-length v6, v2

    if-nez v6, :cond_3

    sget-object v6, Lhb/c;->o:Lhb/c;

    goto :goto_4

    :cond_3
    aget-object v6, v2, v1

    check-cast v6, Lmb/m3;

    iget-object v6, v6, Lmb/m3;->a:Lhb/c;

    :goto_4
    iget-object v1, v5, Lmb/k6;->c:Ljava/lang/Class;

    if-nez v1, :cond_4

    iget-object v1, v7, Lmb/l6;->h:Ljava/lang/Class;

    :cond_4
    iget-boolean v12, v5, Lmb/k6;->a:Z

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    new-array v13, v12, [Lmb/r0;

    new-instance v12, Lmb/o3;

    iget-object v14, v9, Lmb/a;->f:Lmb/o6;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Lmb/n6;

    move-object/from16 p2, v2

    const-class v2, Ljava/lang/Override;

    invoke-direct {v15, v14, v6, v2, v6}, Lmb/n6;-><init>(Lmb/o6;Lhb/c;Ljava/lang/Class;Lhb/c;)V

    invoke-direct {v12, v15}, Lmb/d0;-><init>(Lmb/s5;)V

    const/4 v2, 0x0

    aput-object v12, v13, v2

    goto :goto_5

    :cond_5
    move-object/from16 p2, v2

    const/4 v2, 0x0

    new-array v13, v2, [Lmb/r0;

    :goto_5
    iget-boolean v2, v5, Lmb/k6;->b:Z

    iget-object v12, v5, Lmb/k6;->d:Ljava/lang/String;

    iget-object v14, v5, Lmb/k6;->f:[Ljava/lang/Class;

    iget-object v15, v5, Lmb/k6;->e:[Ljava/lang/String;

    iget-object v5, v5, Lmb/k6;->g:[Ljava/lang/Class;

    move/from16 v16, v2

    array-length v2, v15

    move-object/from16 v21, v12

    array-length v12, v14

    if-ne v2, v12, :cond_16

    new-instance v2, Lmb/q2;

    array-length v12, v15

    new-array v12, v12, [Lmb/p2;

    move-object/from16 p3, v13

    const/4 v13, 0x0

    invoke-direct {v2, v6, v12, v13}, Lmb/q2;-><init>(Lhb/c;[Lmb/p2;Z)V

    const/4 v12, 0x0

    :goto_6
    iget-object v13, v2, Lmb/q2;->c:[Lmb/p2;

    move-object/from16 v22, v2

    array-length v2, v13

    if-ge v12, v2, :cond_6

    new-instance v2, Lmb/p2;

    const-string v17, "final"

    move/from16 v18, v12

    filled-new-array/range {v17 .. v17}, [Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, La/a;->d(Lhb/c;[Ljava/lang/String;)[Lmb/n0;

    move-result-object v12

    move-object/from16 v17, v13

    aget-object v13, v14, v18

    move-object/from16 v19, v14

    iget-object v14, v9, Lmb/a;->f:Lmb/o6;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v20, v15

    new-instance v15, Lmb/n6;

    invoke-direct {v15, v14, v6, v13, v6}, Lmb/n6;-><init>(Lmb/o6;Lhb/c;Ljava/lang/Class;Lhb/c;)V

    aget-object v13, v20, v18

    invoke-direct {v2, v6, v12, v15, v13}, Lmb/p2;-><init>(Lhb/c;[Lmb/x3;Lmb/s5;Ljava/lang/String;)V

    aput-object v2, v17, v18

    add-int/lit8 v12, v18, 0x1

    move-object/from16 v14, v19

    move-object/from16 v15, v20

    move-object/from16 v2, v22

    goto :goto_6

    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v12, Lmb/n0;

    const-string v13, "public"

    invoke-direct {v12, v6, v13}, Lmb/n0;-><init>(Lhb/c;Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v16, :cond_7

    new-instance v12, Lmb/n0;

    const-string v14, "static"

    invoke-direct {v12, v6, v14}, Lmb/n0;-><init>(Lhb/c;Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Lmb/x3;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, [Lmb/x3;

    new-instance v16, Lmb/u3;

    iget-object v2, v9, Lmb/a;->f:Lmb/o6;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lmb/n6;

    invoke-direct {v9, v2, v6, v1, v6}, Lmb/n6;-><init>(Lmb/o6;Lhb/c;Ljava/lang/Class;Lhb/c;)V

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v5, :cond_9

    const/4 v1, 0x0

    new-array v2, v1, [Lmb/s5;

    :cond_8
    move-object/from16 v23, v2

    goto :goto_8

    :cond_9
    array-length v1, v5

    new-array v2, v1, [Lmb/s5;

    const/4 v1, 0x0

    :goto_7
    array-length v12, v5

    if-ge v1, v12, :cond_8

    aget-object v12, v5, v1

    new-instance v14, Lmb/n6;

    invoke-direct {v14, v11, v6, v12, v6}, Lmb/n6;-><init>(Lmb/o6;Lhb/c;Ljava/lang/Class;Lhb/c;)V

    aput-object v14, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :goto_8
    const/16 v24, 0x0

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    const/16 v19, 0x0

    move-object/from16 v17, v6

    move-object/from16 v20, v9

    invoke-direct/range {v16 .. v25}, Lmb/u3;-><init>(Lhb/c;[Lmb/x3;[Lmb/w5;Lmb/s5;Ljava/lang/String;Lmb/q2;[Lmb/s5;Lmb/z1;Ljava/util/List;)V

    move-object/from16 v1, v16

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v1, v3

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_a

    aget-object v5, v3, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_a
    new-instance v1, Lmb/q1;

    invoke-direct {v1, v10, v0}, Lmb/q1;-><init>(Ljava/lang/String;[Lmb/f0;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmb/u3;

    iget-object v0, v0, Lmb/m3;->a:Lhb/c;

    iget-object v2, v8, Lmb/a;->i:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_b

    new-instance v5, Lmb/k4;

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v0, v9}, Lmb/k4;-><init>(Lhb/c;Ljava/lang/String;)V

    iput-object v5, v1, Lmb/q1;->c:Lmb/k4;

    const/4 v12, 0x1

    add-int/2addr v3, v12

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_a
    move-object/from16 v19, v2

    goto :goto_b

    :cond_b
    const/4 v6, 0x0

    const/4 v12, 0x1

    goto :goto_a

    :goto_b
    new-instance v16, Lmb/m4;

    new-instance v2, Lmb/n0;

    invoke-direct {v2, v0, v13}, Lmb/n0;-><init>(Lhb/c;Ljava/lang/String;)V

    new-array v3, v12, [Lmb/x3;

    aput-object v2, v3, v6

    iget-object v2, v8, Lmb/a;->j:[Ljava/lang/Class;

    if-nez v2, :cond_c

    new-array v2, v6, [Lmb/s5;

    move-object/from16 v22, v2

    goto :goto_d

    :cond_c
    array-length v5, v2

    new-array v5, v5, [Lmb/s5;

    const/4 v6, 0x0

    :goto_c
    array-length v9, v2

    if-ge v6, v9, :cond_d

    aget-object v9, v2, v6

    new-instance v10, Lmb/n6;

    invoke-direct {v10, v11, v0, v9, v0}, Lmb/n6;-><init>(Lmb/o6;Lhb/c;Ljava/lang/Class;Lhb/c;)V

    aput-object v10, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_d
    move-object/from16 v22, v5

    :goto_d
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    invoke-direct/range {v16 .. v22}, Lmb/b4;-><init>(Lhb/c;[Lmb/x3;Ljava/lang/String;[Lmb/w5;Lmb/s5;[Lmb/s5;)V

    move-object/from16 v0, v16

    iget-object v2, v1, Lmb/q1;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lmb/m4;->r(Lmb/q1;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_e

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lmb/u3;

    invoke-virtual {v0, v5}, Lmb/m0;->k(Lmb/u3;)V

    goto :goto_e

    :cond_e
    invoke-virtual {v11, v1}, Lmb/o6;->F(Lmb/k0;)V

    :try_start_0
    invoke-virtual {v11}, Lmb/o6;->G()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, v8, Lmb/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    iget-object v1, v7, Lmb/l6;->i:[Ljava/lang/reflect/Method;

    if-eqz v1, :cond_f

    :goto_f
    const/4 v13, 0x0

    goto/16 :goto_14

    :cond_f
    if-eqz v0, :cond_15

    iget-object v1, v7, Lmb/l6;->g:[Lmb/k6;

    array-length v1, v1

    new-array v2, v1, [Ljava/lang/reflect/Method;

    new-instance v3, Ljava/util/HashMap;

    mul-int/lit8 v4, v1, 0x2

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    const/4 v4, 0x0

    :goto_10
    const-class v5, Ljava/lang/Object;

    if-ge v4, v1, :cond_10

    invoke-virtual {v7, v4}, Lmb/l6;->F(I)Lmb/k6;

    move-result-object v6

    iget-object v8, v6, Lmb/k6;->d:Ljava/lang/String;

    iget-object v6, v6, Lmb/k6;->f:[Ljava/lang/Class;

    array-length v9, v6

    const/4 v12, 0x1

    add-int/2addr v9, v12

    invoke-static {v5, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v5, v13

    array-length v8, v6

    invoke-static {v6, v13, v5, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_10
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v4, v0

    const/4 v6, 0x0

    :goto_11
    if-ge v6, v4, :cond_12

    aget-object v8, v0, v6

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x1

    add-int/2addr v11, v12

    invoke-static {v5, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v9, v11, v13

    array-length v9, v10

    invoke-static {v10, v13, v11, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-nez v9, :cond_11

    goto :goto_12

    :cond_11
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput-object v8, v2, v9

    :goto_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_12
    const/4 v0, 0x0

    :goto_13
    if-ge v0, v1, :cond_14

    aget-object v3, v2, v0

    if-eqz v3, :cond_13

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_13
    new-instance v1, Lhb/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SNO: Generated class does not declare method \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lmb/l6;->F(I)Lmb/k6;

    move-result-object v3

    iget-object v3, v3, Lmb/k6;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" (index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    iput-object v2, v7, Lmb/l6;->i:[Ljava/lang/reflect/Method;

    move-object v1, v2

    goto/16 :goto_f

    :goto_14
    aget-object v0, v1, v13

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lhb/b;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lhb/b;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must only be called after \'cook()\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    new-instance v1, Lhb/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SNO: Generated compilation unit does not declare class \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v8, Lmb/a;->i:Ljava/lang/String;

    const-string v4, "\'"

    invoke-static {v2, v3, v4}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_16
    move-object/from16 v19, v14

    move-object/from16 v20, v15

    new-instance v0, Lhb/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Lengths of \"parameterNames\" ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v20

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") and \"parameterTypes\" ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v19

    array-length v2, v2

    const-string v3, ") do not match"

    invoke-static {v2, v3, v1}, Lm/a;->j(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Lhb/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected token \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v5, Lmb/d6;->b:Lg5/i;

    invoke-virtual {v2}, Lg5/i;->z()Lmb/q6;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lmb/d6;->g()Lhb/c;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v1, Lhb/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\" must declare exactly one method"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    new-instance v1, Lhb/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\" is not an interface"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final varargs G(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lmb/p;->F(Ljava/io/StringReader;Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lhb/b;

    const-string p2, "IOException despite StringReader"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
