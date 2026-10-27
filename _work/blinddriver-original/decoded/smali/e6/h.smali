.class public final Le6/h;
.super Le6/c;
.source "SourceFile"


# static fields
.field public static final m:[Ljava/lang/Class;

.field public static final n:Le6/h;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-class v0, Ljava/lang/Throwable;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Le6/h;->m:[Ljava/lang/Class;

    new-instance v0, Le6/h;

    new-instance v1, Ld6/j;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Ld6/j;-><init>([Le6/p;[Le6/q;[Le6/i;[Lb6/a;[Le6/d0;)V

    invoke-direct {v0, v1}, Le6/c;-><init>(Ld6/j;)V

    sput-object v0, Le6/h;->n:Le6/h;

    return-void
.end method

.method public static Y(Lj6/t;Le6/g;)V
    .locals 7

    iget-object v0, p0, Lj6/t;->b:Lj6/e0;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lj6/e0;->j:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lj6/e0;->m()V

    :cond_0
    iget-object v0, v0, Lj6/e0;->v:Ljava/util/LinkedHashMap;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :goto_0
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj6/h;

    invoke-virtual {v2}, Lj6/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lb6/i0;->a(Ljava/lang/String;)Lb6/i0;

    move-result-object v3

    invoke-virtual {v2}, Lj6/a;->h()Lb6/l;

    move-result-object v4

    iget-object v5, p0, Lj6/t;->e:Lj6/c;

    iget-object v5, v5, Lj6/c;->u:Lu6/b;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v5, p1, Le6/g;->c:Ljava/lang/Object;

    check-cast v5, Lb6/h;

    iget-object v6, p1, Le6/g;->b:Ljava/util/ArrayList;

    if-nez v6, :cond_2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p1, Le6/g;->b:Ljava/util/ArrayList;

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lb6/x;->A:Lb6/x;

    invoke-virtual {v5, v6}, Ld6/m;->m(Lb6/x;)Z

    move-result v6

    if-eqz v6, :cond_3

    :try_start_0
    sget-object v6, Lb6/x;->B:Lb6/x;

    invoke-virtual {v5, v6}, Ld6/m;->m(Lb6/x;)Z

    move-result v5

    invoke-virtual {v2, v5}, Lj6/h;->j(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p1, p0}, Le6/g;->k(Ljava/lang/IllegalArgumentException;)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    :goto_2
    iget-object v5, p1, Le6/g;->b:Ljava/util/ArrayList;

    new-instance v6, Lf6/f0;

    invoke-direct {v6, v3, v4, v2, v1}, Lf6/f0;-><init>(Lb6/i0;Lb6/l;Lj6/h;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static Z(Lb6/i;Lj6/t;Le6/g;)V
    .locals 7

    iget-object v0, p1, Lj6/t;->i:Lj6/d0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, Lj6/d0;->a:Lb6/i0;

    iget-object v1, v0, Lj6/d0;->b:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lb6/g;->C(Lj6/d0;)V

    const-class v2, Lr5/f1;

    if-ne v1, v2, :cond_2

    iget-object v1, v3, Lb6/i0;->l:Ljava/lang/String;

    iget-object v2, p2, Le6/g;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le6/y;

    if-eqz v2, :cond_1

    iget-object p1, v2, Le6/y;->o:Lb6/l;

    new-instance v1, Lf6/w;

    iget-object v0, v0, Lj6/d0;->d:Ljava/lang/Class;

    invoke-direct {v1, v0}, Lr5/f1;-><init>(Ljava/lang/Class;)V

    :goto_0
    move-object v4, v1

    move-object v6, v2

    move-object v2, p1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    iget-object p1, p1, Lj6/t;->a:Lb6/l;

    invoke-static {p1}, Lu6/h;->r(Lb6/l;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Lu6/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Invalid Object Id definition for "

    const-string v1, ": cannot find property with name "

    invoke-static {v0, p1, v1, p2}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p0, v1}, Lb6/i;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object p1

    invoke-virtual {p0}, Lb6/i;->u()Lt6/p;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v1, Lr5/d1;

    invoke-static {p1, v1}, Lt6/p;->n(Lb6/l;Ljava/lang/Class;)[Lb6/l;

    move-result-object p1

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p0, v0}, Lb6/g;->B(Lj6/d0;)Lr5/d1;

    move-result-object v1

    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p0, v2}, Lb6/i;->Y(Lb6/l;)Lb6/n;

    move-result-object v5

    new-instance v1, Lf6/r;

    invoke-direct/range {v1 .. v6}, Lf6/r;-><init>(Lb6/l;Lb6/i0;Lr5/d1;Lb6/n;Le6/y;)V

    iput-object v1, p2, Le6/g;->l:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final V(Ld6/j;)Le6/h;
    .locals 2

    iget-object v0, p0, Le6/c;->l:Ld6/j;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    const-class v0, Le6/h;

    const-string v1, "withConfig"

    invoke-static {v0, p0, v1}, Lu6/h;->F(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Le6/h;

    invoke-direct {p0, p1}, Le6/c;-><init>(Ld6/j;)V

    return-object p0
.end method

.method public final W(Lb6/i;Lj6/t;Le6/g;)V
    .locals 9

    invoke-virtual {p2}, Lj6/t;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj6/v;

    invoke-virtual {v4}, Lj6/v;->j()Lb6/b;

    move-result-object v5

    if-eqz v5, :cond_0

    iget v6, v5, Lb6/b;->a:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    iget-object v5, v5, Lb6/b;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_1
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Multiple back-reference properties with name "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lu6/h;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_7

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lj6/v;

    invoke-virtual {v4}, Lj6/v;->j()Lb6/b;

    move-result-object v5

    if-nez v5, :cond_4

    move-object v5, v1

    goto :goto_3

    :cond_4
    iget-object v5, v5, Lb6/b;->b:Ljava/lang/String;

    :goto_3
    invoke-virtual {v4}, Lj6/v;->q()Lb6/l;

    move-result-object v6

    invoke-virtual {p0, p1, p2, v4, v6}, Le6/h;->b0(Lb6/i;Lj6/t;Lj6/v;Lb6/l;)Le6/y;

    move-result-object v4

    iget-object v6, p3, Le6/g;->c:Ljava/lang/Object;

    check-cast v6, Lb6/h;

    iget-object v7, p3, Le6/g;->h:Ljava/lang/Object;

    check-cast v7, Ljava/util/HashMap;

    if-nez v7, :cond_5

    new-instance v7, Ljava/util/HashMap;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, p3, Le6/g;->h:Ljava/lang/Object;

    :cond_5
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lb6/x;->A:Lb6/x;

    invoke-virtual {v6, v7}, Ld6/m;->m(Lb6/x;)Z

    move-result v7

    if-eqz v7, :cond_6

    :try_start_0
    invoke-virtual {v4, v6}, Le6/y;->n(Lb6/h;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    invoke-virtual {p3, p0}, Le6/g;->k(Ljava/lang/IllegalArgumentException;)V

    throw v1

    :cond_6
    :goto_4
    iget-object v6, p3, Le6/g;->h:Ljava/lang/Object;

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    return-void
.end method

.method public final X(Lb6/i;Lj6/t;Le6/g;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v1, Lb6/i;->q:Lb6/h;

    iget-object v5, v2, Lj6/t;->a:Lb6/l;

    iget-object v6, v3, Le6/g;->k:Ljava/lang/Object;

    check-cast v6, Le6/c0;

    if-eqz v6, :cond_0

    invoke-virtual {v6, v4}, Le6/c0;->E(Lb6/h;)[Le6/y;

    move-result-object v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    iget-object v5, v5, Lb6/l;->o:Ljava/lang/Class;

    iget-object v11, v2, Lj6/t;->b:Lj6/e0;

    iget-object v12, v2, Lj6/t;->e:Lj6/c;

    invoke-virtual {v4, v5, v12}, Ld6/n;->p(Ljava/lang/Class;Lj6/c;)Lr5/w;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-boolean v13, v5, Lr5/w;->m:Z

    iput-boolean v13, v3, Le6/g;->a:Z

    iget-boolean v13, v5, Lr5/w;->o:Z

    if-eqz v13, :cond_2

    sget-object v5, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_2

    :cond_2
    iget-object v5, v5, Lr5/w;->l:Ljava/util/Set;

    :goto_2
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v3, v14}, Le6/g;->l(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    sget-object v5, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :cond_4
    invoke-virtual {v4}, Ld6/m;->d()Lb6/d;

    move-result-object v13

    if-nez v13, :cond_5

    const/4 v12, 0x0

    goto :goto_4

    :cond_5
    invoke-virtual {v13, v4, v12}, Lb6/d;->Q(Ld6/m;Lj6/a;)Lr5/c0;

    move-result-object v12

    :goto_4
    if-eqz v12, :cond_7

    iget-object v12, v12, Lr5/c0;->l:Ljava/util/Set;

    if-eqz v12, :cond_8

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iget-object v15, v3, Le6/g;->j:Ljava/lang/Object;

    check-cast v15, Ljava/util/HashSet;

    if-nez v15, :cond_6

    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    iput-object v15, v3, Le6/g;->j:Ljava/lang/Object;

    :cond_6
    iget-object v15, v3, Le6/g;->j:Ljava/lang/Object;

    check-cast v15, Ljava/util/HashSet;

    invoke-virtual {v15, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    const/4 v12, 0x0

    :cond_8
    const-class v13, Ljava/util/Map;

    const-class v14, Ljava/lang/String;

    if-eqz v6, :cond_b

    array-length v15, v6

    const/4 v7, 0x0

    const/16 v16, 0x0

    :goto_6
    if-ge v7, v15, :cond_c

    aget-object v17, v6, v7

    invoke-interface/range {v17 .. v17}, Lb6/f;->d()Lj6/h;

    move-result-object v9

    if-eqz v9, :cond_9

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move/from16 v18, v7

    invoke-virtual {v4}, Ld6/m;->d()Lb6/d;

    move-result-object v7

    invoke-virtual {v7, v9}, Lb6/d;->m0(Lj6/a;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v0, v1, v2, v9}, Le6/h;->a0(Lb6/i;Lj6/t;Lj6/h;)Le6/w;

    move-result-object v7

    const/4 v8, 0x1

    goto/16 :goto_c

    :cond_9
    move/from16 v18, v7

    :cond_a
    add-int/lit8 v7, v18, 0x1

    goto :goto_6

    :cond_b
    const/16 v16, 0x0

    :cond_c
    if-eqz v11, :cond_17

    iget-boolean v7, v11, Lj6/e0;->j:Z

    if-nez v7, :cond_d

    invoke-virtual {v11}, Lj6/e0;->m()V

    :cond_d
    iget-object v7, v11, Lj6/e0;->q:Ljava/util/LinkedList;

    if-eqz v7, :cond_f

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_e

    iget-object v7, v11, Lj6/e0;->q:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lj6/i;

    move-object v8, v7

    :goto_7
    const/4 v7, 0x0

    goto :goto_8

    :cond_e
    iget-object v0, v11, Lj6/e0;->q:Ljava/util/LinkedList;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v11, Lj6/e0;->q:Ljava/util/LinkedList;

    invoke-virtual {v1, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Multiple \'any-setter\' methods defined (%s vs %s)"

    invoke-virtual {v11, v1, v0}, Lj6/e0;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v16

    :cond_f
    move-object/from16 v8, v16

    goto :goto_7

    :goto_8
    if-eqz v8, :cond_12

    invoke-virtual {v8, v7}, Lj6/i;->w(I)Ljava/lang/Class;

    move-result-object v9

    if-eq v9, v14, :cond_11

    const-class v7, Ljava/lang/Object;

    if-ne v9, v7, :cond_10

    goto :goto_9

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, v8, Lj6/i;->o:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Invalid \'any-setter\' annotation on method \'"

    const-string v4, "()\': first argument not of type String or Object, but "

    invoke-static {v3, v1, v4, v2}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_9
    move-object v7, v8

    const/4 v8, 0x1

    goto :goto_b

    :cond_12
    iget-boolean v7, v11, Lj6/e0;->j:Z

    if-nez v7, :cond_13

    invoke-virtual {v11}, Lj6/e0;->m()V

    :cond_13
    iget-object v7, v11, Lj6/e0;->r:Ljava/util/LinkedList;

    if-eqz v7, :cond_15

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_14

    iget-object v7, v11, Lj6/e0;->r:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lj6/h;

    goto :goto_a

    :cond_14
    iget-object v0, v11, Lj6/e0;->r:Ljava/util/LinkedList;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v11, Lj6/e0;->r:Ljava/util/LinkedList;

    invoke-virtual {v1, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Multiple \'any-setter\' fields defined (%s vs %s)"

    invoke-virtual {v11, v1, v0}, Lj6/e0;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v16

    :cond_15
    const/4 v8, 0x1

    move-object/from16 v7, v16

    :goto_a
    if-eqz v7, :cond_18

    invoke-virtual {v7}, Lj6/a;->f()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-nez v15, :cond_19

    const-class v15, Lb6/q;

    invoke-virtual {v15, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_16

    goto :goto_b

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Lj6/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid \'any-setter\' annotation on field \'"

    const-string v3, "\': type is not instance of `java.util.Map` or `JsonNode`"

    invoke-static {v2, v1, v3}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    const/4 v8, 0x1

    :cond_18
    move-object/from16 v7, v16

    :cond_19
    :goto_b
    if-eqz v7, :cond_1a

    invoke-virtual {v0, v1, v2, v7}, Le6/h;->a0(Lb6/i;Lj6/t;Lj6/h;)Le6/w;

    move-result-object v7

    goto :goto_c

    :cond_1a
    move-object/from16 v7, v16

    :goto_c
    if-eqz v7, :cond_1c

    iget-object v9, v3, Le6/g;->m:Ljava/lang/Object;

    check-cast v9, Le6/w;

    if-nez v9, :cond_1b

    iput-object v7, v3, Le6/g;->m:Ljava/lang/Object;

    goto :goto_f

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "_anySetter already set to non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    if-nez v11, :cond_1d

    move-object/from16 v7, v16

    goto :goto_d

    :cond_1d
    iget-object v7, v11, Lj6/e0;->u:Ljava/util/HashSet;

    :goto_d
    if-nez v7, :cond_1e

    sget-object v7, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :cond_1e
    if-eqz v7, :cond_1f

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v9}, Le6/g;->l(Ljava/lang/String;)V

    goto :goto_e

    :cond_1f
    :goto_f
    sget-object v7, Lb6/x;->o:Lb6/x;

    invoke-virtual {v4, v7}, Ld6/m;->m(Lb6/x;)Z

    move-result v7

    if-eqz v7, :cond_20

    sget-object v7, Lb6/x;->s:Lb6/x;

    invoke-virtual {v4, v7}, Ld6/m;->m(Lb6/x;)Z

    move-result v7

    if-eqz v7, :cond_20

    move v7, v8

    goto :goto_10

    :cond_20
    const/4 v7, 0x0

    :goto_10
    invoke-virtual {v2}, Lj6/t;->b()Ljava/util/List;

    move-result-object v9

    new-instance v11, Ljava/util/ArrayList;

    const/4 v15, 0x4

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-direct {v11, v8}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_29

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lj6/v;

    move/from16 v18, v7

    invoke-interface {v15}, Lu6/s;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5, v12}, La/a;->D(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v19

    if-eqz v19, :cond_21

    move/from16 v7, v18

    goto :goto_11

    :cond_21
    invoke-virtual {v15}, Lj6/v;->u()Z

    move-result v19

    if-nez v19, :cond_27

    move-object/from16 v19, v5

    invoke-virtual {v15}, Lj6/v;->r()Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_26

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    if-eqz v20, :cond_22

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object/from16 v21, v4

    move-object/from16 v20, v9

    goto :goto_14

    :cond_22
    if-eq v5, v14, :cond_23

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v20

    if-eqz v20, :cond_24

    :cond_23
    move-object/from16 v21, v4

    move-object/from16 v20, v9

    goto :goto_12

    :cond_24
    invoke-virtual {v4, v5}, Ld6/n;->e(Ljava/lang/Class;)Ld6/d;

    move-object/from16 v20, v9

    invoke-virtual {v4, v5}, Ld6/m;->l(Ljava/lang/Class;)Lj6/t;

    move-result-object v9

    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Ld6/m;->d()Lb6/d;

    move-result-object v4

    iget-object v9, v9, Lj6/t;->e:Lj6/c;

    invoke-virtual {v4, v9}, Lb6/d;->t0(Lj6/c;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_25

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_13

    :goto_12
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_25
    :goto_13
    invoke-virtual {v8, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :goto_14
    if-eqz v5, :cond_28

    invoke-virtual {v3, v7}, Le6/g;->l(Ljava/lang/String;)V

    :goto_15
    move/from16 v7, v18

    move-object/from16 v5, v19

    move-object/from16 v9, v20

    move-object/from16 v4, v21

    goto :goto_11

    :cond_26
    move-object/from16 v21, v4

    :goto_16
    move-object/from16 v20, v9

    goto :goto_17

    :cond_27
    move-object/from16 v21, v4

    move-object/from16 v19, v5

    goto :goto_16

    :cond_28
    :goto_17
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_29
    move-object/from16 v21, v4

    move/from16 v18, v7

    iget-object v4, v0, Le6/c;->l:Ld6/j;

    invoke-virtual {v4}, Ld6/j;->c()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-virtual {v4}, Ld6/j;->a()Lu6/d;

    move-result-object v4

    :cond_2a
    invoke-virtual {v4}, Lu6/d;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-virtual {v4}, Lu6/d;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le6/i;

    check-cast v5, Ly6/b;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v21 .. v21}, Ld6/m;->d()Lb6/d;

    move-result-object v5

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_18
    if-ge v8, v7, :cond_2a

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lj6/v;

    invoke-virtual {v12}, Lj6/v;->p()Lj6/h;

    move-result-object v14

    if-nez v14, :cond_2b

    goto :goto_19

    :cond_2b
    invoke-static {v5, v14}, Lb6/g;->q(Lb6/d;Lj6/h;)Ljava/lang/Boolean;

    move-result-object v14

    if-eqz v14, :cond_2c

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_2c

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lj6/v;->z(Ljava/lang/String;)Lj6/v;

    move-result-object v14

    if-eq v14, v12, :cond_2e

    invoke-interface {v11, v8, v14}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :cond_2c
    invoke-virtual {v12}, Lj6/v;->t()Lb6/i0;

    move-result-object v14

    if-eqz v14, :cond_2e

    sget-object v15, Lb6/i0;->p:Lb6/i0;

    if-eq v14, v15, :cond_2e

    iget-object v14, v14, Lb6/i0;->l:Ljava/lang/String;

    if-eqz v14, :cond_2e

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_2e

    invoke-interface {v12}, Lu6/s;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2e

    if-nez v9, :cond_2d

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v11, v15

    :cond_2d
    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v12, v14}, Lj6/v;->z(Ljava/lang/String;)Lj6/v;

    move-result-object v12

    invoke-interface {v11, v8, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    :goto_19
    add-int/lit8 v8, v8, 0x1

    goto :goto_18

    :cond_2f
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x0

    :goto_1a
    if-ge v7, v4, :cond_40

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v7, v7, 0x1

    check-cast v5, Lj6/v;

    invoke-virtual {v5}, Lj6/v;->w()Z

    move-result v8

    if-eqz v8, :cond_30

    invoke-virtual {v5}, Lj6/v;->s()Lj6/i;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lj6/i;->v(I)Lb6/l;

    move-result-object v8

    invoke-virtual {v0, v1, v2, v5, v8}, Le6/h;->b0(Lb6/i;Lj6/t;Lj6/v;Lb6/l;)Le6/y;

    move-result-object v8

    goto :goto_1e

    :cond_30
    const/4 v9, 0x0

    invoke-virtual {v5}, Lj6/v;->v()Z

    move-result v8

    if-eqz v8, :cond_31

    invoke-virtual {v5}, Lj6/v;->n()Lj6/f;

    move-result-object v8

    invoke-virtual {v8}, Lj6/f;->h()Lb6/l;

    move-result-object v8

    invoke-virtual {v0, v1, v2, v5, v8}, Le6/h;->b0(Lb6/i;Lj6/t;Lj6/v;Lb6/l;)Le6/y;

    move-result-object v8

    goto :goto_1e

    :cond_31
    invoke-virtual {v5}, Lj6/v;->o()Lj6/i;

    move-result-object v8

    if-eqz v8, :cond_36

    if-eqz v18, :cond_35

    iget-object v8, v8, Lj6/i;->o:Ljava/lang/reflect/Method;

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    const-class v12, Ljava/util/Collection;

    invoke-virtual {v12, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-nez v12, :cond_33

    invoke-virtual {v13, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_32

    goto :goto_1b

    :cond_32
    move v8, v9

    goto :goto_1c

    :cond_33
    :goto_1b
    const/4 v8, 0x1

    :goto_1c
    if-eqz v8, :cond_35

    invoke-interface {v5}, Lu6/s;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v12, v3, Le6/g;->i:Ljava/lang/Object;

    check-cast v12, Ljava/util/HashSet;

    iget-object v14, v3, Le6/g;->j:Ljava/lang/Object;

    check-cast v14, Ljava/util/HashSet;

    invoke-static {v8, v12, v14}, La/a;->D(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_34

    goto :goto_1d

    :cond_34
    invoke-virtual {v0, v1, v2, v5}, Le6/h;->c0(Lb6/i;Lj6/t;Lj6/v;)Lf6/c0;

    move-result-object v8

    goto :goto_1e

    :cond_35
    invoke-virtual {v5}, Lj6/v;->u()Z

    move-result v8

    if-nez v8, :cond_36

    invoke-virtual {v5}, Lj6/v;->c()Lb6/h0;

    move-result-object v8

    iget-object v8, v8, Lb6/h0;->p:Lb6/g0;

    if-eqz v8, :cond_36

    invoke-virtual {v0, v1, v2, v5}, Le6/h;->c0(Lb6/i;Lj6/t;Lj6/v;)Lf6/c0;

    move-result-object v8

    goto :goto_1e

    :cond_36
    :goto_1d
    move-object/from16 v8, v16

    :goto_1e
    if-eqz v10, :cond_3e

    invoke-virtual {v5}, Lj6/v;->u()Z

    move-result v12

    if-eqz v12, :cond_3e

    invoke-interface {v5}, Lu6/s;->getName()Ljava/lang/String;

    move-result-object v12

    array-length v14, v6

    move v15, v9

    :goto_1f
    if-ge v15, v14, :cond_38

    aget-object v9, v6, v15

    iget-object v0, v9, Le6/y;->n:Lb6/i0;

    iget-object v0, v0, Lb6/i0;->l:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    instance-of v0, v9, Le6/l;

    if-eqz v0, :cond_37

    check-cast v9, Le6/l;

    goto :goto_20

    :cond_37
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    const/4 v9, 0x0

    goto :goto_1f

    :cond_38
    move-object/from16 v9, v16

    :goto_20
    if-nez v9, :cond_3a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v6

    const/4 v9, 0x0

    :goto_21
    if-ge v9, v3, :cond_39

    aget-object v4, v6, v9

    iget-object v4, v4, Le6/y;->n:Lb6/i0;

    iget-object v4, v4, Lb6/i0;->l:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_21

    :cond_39
    invoke-static {v12}, Lu6/h;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "Could not find creator property with name %s (known Creator properties: %s)"

    invoke-virtual {v1, v2, v5, v3, v0}, Lb6/i;->s0(Lj6/t;Lj6/v;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v16

    :cond_3a
    if-eqz v8, :cond_3b

    iput-object v8, v9, Le6/l;->A:Le6/y;

    :cond_3b
    invoke-virtual {v5}, Lj6/v;->k()[Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_3c

    invoke-virtual {v2}, Lj6/t;->c()[Ljava/lang/Class;

    move-result-object v0

    :cond_3c
    invoke-virtual {v9, v0}, Le6/y;->C([Ljava/lang/Class;)V

    invoke-virtual {v3, v9}, Le6/g;->m(Le6/y;)V

    :cond_3d
    :goto_22
    move-object/from16 v0, p0

    goto/16 :goto_1a

    :cond_3e
    if-eqz v8, :cond_3d

    invoke-virtual {v5}, Lj6/v;->k()[Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_3f

    invoke-virtual {v2}, Lj6/t;->c()[Ljava/lang/Class;

    move-result-object v0

    :cond_3f
    invoke-virtual {v8, v0}, Le6/y;->C([Ljava/lang/Class;)V

    invoke-virtual {v3, v8}, Le6/g;->m(Le6/y;)V

    goto :goto_22

    :cond_40
    return-void
.end method

.method public final a0(Lb6/i;Lj6/t;Lj6/h;)Le6/w;
    .locals 14

    move-object/from16 v2, p3

    iget-object v7, p1, Lb6/i;->q:Lb6/h;

    instance-of v8, v2, Lj6/f;

    instance-of v9, v2, Lj6/m;

    instance-of v1, v2, Lj6/i;

    const/4 v10, 0x0

    const/4 v11, -0x1

    if-eqz v1, :cond_0

    move-object v1, v2

    check-cast v1, Lj6/i;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lj6/i;->v(I)Lb6/l;

    move-result-object v12

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lj6/i;->v(I)Lb6/l;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Le6/c;->U(Lb6/i;Lj6/h;Lb6/l;)Lb6/l;

    move-result-object v3

    new-instance p0, Lb6/e;

    iget-object v1, v1, Lj6/i;->o:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lb6/i0;->a(Ljava/lang/String;)Lb6/i0;

    move-result-object v1

    const/4 v4, 0x0

    sget-object v6, Lb6/h0;->t:Lb6/h0;

    move-object v5, v2

    move-object v2, v1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lb6/e;-><init>(Lb6/i0;Lb6/l;Lb6/i0;Lj6/h;Lb6/h0;)V

    move-object v2, v5

    goto/16 :goto_1

    :cond_0
    const-string v1, " -- only support `Map`s, `JsonNode` and `ObjectNode` "

    const-string v3, "Unsupported type for any-setter: "

    const-class v4, Lp6/v;

    const-class v5, Lb6/q;

    if-eqz v8, :cond_4

    move-object v6, v2

    check-cast v6, Lj6/f;

    iget-object v12, v6, Lj6/f;->n:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Lj6/f;->h()Lb6/l;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v13, v6, Lt6/g;

    if-eqz v13, :cond_1

    invoke-virtual {p0, p1, v2, v6}, Le6/c;->U(Lb6/i;Lj6/h;Lb6/l;)Lb6/l;

    move-result-object v3

    invoke-virtual {v3}, Lb6/l;->T()Lb6/l;

    move-result-object p0

    invoke-virtual {v3}, Lb6/l;->Q()Lb6/l;

    move-result-object v13

    new-instance v1, Lb6/e;

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lb6/i0;->a(Ljava/lang/String;)Lb6/i0;

    move-result-object v4

    move-object v2, v4

    const/4 v4, 0x0

    sget-object v6, Lb6/h0;->t:Lb6/h0;

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lb6/e;-><init>(Lb6/i0;Lb6/l;Lb6/i0;Lj6/h;Lb6/h0;)V

    move-object v12, p0

    move-object v2, v5

    move-object v3, v13

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v6, v5}, Lb6/l;->Z(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v6, v4}, Lb6/l;->Z(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v6}, Lu6/h;->r(Lb6/l;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lb6/i;->G(Ljava/lang/String;)Ljava/lang/Object;

    throw v10

    :cond_3
    :goto_0
    invoke-virtual {p0, p1, v2, v6}, Le6/c;->U(Lb6/i;Lj6/h;Lb6/l;)Lb6/l;

    move-result-object v3

    invoke-virtual {p1, v5}, Lb6/i;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object p0

    new-instance v1, Lb6/e;

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lb6/i0;->a(Ljava/lang/String;)Lb6/i0;

    move-result-object v4

    move-object v2, v4

    const/4 v4, 0x0

    sget-object v6, Lb6/h0;->t:Lb6/h0;

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lb6/e;-><init>(Lb6/i0;Lb6/l;Lb6/i0;Lj6/h;Lb6/h0;)V

    invoke-virtual {p1, p0}, Lb6/i;->Y(Lb6/l;)Lb6/n;

    move-result-object v4

    new-instance v0, Le6/t;

    iget-object v5, v7, Lb6/h;->v:Lp6/m;

    move-object v3, p0

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v5}, Le6/t;-><init>(Lb6/e;Lj6/h;Lb6/l;Lb6/n;Lp6/m;)V

    return-object v0

    :cond_4
    if-eqz v9, :cond_11

    move-object v6, v2

    check-cast v6, Lj6/m;

    iget-object v11, v6, Lj6/m;->o:Lb6/l;

    iget v12, v6, Lj6/m;->p:I

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v6, v11, Lt6/g;

    const-string v13, ""

    if-eqz v6, :cond_e

    invoke-virtual {p0, p1, v2, v11}, Le6/c;->U(Lb6/i;Lj6/h;Lb6/l;)Lb6/l;

    move-result-object v3

    invoke-virtual {v3}, Lb6/l;->T()Lb6/l;

    move-result-object p0

    invoke-virtual {v3}, Lb6/l;->Q()Lb6/l;

    move-result-object v11

    new-instance v1, Lb6/e;

    invoke-static {v13}, Lb6/i0;->a(Ljava/lang/String;)Lb6/i0;

    move-result-object v2

    const/4 v4, 0x0

    sget-object v6, Lb6/h0;->t:Lb6/h0;

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lb6/e;-><init>(Lb6/i0;Lb6/l;Lb6/i0;Lj6/h;Lb6/h0;)V

    move-object v2, v5

    move-object v3, v11

    move v11, v12

    move-object v12, p0

    :goto_1
    invoke-static {p1, v2}, Le6/c;->R(Lb6/i;Lj6/a;)Lb6/w;

    move-result-object p0

    if-nez p0, :cond_5

    iget-object p0, v12, Lb6/l;->q:Ljava/lang/Object;

    check-cast p0, Lb6/w;

    :cond_5
    if-nez p0, :cond_6

    invoke-virtual {p1, v12}, Lb6/i;->V(Lb6/l;)Lb6/w;

    move-result-object p0

    :cond_6
    move-object v4, p0

    invoke-virtual {v7}, Ld6/m;->d()Lb6/d;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0, v2}, Lb6/d;->d(Lj6/a;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p1, p0}, Lb6/i;->P(Ljava/lang/Object;)Lb6/n;

    move-result-object v10

    :cond_7
    if-nez v10, :cond_8

    iget-object p0, v3, Lb6/l;->q:Ljava/lang/Object;

    move-object v10, p0

    check-cast v10, Lb6/n;

    :cond_8
    if-eqz v10, :cond_9

    invoke-virtual {p1, v10, v1, v3}, Lb6/i;->d0(Lb6/n;Lb6/f;Lb6/l;)Lb6/n;

    move-result-object v10

    :cond_9
    move-object v5, v10

    iget-object p0, v3, Lb6/l;->r:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Ln6/d;

    const-class p0, Ljava/util/LinkedHashMap;

    const-class v0, Ljava/util/Map;

    if-eqz v8, :cond_b

    move-object v7, v2

    check-cast v7, Lj6/f;

    iget-object v7, v7, Lj6/f;->n:Ljava/lang/reflect/Field;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    if-ne v7, v0, :cond_a

    goto :goto_2

    :cond_a
    move-object p0, v7

    :goto_2
    invoke-static {p0}, Ll7/a;->l(Ljava/lang/Class;)Le6/b0;

    move-result-object v7

    new-instance v0, Le6/t;

    invoke-direct/range {v0 .. v7}, Le6/t;-><init>(Lb6/e;Lj6/h;Lb6/l;Lb6/w;Lb6/n;Ln6/d;Le6/c0;)V

    return-object v0

    :cond_b
    if-eqz v9, :cond_d

    move-object/from16 v2, p3

    check-cast v2, Lj6/m;

    iget-object v2, v2, Lj6/m;->o:Lb6/l;

    iget-object v2, v2, Lb6/l;->o:Ljava/lang/Class;

    if-ne v2, v0, :cond_c

    goto :goto_3

    :cond_c
    move-object p0, v2

    :goto_3
    invoke-static {p0}, Ll7/a;->l(Ljava/lang/Class;)Le6/b0;

    move-result-object v7

    new-instance v0, Le6/u;

    move-object/from16 v2, p3

    move v8, v11

    invoke-direct/range {v0 .. v8}, Le6/u;-><init>(Lb6/e;Lj6/h;Lb6/l;Lb6/w;Lb6/n;Ln6/d;Le6/c0;I)V

    return-object v0

    :cond_d
    new-instance v0, Le6/v;

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v6}, Le6/w;-><init>(Lb6/e;Lj6/h;Lb6/l;Lb6/w;Lb6/n;Ln6/d;)V

    return-object v0

    :cond_e
    invoke-virtual {v11, v5}, Lb6/l;->Z(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-virtual {v11, v4}, Lb6/l;->Z(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_4

    :cond_f
    invoke-static {v11}, Lu6/h;->r(Lb6/l;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lb6/i;->G(Ljava/lang/String;)Ljava/lang/Object;

    throw v10

    :cond_10
    :goto_4
    invoke-virtual {p0, p1, v2, v11}, Le6/c;->U(Lb6/i;Lj6/h;Lb6/l;)Lb6/l;

    move-result-object v3

    invoke-virtual {p1, v5}, Lb6/i;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object p0

    new-instance v1, Lb6/e;

    invoke-static {v13}, Lb6/i0;->a(Ljava/lang/String;)Lb6/i0;

    move-result-object v4

    move-object v2, v4

    const/4 v4, 0x0

    sget-object v6, Lb6/h0;->t:Lb6/h0;

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lb6/e;-><init>(Lb6/i0;Lb6/l;Lb6/i0;Lj6/h;Lb6/h0;)V

    invoke-virtual {p1, p0}, Lb6/i;->Y(Lb6/l;)Lb6/n;

    move-result-object v4

    new-instance v0, Le6/u;

    iget-object v5, v7, Lb6/h;->v:Lp6/m;

    move-object v3, p0

    move-object/from16 v2, p3

    move v6, v12

    invoke-direct/range {v0 .. v6}, Le6/u;-><init>(Lb6/e;Lj6/h;Lb6/l;Lb6/n;Lp6/m;I)V

    return-object v0

    :cond_11
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized mutator type for any-setter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lb6/i;->G(Ljava/lang/String;)Ljava/lang/Object;

    throw v10
.end method

.method public final b0(Lb6/i;Lj6/t;Lj6/v;Lb6/l;)Le6/y;
    .locals 8

    iget-object v0, p2, Lj6/t;->e:Lj6/c;

    invoke-virtual {p3}, Lj6/v;->s()Lj6/i;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Lj6/v;->n()Lj6/f;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_6

    invoke-virtual {p0, p1, v1, p4}, Le6/c;->U(Lb6/i;Lj6/h;Lb6/l;)Lb6/l;

    move-result-object v4

    iget-object p0, v4, Lb6/l;->r:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Ln6/d;

    instance-of p0, v1, Lj6/i;

    if-eqz p0, :cond_1

    new-instance v2, Lf6/p;

    iget-object v6, v0, Lj6/c;->u:Lu6/b;

    move-object v7, v1

    check-cast v7, Lj6/i;

    move-object v3, p3

    invoke-direct/range {v2 .. v7}, Lf6/p;-><init>(Lj6/v;Lb6/l;Ln6/d;Lu6/b;Lj6/i;)V

    goto :goto_0

    :cond_1
    move-object v3, p3

    new-instance v2, Lf6/h;

    iget-object v6, v0, Lj6/c;->u:Lu6/b;

    move-object v7, v1

    check-cast v7, Lj6/f;

    invoke-direct/range {v2 .. v7}, Lf6/h;-><init>(Lj6/v;Lb6/l;Ln6/d;Lu6/b;Lj6/f;)V

    :goto_0
    invoke-static {p1, v1}, Le6/c;->Q(Lb6/i;Lj6/a;)Lb6/n;

    move-result-object p0

    if-nez p0, :cond_2

    iget-object p0, v4, Lb6/l;->q:Ljava/lang/Object;

    check-cast p0, Lb6/n;

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p1, p0, v2, v4}, Lb6/i;->d0(Lb6/n;Lb6/f;Lb6/l;)Lb6/n;

    move-result-object p0

    invoke-virtual {v2, p0}, Le6/y;->G(Lb6/n;)Le6/y;

    move-result-object v2

    :cond_3
    invoke-virtual {v3}, Lj6/v;->j()Lb6/b;

    move-result-object p0

    if-eqz p0, :cond_4

    iget p1, p0, Lb6/b;->a:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    iget-object p0, p0, Lb6/b;->b:Ljava/lang/String;

    iput-object p0, v2, Le6/y;->t:Ljava/lang/String;

    :cond_4
    invoke-virtual {v3}, Lj6/v;->i()Lj6/d0;

    move-result-object p0

    if-eqz p0, :cond_5

    iput-object p0, v2, Le6/y;->u:Lj6/d0;

    :cond_5
    return-object v2

    :cond_6
    move-object v3, p3

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p3, "No non-constructor mutator available"

    invoke-virtual {p1, p2, v3, p3, p0}, Lb6/i;->s0(Lj6/t;Lj6/v;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final c0(Lb6/i;Lj6/t;Lj6/v;)Lf6/c0;
    .locals 6

    invoke-virtual {p3}, Lj6/v;->o()Lj6/i;

    move-result-object v5

    invoke-virtual {v5}, Lj6/i;->h()Lb6/l;

    move-result-object v0

    invoke-virtual {p0, p1, v5, v0}, Le6/c;->U(Lb6/i;Lj6/h;Lb6/l;)Lb6/l;

    move-result-object v2

    iget-object p0, v2, Lb6/l;->r:Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Ln6/d;

    new-instance v0, Lf6/c0;

    iget-object p0, p2, Lj6/t;->e:Lj6/c;

    iget-object v4, p0, Lj6/c;->u:Lu6/b;

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lf6/c0;-><init>(Lj6/v;Lb6/l;Ln6/d;Lu6/b;Lj6/i;)V

    invoke-static {p1, v5}, Le6/c;->Q(Lb6/i;Lj6/a;)Lb6/n;

    move-result-object p0

    if-nez p0, :cond_0

    iget-object p0, v2, Lb6/l;->q:Ljava/lang/Object;

    check-cast p0, Lb6/n;

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p1, p0, v0, v2}, Lb6/i;->d0(Lb6/n;Lb6/f;Lb6/l;)Lb6/n;

    move-result-object p0

    invoke-virtual {v0, p0}, Lf6/c0;->G(Lb6/n;)Le6/y;

    move-result-object p0

    check-cast p0, Lf6/c0;

    return-object p0

    :cond_1
    return-object v0
.end method
