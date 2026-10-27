.class public final Lz7/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw7/v;


# instance fields
.field public final l:Lad/a2;

.field public final m:Lw7/h;

.field public final n:Ly7/g;

.field public final o:Ljava/util/List;


# direct methods
.method public constructor <init>(Lad/a2;Lw7/h;Ly7/g;Lz7/b;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz7/q;->l:Lad/a2;

    iput-object p2, p0, Lz7/q;->m:Lw7/h;

    iput-object p3, p0, Lz7/q;->n:Ly7/g;

    iput-object p5, p0, Lz7/q;->o:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lw7/l;Ld8/a;Ljava/lang/Class;Z)Ljava/util/LinkedHashMap;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_d

    :cond_0
    move-object/from16 v1, p2

    move-object/from16 v14, p3

    :goto_0
    iget-object v15, v1, Ld8/a;->b:Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/Object;

    if-eq v14, v1, :cond_14

    invoke-virtual {v14}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    move-object/from16 v2, p3

    if-eq v14, v2, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    iget-object v3, v0, Lz7/q;->o:Ljava/util/List;

    invoke-static {v3}, Ly7/d;->e(Ljava/util/List;)V

    :cond_1
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_13

    move v6, v3

    aget-object v3, v1, v5

    const/4 v7, 0x1

    invoke-virtual {v0, v3, v7}, Lz7/q;->b(Ljava/lang/reflect/Field;Z)Z

    move-result v8

    invoke-virtual {v0, v3, v4}, Lz7/q;->b(Ljava/lang/reflect/Field;Z)Z

    move-result v10

    if-nez v8, :cond_2

    if-nez v10, :cond_2

    move-object/from16 v18, v1

    move/from16 v25, v4

    move/from16 v20, v5

    move/from16 v22, v6

    goto/16 :goto_c

    :cond_2
    const-class v11, Lx7/b;

    const/16 v16, 0x0

    if-eqz p4, :cond_3

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v12

    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v12

    if-eqz v12, :cond_4

    move v10, v4

    :cond_3
    move-object/from16 v12, v16

    goto :goto_2

    :cond_4
    sget-object v12, Lb8/c;->a:Lg6/c1;

    invoke-virtual {v12, v14, v3}, Lg6/c1;->q(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v12

    invoke-static {v12}, Lb8/c;->e(Ljava/lang/reflect/AccessibleObject;)V

    invoke-virtual {v12, v11}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v17

    if-eqz v17, :cond_6

    invoke-virtual {v3, v11}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v17

    if-eqz v17, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v12, v4}, Lb8/c;->d(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lw7/n;

    const-string v2, "@SerializedName on "

    const-string v3, " is not supported"

    invoke-static {v2, v0, v3}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    :goto_2
    if-nez v12, :cond_7

    invoke-static {v3}, Lb8/c;->e(Ljava/lang/reflect/AccessibleObject;)V

    :cond_7
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v4

    move/from16 v17, v7

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {v15, v14, v4, v7}, Ly7/d;->j(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v3, v11}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lx7/b;

    if-nez v7, :cond_8

    iget-object v7, v0, Lz7/q;->m:Lw7/h;

    invoke-virtual {v7, v3}, Lw7/h;->b(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v18, v1

    :goto_3
    move-object v1, v7

    goto :goto_4

    :cond_8
    invoke-interface {v7}, Lx7/b;->value()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7}, Lx7/b;->alternate()[Ljava/lang/String;

    move-result-object v7

    move-object/from16 v18, v1

    array-length v1, v7

    if-nez v1, :cond_9

    invoke-static {v11}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_3

    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v7

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v7}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v11, v16

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v2, :cond_11

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    if-eqz v7, :cond_a

    const/4 v8, 0x0

    :cond_a
    move/from16 v20, v5

    move v5, v10

    new-instance v10, Ld8/a;

    invoke-direct {v10, v4}, Ld8/a;-><init>(Ljava/lang/reflect/Type;)V

    move-object/from16 v21, v1

    iget-object v1, v10, Ld8/a;->a:Ljava/lang/Class;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_b

    move-object v1, v11

    move/from16 v11, v17

    goto :goto_6

    :cond_b
    move-object v1, v11

    const/4 v11, 0x0

    :goto_6
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v23

    if-eqz v23, :cond_c

    invoke-static/range {v22 .. v22}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v22

    if-eqz v22, :cond_c

    move/from16 v22, v6

    move-object v6, v12

    move/from16 v12, v17

    :goto_7
    move-object/from16 v23, v1

    goto :goto_8

    :cond_c
    move/from16 v22, v6

    move-object v6, v12

    const/4 v12, 0x0

    goto :goto_7

    :goto_8
    const-class v1, Lx7/a;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lx7/a;

    move/from16 v24, v2

    if-eqz v1, :cond_d

    iget-object v2, v0, Lz7/q;->l:Lad/a2;

    invoke-static {v2, v9, v10, v1}, Lz7/b;->a(Lad/a2;Lw7/l;Ld8/a;Lx7/a;)Lw7/u;

    move-result-object v1

    goto :goto_9

    :cond_d
    move-object/from16 v1, v16

    :goto_9
    move v2, v7

    if-eqz v1, :cond_e

    move/from16 v7, v17

    goto :goto_a

    :cond_e
    const/4 v7, 0x0

    :goto_a
    if-nez v1, :cond_f

    invoke-virtual {v9, v10}, Lw7/l;->c(Ld8/a;)Lw7/u;

    move-result-object v1

    :cond_f
    new-instance v25, Lz7/m;

    move-object/from16 v0, v19

    move/from16 v19, v2

    move-object v2, v0

    move-object/from16 v0, v23

    move/from16 v23, v17

    move-object/from16 v17, v4

    move v4, v8

    move-object v8, v1

    move-object/from16 v1, v25

    const/16 v25, 0x0

    invoke-direct/range {v1 .. v12}, Lz7/m;-><init>(Ljava/lang/String;Ljava/lang/reflect/Field;ZZLjava/lang/reflect/Method;ZLw7/u;Lw7/l;Ld8/a;ZZ)V

    invoke-interface {v13, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lz7/m;

    if-nez v0, :cond_10

    goto :goto_b

    :cond_10
    move-object v11, v0

    :goto_b
    add-int/lit8 v7, v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move v8, v4

    move v10, v5

    move-object v12, v6

    move-object/from16 v4, v17

    move/from16 v5, v20

    move-object/from16 v1, v21

    move/from16 v6, v22

    move/from16 v17, v23

    move/from16 v2, v24

    goto/16 :goto_5

    :cond_11
    move/from16 v20, v5

    move/from16 v22, v6

    move-object v0, v11

    const/16 v25, 0x0

    if-nez v0, :cond_12

    :goto_c
    add-int/lit8 v5, v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v2, p3

    move-object/from16 v1, v18

    move/from16 v3, v22

    move/from16 v4, v25

    goto/16 :goto_1

    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Class "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " declares multiple JSON fields named \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lz7/m;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'; conflict is caused by fields "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lz7/m;->b:Ljava/lang/reflect/Field;

    invoke-static {v0}, Lb8/c;->c(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lb8/c;->c(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    invoke-virtual {v14}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v15, v14, v0, v1}, Ly7/d;->j(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    move-result-object v0

    new-instance v1, Ld8/a;

    invoke-direct {v1, v0}, Ld8/a;-><init>(Ljava/lang/reflect/Type;)V

    iget-object v14, v1, Ld8/a;->a:Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    goto/16 :goto_0

    :cond_14
    :goto_d
    return-object v13
.end method

.method public final b(Ljava/lang/reflect/Field;Z)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    iget-object p0, p0, Lz7/q;->n:Ly7/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ly7/g;->f(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0, p2}, Ly7/g;->a(Z)V

    const/16 v0, 0x88

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ly7/g;->f(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    iget-object p0, p0, Ly7/g;->l:Ljava/util/List;

    goto :goto_0

    :cond_3
    iget-object p0, p0, Ly7/g;->m:Ljava/util/List;

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_5
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public final create(Lw7/l;Ld8/a;)Lw7/u;
    .locals 4

    iget-object v0, p2, Ld8/a;->a:Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lz7/q;->o:Ljava/util/List;

    invoke-static {v1}, Ly7/d;->e(Ljava/util/List;)V

    sget-object v1, Lb8/c;->a:Lg6/c1;

    invoke-virtual {v1, v0}, Lg6/c1;->w(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lz7/p;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v0, v2}, Lz7/q;->a(Lw7/l;Ld8/a;Ljava/lang/Class;Z)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lz7/p;-><init>(Ljava/lang/Class;Ljava/util/LinkedHashMap;)V

    return-object v1

    :cond_1
    iget-object v1, p0, Lz7/q;->l:Lad/a2;

    invoke-virtual {v1, p2}, Lad/a2;->i(Ld8/a;)Ly7/o;

    move-result-object v1

    new-instance v2, Lz7/o;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v0, v3}, Lz7/q;->a(Lw7/l;Ld8/a;Ljava/lang/Class;Z)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-direct {v2, v1, p0}, Lz7/o;-><init>(Ly7/o;Ljava/util/LinkedHashMap;)V

    return-object v2
.end method
