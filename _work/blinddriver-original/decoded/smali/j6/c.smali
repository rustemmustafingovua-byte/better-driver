.class public final Lj6/c;
.super Lj6/a;
.source "SourceFile"

# interfaces
.implements Lj6/k0;


# static fields
.field public static final z:Lg5/m;


# instance fields
.field public final l:Lb6/l;

.field public final m:Ljava/lang/Class;

.field public final n:Lt6/o;

.field public final o:Ljava/util/List;

.field public final p:Lb6/d;

.field public final q:Lt6/p;

.field public final r:Lj6/w;

.field public final s:Ljava/lang/Class;

.field public final t:Z

.field public final u:Lu6/b;

.field public v:Lg5/m;

.field public w:Lj6/l;

.field public x:Ljava/util/List;

.field public transient y:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lg5/m;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v1, v2}, Lg5/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    sput-object v0, Lj6/c;->z:Lg5/m;

    return-void
.end method

.method public constructor <init>(Lb6/l;Ljava/lang/Class;Ljava/util/List;Ljava/lang/Class;Lu6/b;Lt6/o;Lb6/d;Lj6/w;Lt6/p;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj6/c;->l:Lb6/l;

    .line 3
    iput-object p2, p0, Lj6/c;->m:Ljava/lang/Class;

    .line 4
    iput-object p3, p0, Lj6/c;->o:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lj6/c;->s:Ljava/lang/Class;

    .line 6
    iput-object p5, p0, Lj6/c;->u:Lu6/b;

    .line 7
    iput-object p6, p0, Lj6/c;->n:Lt6/o;

    .line 8
    iput-object p7, p0, Lj6/c;->p:Lb6/d;

    .line 9
    iput-object p8, p0, Lj6/c;->r:Lj6/w;

    .line 10
    iput-object p9, p0, Lj6/c;->q:Lt6/p;

    .line 11
    iput-boolean p10, p0, Lj6/c;->t:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lj6/c;->l:Lb6/l;

    .line 14
    iput-object p1, p0, Lj6/c;->m:Ljava/lang/Class;

    .line 15
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lj6/c;->o:Ljava/util/List;

    .line 16
    iput-object v0, p0, Lj6/c;->s:Ljava/lang/Class;

    .line 17
    sget-object p1, Lj6/s;->l:Lj6/q;

    iput-object p1, p0, Lj6/c;->u:Lu6/b;

    .line 18
    sget-object p1, Lt6/o;->r:Lt6/o;

    .line 19
    iput-object p1, p0, Lj6/c;->n:Lt6/o;

    .line 20
    iput-object v0, p0, Lj6/c;->p:Lb6/d;

    .line 21
    iput-object v0, p0, Lj6/c;->r:Lj6/w;

    .line 22
    iput-object v0, p0, Lj6/c;->q:Lt6/p;

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lj6/c;->t:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Type;)Lb6/l;
    .locals 2

    iget-object v0, p0, Lj6/c;->n:Lt6/o;

    const/4 v1, 0x0

    iget-object p0, p0, Lj6/c;->q:Lt6/p;

    invoke-virtual {p0, v1, p1, v0}, Lt6/p;->b(Lg5/m;Ljava/lang/reflect/Type;Lt6/o;)Lb6/l;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 0

    iget-object p0, p0, Lj6/c;->u:Lu6/b;

    invoke-interface {p0, p1}, Lu6/b;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    return-object p0
.end method

.method public final d()I
    .locals 0

    iget-object p0, p0, Lj6/c;->m:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result p0

    return p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lj6/c;->m:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const-class v1, Lj6/c;

    invoke-static {v1, p1}, Lu6/h;->s(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lj6/c;

    iget-object p1, p1, Lj6/c;->m:Ljava/lang/Class;

    iget-object p0, p0, Lj6/c;->m:Ljava/lang/Class;

    if-ne p1, p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final f()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lj6/c;->m:Ljava/lang/Class;

    return-object p0
.end method

.method public final h()Lb6/l;
    .locals 0

    iget-object p0, p0, Lj6/c;->l:Lb6/l;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lj6/c;->m:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final i([Ljava/lang/Class;)Z
    .locals 0

    iget-object p0, p0, Lj6/c;->u:Lu6/b;

    invoke-interface {p0, p1}, Lu6/b;->j([Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public final j()Lg5/m;
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lj6/c;->v:Lg5/m;

    if-nez v1, :cond_3f

    iget-object v1, v0, Lj6/c;->l:Lb6/l;

    if-nez v1, :cond_0

    sget-object v1, Lj6/c;->z:Lg5/m;

    goto/16 :goto_2b

    :cond_0
    iget-object v4, v0, Lj6/c;->s:Ljava/lang/Class;

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    iget-boolean v6, v0, Lj6/c;->t:Z

    or-int/2addr v5, v6

    new-instance v6, Lj6/e;

    iget-object v7, v0, Lj6/c;->p:Lb6/d;

    invoke-direct {v6, v7, v0, v5}, Lj6/e;-><init>(Lb6/d;Lj6/c;Z)V

    iget-object v5, v6, Lj6/e;->e:Ljava/lang/Object;

    check-cast v5, Lj6/c;

    invoke-virtual {v1}, Lb6/l;->d0()Z

    move-result v8

    iget-object v9, v1, Lb6/l;->o:Ljava/lang/Class;

    const/4 v10, 0x0

    if-nez v8, :cond_7

    invoke-static {v9}, Lu6/h;->o(Ljava/lang/Class;)[Lu6/f;

    move-result-object v8

    array-length v11, v8

    move-object v13, v10

    move-object v14, v13

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_6

    aget-object v15, v8, v12

    const/16 v16, 0x1

    iget-object v2, v15, Lu6/f;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->isSynthetic()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    iget v2, v15, Lu6/f;->d:I

    if-gez v2, :cond_3

    iget-object v2, v15, Lu6/f;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v2

    iput v2, v15, Lu6/f;->d:I

    :cond_3
    if-nez v2, :cond_4

    move-object v13, v15

    goto :goto_2

    :cond_4
    if-nez v14, :cond_5

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    const/16 v16, 0x1

    goto :goto_4

    :cond_7
    move-object v13, v10

    move-object v14, v13

    goto :goto_3

    :goto_4
    if-nez v14, :cond_9

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-nez v13, :cond_8

    move-object/from16 v18, v1

    move-object/from16 v19, v4

    goto/16 :goto_d

    :cond_8
    const/4 v8, 0x0

    goto :goto_6

    :cond_9
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v2, :cond_a

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_a
    move-object/from16 v24, v8

    move v8, v2

    move-object/from16 v2, v24

    :goto_6
    sget-object v11, Lj6/x;->b:[Lb0/l1;

    if-eqz v4, :cond_11

    invoke-static {v4}, Lu6/h;->o(Ljava/lang/Class;)[Lu6/f;

    move-result-object v12

    array-length v15, v12

    move-object/from16 v17, v10

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v15, :cond_11

    aget-object v10, v12, v3

    move-object/from16 v18, v1

    iget v1, v10, Lu6/f;->d:I

    move/from16 v19, v1

    iget-object v1, v10, Lu6/f;->a:Ljava/lang/reflect/Constructor;

    if-gez v19, :cond_b

    move/from16 v20, v3

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v3

    iput v3, v10, Lu6/f;->d:I

    goto :goto_8

    :cond_b
    move/from16 v20, v3

    move/from16 v3, v19

    :goto_8
    if-nez v3, :cond_d

    if-eqz v13, :cond_c

    new-instance v1, Lj6/d;

    iget-object v3, v13, Lu6/f;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v6, v13, v10}, Lj6/e;->f(Lu6/f;Lu6/f;)Lb0/l1;

    move-result-object v10

    invoke-direct {v1, v5, v3, v10, v11}, Lj6/d;-><init>(Lj6/k0;Ljava/lang/reflect/Constructor;Lb0/l1;[Lb0/l1;)V

    iput-object v1, v6, Lj6/e;->f:Ljava/lang/Object;

    move-object/from16 v19, v4

    const/4 v13, 0x0

    goto :goto_b

    :cond_c
    move-object/from16 v19, v4

    goto :goto_b

    :cond_d
    if-eqz v14, :cond_c

    if-nez v17, :cond_e

    new-array v3, v8, [Lj6/b0;

    move-object/from16 v17, v3

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v8, :cond_e

    move-object/from16 v19, v4

    new-instance v4, Lj6/b0;

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 v22, v3

    move-object/from16 v3, v21

    check-cast v3, Lu6/f;

    iget-object v3, v3, Lu6/f;->a:Ljava/lang/reflect/Constructor;

    invoke-direct {v4, v3}, Lj6/b0;-><init>(Ljava/lang/reflect/Constructor;)V

    aput-object v4, v17, v22

    add-int/lit8 v3, v22, 0x1

    move-object/from16 v4, v19

    goto :goto_9

    :cond_e
    move-object/from16 v19, v4

    new-instance v3, Lj6/b0;

    invoke-direct {v3, v1}, Lj6/b0;-><init>(Ljava/lang/reflect/Constructor;)V

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v8, :cond_10

    aget-object v4, v17, v1

    invoke-virtual {v3, v4}, Lj6/b0;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu6/f;

    invoke-virtual {v6, v3, v10}, Lj6/e;->i(Lu6/f;Lu6/f;)Lj6/d;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_10
    :goto_b
    add-int/lit8 v3, v20, 0x1

    move-object/from16 v1, v18

    move-object/from16 v4, v19

    const/4 v10, 0x0

    goto/16 :goto_7

    :cond_11
    move-object/from16 v18, v1

    move-object/from16 v19, v4

    if-eqz v13, :cond_12

    new-instance v1, Lj6/d;

    iget-object v3, v13, Lu6/f;->a:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x0

    invoke-virtual {v6, v13, v4}, Lj6/e;->f(Lu6/f;Lu6/f;)Lb0/l1;

    move-result-object v10

    invoke-direct {v1, v5, v3, v10, v11}, Lj6/d;-><init>(Lj6/k0;Ljava/lang/reflect/Constructor;Lb0/l1;[Lb0/l1;)V

    iput-object v1, v6, Lj6/e;->f:Ljava/lang/Object;

    :cond_12
    const/4 v1, 0x0

    :goto_c
    if-ge v1, v8, :cond_14

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj6/d;

    if-nez v3, :cond_13

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu6/f;

    const/4 v4, 0x0

    invoke-virtual {v6, v3, v4}, Lj6/e;->i(Lu6/f;Lu6/f;)Lj6/d;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_14
    :goto_d
    invoke-static {v9}, Lu6/h;->n(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_e
    if-ge v8, v3, :cond_18

    aget-object v10, v1, v8

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v11

    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v11

    if-nez v11, :cond_15

    const/4 v11, 0x0

    goto :goto_f

    :cond_15
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    :goto_f
    if-nez v11, :cond_16

    goto :goto_10

    :cond_16
    if-nez v4, :cond_17

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_17
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_18
    if-nez v4, :cond_19

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto/16 :goto_28

    :cond_19
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x0

    :goto_11
    if-ge v10, v3, :cond_1a

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    :cond_1a
    if-eqz v19, :cond_20

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_12
    if-ge v13, v11, :cond_20

    aget-object v14, v10, v13

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v15

    invoke-static {v15}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v15

    if-nez v15, :cond_1b

    const/4 v15, 0x0

    goto :goto_13

    :cond_1b
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    :goto_13
    if-nez v15, :cond_1c

    move-object/from16 v20, v10

    goto :goto_16

    :cond_1c
    if-nez v12, :cond_1d

    new-array v12, v3, [Lj6/b0;

    const/4 v15, 0x0

    :goto_14
    if-ge v15, v3, :cond_1d

    new-instance v1, Lj6/b0;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v10

    move-object/from16 v10, v19

    check-cast v10, Ljava/lang/reflect/Method;

    invoke-direct {v1, v10}, Lj6/b0;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v1, v12, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v10, v20

    goto :goto_14

    :cond_1d
    move-object/from16 v20, v10

    new-instance v1, Lj6/b0;

    invoke-direct {v1, v14}, Lj6/b0;-><init>(Ljava/lang/reflect/Method;)V

    const/4 v10, 0x0

    :goto_15
    if-ge v10, v3, :cond_1f

    aget-object v15, v12, v10

    invoke-virtual {v1, v15}, Lj6/b0;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1e

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-virtual {v6, v1, v5, v14}, Lj6/e;->h(Ljava/lang/reflect/Method;Lj6/k0;Ljava/lang/reflect/Method;)Lj6/i;

    move-result-object v1

    invoke-virtual {v8, v10, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_1e
    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    :cond_1f
    :goto_16
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v10, v20

    goto :goto_12

    :cond_20
    const/4 v1, 0x0

    :goto_17
    if-ge v1, v3, :cond_39

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lj6/i;

    if-nez v10, :cond_38

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/reflect/Method;

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v11

    array-length v12, v11

    if-eqz v12, :cond_21

    invoke-virtual/range {v18 .. v18}, Lb6/l;->P()Lt6/o;

    move-result-object v12

    invoke-virtual {v12}, Lt6/o;->f()Z

    move-result v12

    if-eqz v12, :cond_22

    :cond_21
    move/from16 v16, v3

    goto :goto_19

    :cond_22
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v12

    instance-of v13, v12, Ljava/lang/reflect/ParameterizedType;

    if-nez v13, :cond_23

    :goto_18
    move/from16 v16, v3

    :goto_19
    move-object/from16 v19, v4

    move-object/from16 v20, v9

    :goto_1a
    const/4 v3, 0x0

    goto/16 :goto_24

    :cond_23
    check-cast v12, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v12}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_24

    goto :goto_18

    :cond_24
    invoke-interface {v12}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    array-length v14, v11

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v14, Ljava/util/ArrayList;

    array-length v15, v11

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v16, v3

    const/4 v15, 0x0

    :goto_1b
    array-length v3, v12

    if-ge v15, v3, :cond_33

    aget-object v3, v12, v15

    invoke-static {v3}, Lj6/s;->h(Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    if-eqz v3, :cond_31

    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_25

    goto :goto_19

    :cond_25
    move-object/from16 v19, v4

    invoke-virtual/range {v18 .. v18}, Lb6/l;->P()Lt6/o;

    move-result-object v4

    if-ltz v15, :cond_27

    iget-object v4, v4, Lt6/o;->m:[Lb6/l;

    move-object/from16 v20, v9

    array-length v9, v4

    if-lt v15, v9, :cond_26

    goto :goto_1c

    :cond_26
    aget-object v4, v4, v15

    goto :goto_1d

    :cond_27
    move-object/from16 v20, v9

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1c
    const/4 v4, 0x0

    :goto_1d
    if-nez v4, :cond_28

    :goto_1e
    goto :goto_1a

    :cond_28
    array-length v9, v11

    move-object/from16 v21, v11

    const/4 v11, 0x0

    :goto_1f
    if-ge v11, v9, :cond_2a

    aget-object v22, v21, v11

    move/from16 v23, v9

    invoke-interface/range {v22 .. v22}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_29

    goto :goto_20

    :cond_29
    add-int/lit8 v11, v11, 0x1

    move/from16 v9, v23

    goto :goto_1f

    :cond_2a
    const/16 v22, 0x0

    :goto_20
    if-nez v22, :cond_2b

    goto :goto_1e

    :cond_2b
    invoke-interface/range {v22 .. v22}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v9

    array-length v11, v9

    move-object/from16 v22, v9

    const/4 v9, 0x0

    :goto_21
    if-ge v9, v11, :cond_2d

    move/from16 v23, v9

    aget-object v9, v22, v23

    invoke-static {v5, v4, v9}, Lj6/s;->i(Lj6/c;Lb6/l;Ljava/lang/reflect/Type;)Z

    move-result v9

    if-nez v9, :cond_2c

    goto :goto_22

    :cond_2c
    add-int/lit8 v9, v23, 0x1

    goto :goto_21

    :cond_2d
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    const/4 v11, -0x1

    if-eq v9, v11, :cond_30

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb6/l;

    invoke-virtual {v4, v3}, Lb6/l;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2e

    goto :goto_22

    :cond_2e
    iget-object v11, v4, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v3, v11}, Lb6/l;->f0(Ljava/lang/Class;)Z

    move-result v11

    iget-object v3, v3, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v4, v3}, Lb6/l;->f0(Ljava/lang/Class;)Z

    move-result v3

    if-nez v11, :cond_2f

    if-nez v3, :cond_2f

    goto :goto_1e

    :cond_2f
    xor-int/2addr v11, v3

    if-eqz v11, :cond_32

    if-eqz v3, :cond_32

    invoke-virtual {v14, v9, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_30
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_31
    move-object/from16 v19, v4

    move-object/from16 v20, v9

    move-object/from16 v21, v11

    :cond_32
    :goto_22
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, v19

    move-object/from16 v9, v20

    move-object/from16 v11, v21

    goto/16 :goto_1b

    :cond_33
    move-object/from16 v19, v4

    move-object/from16 v20, v9

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_34

    goto/16 :goto_1e

    :cond_34
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_36

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_35

    goto :goto_23

    :cond_35
    new-instance v3, Lt6/o;

    sget-object v4, Lt6/o;->p:[Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    sget-object v9, Lt6/o;->q:[Lb6/l;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lb6/l;

    const/4 v11, 0x0

    invoke-direct {v3, v4, v9, v11}, Lt6/o;-><init>([Ljava/lang/String;[Lb6/l;[Ljava/lang/String;)V

    goto :goto_24

    :cond_36
    :goto_23
    sget-object v3, Lt6/o;->r:Lt6/o;

    :goto_24
    if-nez v3, :cond_37

    move-object v4, v5

    :goto_25
    const/4 v11, 0x0

    goto :goto_26

    :cond_37
    new-instance v4, Lg5/s;

    iget-object v9, v0, Lj6/c;->q:Lt6/p;

    invoke-direct {v4, v9, v3}, Lg5/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_25

    :goto_26
    invoke-virtual {v6, v10, v4, v11}, Lj6/e;->h(Ljava/lang/reflect/Method;Lj6/k0;Ljava/lang/reflect/Method;)Lj6/i;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    :cond_38
    move/from16 v16, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v9

    :goto_27
    add-int/lit8 v1, v1, 0x1

    move/from16 v3, v16

    move-object/from16 v4, v19

    move-object/from16 v9, v20

    goto/16 :goto_17

    :cond_39
    move-object v3, v8

    :goto_28
    iget-boolean v1, v6, Lj6/e;->d:Z

    if-eqz v1, :cond_3e

    iget-object v1, v6, Lj6/e;->f:Ljava/lang/Object;

    check-cast v1, Lj6/d;

    if-eqz v1, :cond_3a

    invoke-virtual {v7, v1}, Lb6/d;->q0(Lj6/h;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const/4 v11, 0x0

    iput-object v11, v6, Lj6/e;->f:Ljava/lang/Object;

    :cond_3a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    :cond_3b
    :goto_29
    const/16 v17, -0x1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3c

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj6/h;

    invoke-virtual {v7, v4}, Lb6/d;->q0(Lj6/h;)Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_29

    :cond_3c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    const/16 v17, -0x1

    :cond_3d
    :goto_2a
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3e

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj6/h;

    invoke-virtual {v7, v4}, Lb6/d;->q0(Lj6/h;)Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2a

    :cond_3e
    new-instance v1, Lg5/m;

    iget-object v4, v6, Lj6/e;->f:Ljava/lang/Object;

    check-cast v4, Lj6/d;

    const/16 v5, 0xf

    invoke-direct {v1, v4, v2, v3, v5}, Lg5/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    :goto_2b
    iput-object v1, v0, Lj6/c;->v:Lg5/m;

    :cond_3f
    return-object v1
.end method

.method public final k()Lj6/l;
    .locals 9

    iget-object v0, p0, Lj6/c;->w:Lj6/l;

    if-nez v0, :cond_a

    iget-object v0, p0, Lj6/c;->l:Lb6/l;

    if-nez v0, :cond_0

    new-instance v0, Lj6/l;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/16 :goto_5

    :cond_0
    iget-object v0, v0, Lb6/l;->o:Ljava/lang/Class;

    new-instance v1, Lj6/k;

    iget-object v2, p0, Lj6/c;->p:Lb6/d;

    iget-object v3, p0, Lj6/c;->r:Lj6/w;

    iget-boolean v4, p0, Lj6/c;->t:Z

    invoke-direct {v1, v2, v3, v4}, Lj6/k;-><init>(Lb6/d;Lj6/w;Z)V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v3, p0, Lj6/c;->s:Ljava/lang/Class;

    invoke-virtual {v1, p0, v0, v2, v3}, Lj6/k;->e(Lj6/k0;Ljava/lang/Class;Ljava/util/LinkedHashMap;Ljava/lang/Class;)V

    iget-object v3, p0, Lj6/c;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    iget-object v5, v1, Lj6/k;->d:Lj6/w;

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb6/l;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v6, v4, Lb6/l;->o:Ljava/lang/Class;

    invoke-interface {v5, v6}, Lj6/w;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    :goto_1
    new-instance v5, Lg5/s;

    invoke-virtual {v4}, Lb6/l;->P()Lt6/o;

    move-result-object v7

    iget-object v8, p0, Lj6/c;->q:Lt6/p;

    invoke-direct {v5, v8, v7}, Lg5/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v4, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v1, v5, v4, v2, v6}, Lj6/k;->e(Lj6/k0;Ljava/lang/Class;Ljava/util/LinkedHashMap;Ljava/lang/Class;)V

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_5

    const-class v3, Ljava/lang/Object;

    invoke-interface {v5, v3}, Lj6/w;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v1, p0, v0, v2, v4}, Lj6/k;->f(Lj6/k0;Ljava/lang/Class;Ljava/util/LinkedHashMap;Ljava/lang/Class;)V

    iget-object v0, v1, Lj6/x;->a:Lb6/d;

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lj6/b0;

    const-string v7, "hashCode"

    iget-object v8, v5, Lj6/b0;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v5, Lj6/b0;->b:[Ljava/lang/Class;

    array-length v7, v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    :try_start_0
    iget-object v5, v5, Lj6/b0;->a:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj6/j;

    iget-object v7, v4, Lj6/j;->c:Lj6/s;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lj6/x;->c(Lj6/s;[Ljava/lang/annotation/Annotation;)Lj6/s;

    move-result-object v7

    iput-object v7, v4, Lj6/j;->c:Lj6/s;

    iput-object v5, v4, Lj6/j;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_5
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lj6/l;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_5

    :cond_6
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj6/j;

    iget-object v4, v3, Lj6/j;->b:Ljava/lang/reflect/Method;

    if-nez v4, :cond_8

    move-object v5, v6

    goto :goto_4

    :cond_8
    new-instance v5, Lj6/i;

    iget-object v7, v3, Lj6/j;->a:Lj6/k0;

    iget-object v3, v3, Lj6/j;->c:Lj6/s;

    invoke-virtual {v3}, Lj6/s;->b()Lb0/l1;

    move-result-object v3

    invoke-direct {v5, v7, v4, v3, v6}, Lj6/i;-><init>(Lj6/k0;Ljava/lang/reflect/Method;Lb0/l1;[Lb0/l1;)V

    :goto_4
    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    new-instance v1, Lj6/l;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lj6/l;->l:Ljava/util/LinkedHashMap;

    move-object v0, v1

    :goto_5
    iput-object v0, p0, Lj6/c;->w:Lj6/l;

    :cond_a
    return-object v0
.end method

.method public final l()Ljava/util/List;
    .locals 6

    iget-object v0, p0, Lj6/c;->x:Ljava/util/List;

    if-nez v0, :cond_3

    iget-object v0, p0, Lj6/c;->l:Lb6/l;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1

    :cond_0
    new-instance v1, Lj6/e;

    iget-object v2, p0, Lj6/c;->p:Lb6/d;

    iget-object v3, p0, Lj6/c;->q:Lt6/p;

    iget-object v4, p0, Lj6/c;->r:Lj6/w;

    iget-boolean v5, p0, Lj6/c;->t:Z

    invoke-direct {v1, v2, v3, v4, v5}, Lj6/e;-><init>(Lb6/d;Lt6/p;Lj6/w;Z)V

    invoke-virtual {v1, p0, v0}, Lj6/e;->e(Lj6/k0;Lb6/l;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj6/g;

    new-instance v3, Lj6/f;

    iget-object v4, v2, Lj6/g;->a:Lj6/k0;

    iget-object v5, v2, Lj6/g;->b:Ljava/lang/reflect/Field;

    iget-object v2, v2, Lj6/g;->c:Lj6/s;

    invoke-virtual {v2}, Lj6/s;->b()Lb0/l1;

    move-result-object v2

    invoke-direct {v3, v4, v5, v2}, Lj6/f;-><init>(Lj6/k0;Ljava/lang/reflect/Field;Lb0/l1;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lj6/c;->x:Ljava/util/List;

    :cond_3
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[AnnotedClass "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lj6/c;->m:Ljava/lang/Class;

    const-string v1, "]"

    invoke-static {p0, v0, v1}, La6/q;->i(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
