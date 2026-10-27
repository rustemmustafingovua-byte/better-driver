.class public final Lj6/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ld6/m;

.field public final b:Lf8/v3;

.field public final c:Z

.field public final d:Lb6/l;

.field public final e:Lj6/c;

.field public final f:Lj6/m0;

.field public final g:Lb6/d;

.field public final h:Z

.field public final i:Z

.field public j:Z

.field public k:Ljava/util/LinkedHashMap;

.field public l:Ljava/util/List;

.field public m:Lg5/i;

.field public n:Ljava/util/HashMap;

.field public o:Ljava/util/LinkedList;

.field public p:Ljava/util/LinkedList;

.field public q:Ljava/util/LinkedList;

.field public r:Ljava/util/LinkedList;

.field public s:Ljava/util/LinkedList;

.field public t:Ljava/util/LinkedList;

.field public u:Ljava/util/HashSet;

.field public v:Ljava/util/LinkedHashMap;

.field public w:Lr5/q;


# direct methods
.method public constructor <init>(Ld6/m;ZLb6/l;Lj6/c;Lf8/v3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj6/e0;->a:Ld6/m;

    iput-boolean p2, p0, Lj6/e0;->c:Z

    iput-object p3, p0, Lj6/e0;->d:Lb6/l;

    iput-object p4, p0, Lj6/e0;->e:Lj6/c;

    iget-object p2, p3, Lb6/l;->o:Ljava/lang/Class;

    invoke-static {p2}, Lu6/h;->x(Ljava/lang/Class;)Z

    move-result p2

    iput-boolean p2, p0, Lj6/e0;->i:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lb6/x;->n:Lb6/x;

    invoke-virtual {p1, p2}, Ld6/m;->m(Lb6/x;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lj6/e0;->h:Z

    invoke-virtual {p1}, Ld6/m;->d()Lb6/d;

    move-result-object p2

    iput-object p2, p0, Lj6/e0;->g:Lb6/d;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    iput-boolean p2, p0, Lj6/e0;->h:Z

    sget-object p2, Lj6/c0;->l:Lj6/c0;

    iput-object p2, p0, Lj6/e0;->g:Lb6/d;

    :goto_0
    iget-object p2, p3, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p1, p2, p4}, Ld6/m;->i(Ljava/lang/Class;Lj6/c;)Lj6/m0;

    move-result-object p1

    iput-object p1, p0, Lj6/e0;->f:Lj6/m0;

    iput-object p5, p0, Lj6/e0;->b:Lf8/v3;

    return-void
.end method

.method public static j(Ljava/util/List;Lj6/h0;)Z
    .locals 5

    invoke-virtual {p1}, Lj6/h0;->m()Lj6/m;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj6/h0;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lj6/h0;->m()Lj6/m;

    move-result-object v4

    if-ne v4, v0, :cond_0

    invoke-interface {p0, v3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static k(Ljava/util/LinkedList;)Z
    .locals 5

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj6/h;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj6/h;

    instance-of v4, v1, Lj6/f;

    if-eqz v4, :cond_1

    instance-of v1, v3, Lj6/i;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    instance-of v1, v1, Lj6/i;

    if-eqz v1, :cond_2

    instance-of v1, v3, Lj6/f;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gt v0, v2, :cond_0

    return v2

    :cond_2
    return v0
.end method


# virtual methods
.method public final a(Lg5/i;Ljava/util/List;Ljava/util/LinkedHashMap;Z)V
    .locals 10

    iget-object v0, p0, Lj6/e0;->a:Ld6/m;

    invoke-virtual {v0}, Ld6/m;->f()Ld6/e;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj6/i0;

    iget-boolean v3, v2, Lj6/i0;->b:Z

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    iget-object v3, v2, Lj6/i0;->c:Lr5/j;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_b

    const/4 v6, 0x2

    if-eq v3, v6, :cond_a

    iget-object v3, v2, Lj6/i0;->a:Lj6/n;

    invoke-virtual {v3}, Lj6/n;->u()I

    move-result v6

    if-ne v6, v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    invoke-virtual {v2, v0}, Lj6/i0;->b(Ld6/m;)V

    iget-object v6, v2, Lj6/i0;->e:[Lb6/i0;

    array-length v6, v6

    move v7, v4

    :goto_1
    if-ge v7, v6, :cond_4

    iget-object v8, v2, Lj6/i0;->e:[Lb6/i0;

    aget-object v8, v8, v7

    if-eqz v8, :cond_3

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lj6/e0;->t:Ljava/util/LinkedList;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_3

    :cond_5
    invoke-virtual {v3}, Lj6/n;->u()I

    move-result v6

    if-ne v6, v5, :cond_9

    iget-object v6, v2, Lj6/i0;->d:[Lb6/i0;

    aget-object v6, v6, v4

    if-eqz v6, :cond_8

    iget-object v7, v6, Lb6/i0;->l:Ljava/lang/String;

    invoke-virtual {p3, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lj6/h0;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lj6/h0;->P()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v7}, Lj6/h0;->O()Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_2

    :cond_6
    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lj6/h0;

    invoke-virtual {v8}, Lj6/h0;->P()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v8}, Lj6/h0;->O()Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, v8, Lj6/h0;->r:Lj6/g0;

    invoke-static {v9, v6}, Lj6/h0;->K(Lj6/g0;Lb6/i0;)Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, v8, Lj6/h0;->t:Lj6/g0;

    invoke-static {v9, v6}, Lj6/h0;->K(Lj6/g0;Lb6/i0;)Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, v8, Lj6/h0;->u:Lj6/g0;

    invoke-static {v9, v6}, Lj6/h0;->K(Lj6/g0;Lb6/i0;)Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v8, v8, Lj6/h0;->s:Lj6/g0;

    invoke-static {v8, v6}, Lj6/h0;->K(Lj6/g0;Lb6/i0;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_2

    :cond_8
    iget-object v6, p0, Lj6/e0;->g:Lb6/d;

    if-eqz v6, :cond_b

    invoke-virtual {v3, v4}, Lj6/n;->t(I)Lj6/m;

    move-result-object v3

    invoke-virtual {v6, v3}, Lb6/d;->u(Lj6/h;)Lr5/b;

    move-result-object v3

    if-eqz v3, :cond_b

    goto :goto_2

    :cond_9
    invoke-virtual {v2, v0}, Lj6/i0;->a(Ld6/m;)Z

    move-result v4

    goto :goto_3

    :cond_a
    :goto_2
    move v4, v5

    :cond_b
    :goto_3
    if-eqz v4, :cond_c

    if-nez p4, :cond_0

    const-string v3, "explicit"

    invoke-virtual {p1, v0, v2, v3}, Lg5/i;->D(Ld6/m;Lj6/i0;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    iget-object v3, p1, Lg5/i;->n:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_d

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p1, Lg5/i;->n:Ljava/lang/Object;

    :cond_d
    iget-object v3, p1, Lg5/i;->n:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lj6/e0;->n:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lb6/i0;->b(Ljava/lang/String;Ljava/lang/String;)Lb6/i0;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb6/i0;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lb6/i0;->l:Ljava/lang/String;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final c(Ljava/util/List;)Ljava/util/List;
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj6/n;

    iget-boolean v2, p0, Lj6/e0;->h:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lj6/e0;->g:Lb6/d;

    iget-object v3, p0, Lj6/e0;->a:Ld6/m;

    invoke-virtual {v2, v3, v1}, Lb6/d;->f(Ld6/m;Lj6/a;)Lr5/j;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    new-instance v3, Lj6/i0;

    invoke-direct {v3, v1, v2}, Lj6/i0;-><init>(Lj6/n;Lr5/j;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lj6/e0;->c:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lj6/e0;->u:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lj6/e0;->u:Ljava/util/HashSet;

    :cond_0
    iget-object p0, p0, Lj6/e0;->u:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final e(Lr5/b;Lj6/h;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lr5/b;->l:Ljava/lang/Object;

    iget-object v0, p0, Lj6/e0;->v:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lj6/e0;->v:Ljava/util/LinkedHashMap;

    :cond_1
    iget-object v0, p0, Lj6/e0;->v:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj6/h;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    if-eq v0, p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lu6/h;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Duplicate injectable value with id \'%s\' (of type %s)"

    invoke-virtual {p0, p2, p1}, Lj6/e0;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public final f(Ljava/util/LinkedHashMap;Lb6/i0;)Lj6/h0;
    .locals 8

    iget-object v0, p2, Lb6/i0;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj6/h0;

    if-nez v1, :cond_0

    new-instance v2, Lj6/h0;

    iget-object v4, p0, Lj6/e0;->g:Lb6/d;

    iget-boolean v5, p0, Lj6/e0;->c:Z

    iget-object v3, p0, Lj6/e0;->a:Ld6/m;

    move-object v7, p2

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lj6/h0;-><init>(Ld6/m;Lb6/d;ZLb6/i0;Lb6/i0;)V

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_0
    return-object v1
.end method

.method public final g(Ljava/util/LinkedHashMap;Ljava/lang/String;)Lj6/h0;
    .locals 7

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj6/h0;

    if-nez v0, :cond_0

    new-instance v1, Lj6/h0;

    iget-boolean v4, p0, Lj6/e0;->c:Z

    invoke-static {p2}, Lb6/i0;->a(Ljava/lang/String;)Lb6/i0;

    move-result-object v5

    iget-object v2, p0, Lj6/e0;->a:Ld6/m;

    iget-object v3, p0, Lj6/e0;->g:Lb6/d;

    move-object v6, v5

    invoke-direct/range {v1 .. v6}, Lj6/h0;-><init>(Ld6/m;Lb6/d;ZLb6/i0;Lb6/i0;)V

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_0
    return-object v0
.end method

.method public final h(Ljava/util/List;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj6/i0;

    iget-object v0, v0, Lj6/i0;->a:Lj6/n;

    iget-object v1, p0, Lj6/e0;->f:Lj6/m0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lj6/h;->m()Ljava/lang/reflect/Member;

    move-result-object v0

    iget-object v1, v1, Lj6/m0;->o:Lr5/g;

    invoke-virtual {v1, v0}, Lr5/g;->a(Ljava/lang/reflect/Member;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final i(Ljava/util/LinkedHashMap;)V
    .locals 5

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj6/h0;

    invoke-virtual {v2}, Lj6/h0;->p()Lj6/h;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lj6/e0;->g:Lb6/d;

    invoke-virtual {v4, v3}, Lb6/d;->j0(Lj6/a;)Lb6/i0;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lb6/i0;->c()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v4, v2, Lj6/h0;->p:Lb6/i0;

    invoke-virtual {v3, v4}, Lb6/i0;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    :cond_3
    new-instance v4, Lj6/h0;

    invoke-direct {v4, v2, v3}, Lj6/h0;-><init>(Lj6/h0;Lb6/i0;)V

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj6/h0;

    invoke-virtual {v0}, Lj6/h0;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj6/h0;

    if-nez v2, :cond_5

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v0}, Lj6/h0;->N(Lj6/h0;)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final l(Ljava/util/LinkedHashMap;)V
    .locals 14

    iget-object v0, p0, Lj6/e0;->g:Lb6/d;

    iget-object v1, p0, Lj6/e0;->e:Lj6/c;

    invoke-virtual {v0, v1}, Lb6/d;->Z(Lj6/a;)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lj6/e0;->a:Ld6/m;

    if-nez v2, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lb6/x;->I:Lb6/x;

    invoke-virtual {v3, v2}, Ld6/m;->m(Lb6/x;)Z

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lj6/h0;

    invoke-virtual {v5}, Lj6/h0;->c()Lb6/h0;

    move-result-object v5

    iget-object v5, v5, Lb6/h0;->n:Ljava/lang/Integer;

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v6

    :goto_1
    invoke-virtual {v0, v1}, Lb6/d;->Y(Lj6/c;)[Ljava/lang/String;

    move-result-object v0

    if-nez v2, :cond_3

    if-nez v4, :cond_3

    iget-object v1, p0, Lj6/e0;->l:Ljava/util/List;

    if-nez v1, :cond_3

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v2, :cond_4

    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    goto :goto_2

    :cond_4
    new-instance v5, Ljava/util/LinkedHashMap;

    add-int v7, v1, v1

    invoke-direct {v5, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    :goto_2
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lj6/h0;

    invoke-virtual {v8}, Lj6/h0;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    iget-object v7, p0, Lj6/e0;->o:Ljava/util/LinkedList;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lj6/h;

    goto :goto_4

    :cond_6
    iget-object v7, p0, Lj6/e0;->p:Ljava/util/LinkedList;

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lj6/h;

    :goto_4
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    invoke-direct {v8, v9}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v9, 0x0

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lj6/h0;

    iget-object v11, v10, Lj6/h0;->r:Lj6/g0;

    invoke-virtual {v7}, Lj6/h;->m()Ljava/lang/reflect/Member;

    move-result-object v12

    :goto_6
    if-eqz v11, :cond_8

    iget-object v13, v11, Lj6/g0;->d:Ljava/lang/Object;

    check-cast v13, Lj6/h;

    invoke-virtual {v13}, Lj6/h;->m()Ljava/lang/reflect/Member;

    move-result-object v13

    if-ne v13, v12, :cond_7

    goto :goto_8

    :cond_7
    iget-object v11, v11, Lj6/g0;->f:Ljava/lang/Object;

    check-cast v11, Lj6/g0;

    goto :goto_6

    :cond_8
    iget-object v11, v10, Lj6/h0;->t:Lj6/g0;

    invoke-virtual {v7}, Lj6/h;->m()Ljava/lang/reflect/Member;

    move-result-object v12

    :goto_7
    if-eqz v11, :cond_a

    iget-object v13, v11, Lj6/g0;->d:Ljava/lang/Object;

    check-cast v13, Lj6/h;

    invoke-virtual {v13}, Lj6/h;->m()Ljava/lang/reflect/Member;

    move-result-object v13

    if-ne v13, v12, :cond_9

    :goto_8
    move-object v9, v10

    goto :goto_5

    :cond_9
    iget-object v11, v11, Lj6/g0;->f:Ljava/lang/Object;

    check-cast v11, Lj6/g0;

    goto :goto_7

    :cond_a
    invoke-virtual {v10}, Lj6/h0;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_b
    if-eqz v9, :cond_c

    invoke-virtual {v9}, Lj6/h0;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    move-object v5, v8

    :cond_d
    new-instance v7, Ljava/util/LinkedHashMap;

    add-int/2addr v1, v1

    invoke-direct {v7, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    if-eqz v0, :cond_11

    array-length v1, v0

    :goto_9
    if-ge v6, v1, :cond_11

    aget-object v8, v0, v6

    invoke-interface {v5, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lj6/h0;

    if-nez v9, :cond_f

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lj6/h0;

    iget-object v12, v11, Lj6/h0;->q:Lb6/i0;

    iget-object v12, v12, Lb6/i0;->l:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-virtual {v11}, Lj6/h0;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v9, v11

    :cond_f
    if-eqz v9, :cond_10

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_11
    if-eqz v4, :cond_14

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj6/h0;

    invoke-virtual {v4}, Lj6/h0;->c()Lb6/h0;

    move-result-object v6

    iget-object v6, v6, Lb6/h0;->n:Ljava/lang/Integer;

    if-eqz v6, :cond_12

    invoke-virtual {v0, v6, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_13
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj6/h0;

    invoke-virtual {v1}, Lj6/h0;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_14
    iget-object v0, p0, Lj6/e0;->l:Ljava/util/List;

    if-eqz v0, :cond_1b

    if-eqz v2, :cond_15

    sget-object v0, Lb6/x;->J:Lb6/x;

    invoke-virtual {v3, v0}, Ld6/m;->m(Lb6/x;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_15
    if-eqz v2, :cond_18

    sget-object v0, Lb6/x;->K:Lb6/x;

    invoke-virtual {v3, v0}, Ld6/m;->m(Lb6/x;)Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iget-object p0, p0, Lj6/e0;->l:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj6/h0;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lj6/h0;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_17
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p0

    goto :goto_d

    :cond_18
    iget-object p0, p0, Lj6/e0;->l:Ljava/util/List;

    :goto_d
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj6/h0;

    if-nez v0, :cond_1a

    goto :goto_e

    :cond_1a
    invoke-virtual {v0}, Lj6/h0;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_1b
    invoke-interface {v7, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    invoke-interface {p1, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final m()V
    .locals 31

    move-object/from16 v0, p0

    iget-object v1, v0, Lj6/e0;->e:Lj6/c;

    iget-object v2, v1, Lj6/c;->m:Ljava/lang/Class;

    new-instance v3, Lg5/i;

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Lg5/i;-><init>(I)V

    iput-object v3, v0, Lj6/e0;->m:Lg5/i;

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v6, v0, Lj6/e0;->a:Ld6/m;

    iget-boolean v7, v0, Lj6/e0;->c:Z

    if-nez v7, :cond_0

    sget-object v8, Lb6/x;->w:Lb6/x;

    invoke-virtual {v6, v8}, Ld6/m;->m(Lb6/x;)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    sget-object v9, Lb6/x;->p:Lb6/x;

    invoke-virtual {v6, v9}, Ld6/m;->m(Lb6/x;)Z

    move-result v9

    invoke-virtual {v1}, Lj6/c;->l()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    iget-object v12, v0, Lj6/e0;->b:Lf8/v3;

    iget-object v13, v0, Lj6/e0;->f:Lj6/m0;

    iget-object v15, v0, Lj6/e0;->g:Lb6/d;

    if-eqz v11, :cond_16

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lj6/f;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v15, v6, v11}, Lb6/d;->n0(Ld6/m;Lj6/a;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Lj6/e0;->s:Ljava/util/LinkedList;

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, v0, Lj6/e0;->s:Ljava/util/LinkedList;

    :cond_1
    iget-object v5, v0, Lj6/e0;->s:Ljava/util/LinkedList;

    invoke-virtual {v5, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v15, v11}, Lb6/d;->o0(Lj6/a;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v4, v0, Lj6/e0;->t:Ljava/util/LinkedList;

    if-nez v4, :cond_3

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v0, Lj6/e0;->t:Ljava/util/LinkedList;

    :cond_3
    iget-object v4, v0, Lj6/e0;->t:Ljava/util/LinkedList;

    invoke-virtual {v4, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v15, v11}, Lb6/d;->k0(Lj6/a;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v15, v11}, Lb6/d;->m0(Lj6/a;)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v5, :cond_5

    if-eqz v4, :cond_9

    :cond_5
    if-eqz v5, :cond_7

    iget-object v5, v0, Lj6/e0;->p:Ljava/util/LinkedList;

    if-nez v5, :cond_6

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, v0, Lj6/e0;->p:Ljava/util/LinkedList;

    :cond_6
    iget-object v5, v0, Lj6/e0;->p:Ljava/util/LinkedList;

    invoke-virtual {v5, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz v4, :cond_9

    iget-object v4, v0, Lj6/e0;->r:Ljava/util/LinkedList;

    if-nez v4, :cond_8

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v0, Lj6/e0;->r:Ljava/util/LinkedList;

    :cond_8
    iget-object v4, v0, Lj6/e0;->r:Ljava/util/LinkedList;

    invoke-virtual {v4, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v15, v11}, Lb6/d;->t(Lj6/h;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    iget-object v4, v11, Lj6/f;->n:Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    :cond_a
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v4, :cond_b

    goto/16 :goto_1

    :cond_b
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lb6/i0;->b(Ljava/lang/String;Ljava/lang/String;)Lb6/i0;

    move-result-object v12

    invoke-virtual {v15, v6, v11, v12}, Lb6/d;->U(Ld6/m;Lj6/f;Lb6/i0;)Lb6/i0;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v5, v12}, Lb6/i0;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    iget-object v14, v0, Lj6/e0;->n:Ljava/util/HashMap;

    if-nez v14, :cond_c

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    iput-object v14, v0, Lj6/e0;->n:Ljava/util/HashMap;

    :cond_c
    iget-object v14, v0, Lj6/e0;->n:Ljava/util/HashMap;

    invoke-virtual {v14, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    if-eqz v7, :cond_e

    invoke-virtual {v15, v11}, Lb6/d;->A(Lj6/a;)Lb6/i0;

    move-result-object v5

    goto :goto_2

    :cond_e
    invoke-virtual {v15, v11}, Lb6/d;->z(Lj6/a;)Lb6/i0;

    move-result-object v5

    :goto_2
    if-eqz v5, :cond_f

    const/4 v12, 0x1

    goto :goto_3

    :cond_f
    const/4 v12, 0x0

    :goto_3
    if-eqz v12, :cond_10

    invoke-virtual {v5}, Lb6/i0;->d()Z

    move-result v14

    if-eqz v14, :cond_10

    const/4 v14, 0x0

    invoke-static {v4, v14}, Lb6/i0;->b(Ljava/lang/String;Ljava/lang/String;)Lb6/i0;

    move-result-object v5

    const/16 v20, 0x0

    :goto_4
    move-object/from16 v19, v5

    goto :goto_5

    :cond_10
    move/from16 v20, v12

    goto :goto_4

    :goto_5
    if-eqz v19, :cond_11

    const/4 v5, 0x1

    goto :goto_6

    :cond_11
    const/4 v5, 0x0

    :goto_6
    if-nez v5, :cond_12

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v11, Lj6/f;->n:Ljava/lang/reflect/Field;

    iget-object v13, v13, Lj6/m0;->p:Lr5/g;

    invoke-virtual {v13, v5}, Lr5/g;->a(Ljava/lang/reflect/Member;)Z

    move-result v5

    :cond_12
    move/from16 v21, v5

    invoke-virtual {v15, v11}, Lb6/d;->q0(Lj6/h;)Z

    move-result v5

    iget-object v13, v11, Lj6/f;->n:Ljava/lang/reflect/Field;

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v13

    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v13

    if-eqz v13, :cond_14

    if-nez v12, :cond_14

    if-eqz v9, :cond_13

    const/16 v22, 0x1

    goto :goto_7

    :cond_13
    if-nez v5, :cond_14

    goto/16 :goto_1

    :cond_14
    move/from16 v22, v5

    :goto_7
    if-eqz v8, :cond_15

    if-nez v19, :cond_15

    if-nez v22, :cond_15

    iget-object v5, v11, Lj6/f;->n:Ljava/lang/reflect/Field;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v5

    if-eqz v5, :cond_15

    goto/16 :goto_1

    :cond_15
    invoke-virtual {v0, v3, v4}, Lj6/e0;->g(Ljava/util/LinkedHashMap;Ljava/lang/String;)Lj6/h0;

    move-result-object v4

    new-instance v16, Lj6/g0;

    iget-object v5, v4, Lj6/h0;->r:Lj6/g0;

    move-object/from16 v18, v5

    move-object/from16 v17, v11

    invoke-direct/range {v16 .. v22}, Lj6/g0;-><init>(Ljava/lang/Object;Lj6/g0;Lb6/i0;ZZZ)V

    move-object/from16 v5, v16

    iput-object v5, v4, Lj6/h0;->r:Lj6/g0;

    goto/16 :goto_1

    :cond_16
    invoke-virtual {v1}, Lj6/c;->k()Lj6/l;

    move-result-object v4

    invoke-virtual {v4}, Lj6/l;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_17
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v8, 0x2

    if-eqz v5, :cond_31

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lj6/i;

    iget-object v9, v5, Lj6/i;->o:Ljava/lang/reflect/Method;

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v10

    if-nez v10, :cond_27

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    sget-object v10, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v8, v10, :cond_17

    const-class v10, Ljava/lang/Void;

    if-ne v8, v10, :cond_18

    sget-object v8, Lb6/x;->z:Lb6/x;

    invoke-virtual {v6, v8}, Ld6/m;->m(Lb6/x;)Z

    move-result v8

    if-nez v8, :cond_18

    goto :goto_8

    :cond_18
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v15, v5}, Lb6/d;->k0(Lj6/a;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    iget-object v8, v0, Lj6/e0;->o:Ljava/util/LinkedList;

    if-nez v8, :cond_19

    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v8, v0, Lj6/e0;->o:Ljava/util/LinkedList;

    :cond_19
    iget-object v8, v0, Lj6/e0;->o:Ljava/util/LinkedList;

    invoke-virtual {v8, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1a
    invoke-virtual {v15, v6, v5}, Lb6/d;->n0(Ld6/m;Lj6/a;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    iget-object v8, v0, Lj6/e0;->s:Ljava/util/LinkedList;

    if-nez v8, :cond_1b

    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v8, v0, Lj6/e0;->s:Ljava/util/LinkedList;

    :cond_1b
    iget-object v8, v0, Lj6/e0;->s:Ljava/util/LinkedList;

    invoke-virtual {v8, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1c
    invoke-virtual {v15, v5}, Lb6/d;->o0(Lj6/a;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    iget-object v8, v0, Lj6/e0;->t:Ljava/util/LinkedList;

    if-nez v8, :cond_1d

    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v8, v0, Lj6/e0;->t:Ljava/util/LinkedList;

    :cond_1d
    iget-object v8, v0, Lj6/e0;->t:Ljava/util/LinkedList;

    invoke-virtual {v8, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1e
    :goto_9
    invoke-virtual {v15, v5}, Lb6/d;->A(Lj6/a;)Lb6/i0;

    move-result-object v8

    if-eqz v8, :cond_1f

    const/4 v10, 0x1

    goto :goto_a

    :cond_1f
    const/4 v10, 0x0

    :goto_a
    if-nez v10, :cond_23

    invoke-virtual {v15, v5}, Lb6/d;->t(Lj6/h;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_20

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v5, v11}, Lf8/v3;->d(Lj6/i;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_20
    if-nez v11, :cond_22

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v5, v11}, Lf8/v3;->a(Lj6/i;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_21

    goto/16 :goto_8

    :cond_21
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v13, Lj6/m0;->m:Lr5/g;

    invoke-virtual {v14, v9}, Lr5/g;->a(Ljava/lang/reflect/Member;)Z

    move-result v9

    :goto_b
    move-object/from16 v26, v8

    move/from16 v28, v9

    move/from16 v27, v10

    goto :goto_c

    :cond_22
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v13, Lj6/m0;->l:Lr5/g;

    invoke-virtual {v14, v9}, Lr5/g;->a(Ljava/lang/reflect/Member;)Z

    move-result v9

    goto :goto_b

    :cond_23
    invoke-virtual {v15, v5}, Lb6/d;->t(Lj6/h;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_24

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v5, v11}, Lf8/v3;->d(Lj6/i;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_24

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v5, v11}, Lf8/v3;->a(Lj6/i;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_24
    if-nez v11, :cond_25

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v11, v9

    :cond_25
    invoke-virtual {v8}, Lb6/i0;->d()Z

    move-result v9

    if-eqz v9, :cond_26

    const/4 v14, 0x0

    invoke-static {v11, v14}, Lb6/i0;->b(Ljava/lang/String;Ljava/lang/String;)Lb6/i0;

    move-result-object v8

    const/4 v10, 0x0

    :cond_26
    move-object/from16 v26, v8

    move/from16 v27, v10

    const/16 v28, 0x1

    :goto_c
    invoke-virtual {v0, v11}, Lj6/e0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v5}, Lb6/d;->q0(Lj6/h;)Z

    move-result v29

    invoke-virtual {v0, v3, v8}, Lj6/e0;->g(Ljava/util/LinkedHashMap;Ljava/lang/String;)Lj6/h0;

    move-result-object v8

    new-instance v23, Lj6/g0;

    iget-object v9, v8, Lj6/h0;->t:Lj6/g0;

    move-object/from16 v24, v5

    move-object/from16 v25, v9

    invoke-direct/range {v23 .. v29}, Lj6/g0;-><init>(Ljava/lang/Object;Lj6/g0;Lb6/i0;ZZZ)V

    move-object/from16 v5, v23

    iput-object v5, v8, Lj6/h0;->t:Lj6/g0;

    goto/16 :goto_8

    :cond_27
    const/4 v11, 0x1

    if-ne v10, v11, :cond_2f

    invoke-virtual {v15, v5}, Lb6/d;->z(Lj6/a;)Lb6/i0;

    move-result-object v8

    if-eqz v8, :cond_28

    const/4 v10, 0x1

    goto :goto_d

    :cond_28
    const/4 v10, 0x0

    :goto_d
    if-nez v10, :cond_2b

    invoke-virtual {v15, v5}, Lb6/d;->t(Lj6/h;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_29

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Lf8/v3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_29
    if-nez v11, :cond_2a

    goto/16 :goto_8

    :cond_2a
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v13, Lj6/m0;->n:Lr5/g;

    invoke-virtual {v14, v9}, Lr5/g;->a(Ljava/lang/reflect/Member;)Z

    move-result v9

    move/from16 v28, v9

    :goto_e
    move-object/from16 v26, v8

    move/from16 v27, v10

    goto :goto_f

    :cond_2b
    invoke-virtual {v15, v5}, Lb6/d;->t(Lj6/h;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_2c

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Lf8/v3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_2c
    if-nez v11, :cond_2d

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v11, v9

    :cond_2d
    invoke-virtual {v8}, Lb6/i0;->d()Z

    move-result v9

    if-eqz v9, :cond_2e

    const/4 v14, 0x0

    invoke-static {v11, v14}, Lb6/i0;->b(Ljava/lang/String;Ljava/lang/String;)Lb6/i0;

    move-result-object v8

    const/4 v10, 0x0

    :cond_2e
    const/16 v28, 0x1

    goto :goto_e

    :goto_f
    invoke-virtual {v0, v11}, Lj6/e0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v5}, Lb6/d;->q0(Lj6/h;)Z

    move-result v29

    invoke-virtual {v0, v3, v8}, Lj6/e0;->g(Ljava/util/LinkedHashMap;Ljava/lang/String;)Lj6/h0;

    move-result-object v8

    new-instance v23, Lj6/g0;

    iget-object v9, v8, Lj6/h0;->u:Lj6/g0;

    move-object/from16 v24, v5

    move-object/from16 v25, v9

    invoke-direct/range {v23 .. v29}, Lj6/g0;-><init>(Ljava/lang/Object;Lj6/g0;Lb6/i0;ZZZ)V

    move-object/from16 v5, v23

    iput-object v5, v8, Lj6/h0;->u:Lj6/g0;

    goto/16 :goto_8

    :cond_2f
    if-ne v10, v8, :cond_17

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v15, v5}, Lb6/d;->m0(Lj6/a;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    iget-object v8, v0, Lj6/e0;->q:Ljava/util/LinkedList;

    if-nez v8, :cond_30

    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v8, v0, Lj6/e0;->q:Ljava/util/LinkedList;

    :cond_30
    iget-object v8, v0, Lj6/e0;->q:Ljava/util/LinkedList;

    invoke-virtual {v8, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_31
    iget-object v4, v1, Lj6/c;->y:Ljava/lang/Boolean;

    if-nez v4, :cond_34

    sget-object v4, Lu6/h;->a:[Ljava/lang/annotation/Annotation;

    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_33

    invoke-static {v2}, Lu6/h;->w(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_32

    const/4 v4, 0x0

    goto :goto_10

    :cond_32
    invoke-virtual {v2}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    :goto_10
    if-eqz v4, :cond_33

    const/4 v4, 0x1

    goto :goto_11

    :cond_33
    const/4 v4, 0x0

    :goto_11
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v1, Lj6/c;->y:Ljava/lang/Boolean;

    :cond_34
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v9, v0, Lj6/e0;->d:Lb6/l;

    iget-boolean v10, v0, Lj6/e0;->i:Z

    if-nez v4, :cond_71

    iget-object v4, v0, Lj6/e0;->m:Lg5/i;

    invoke-virtual {v1}, Lj6/c;->j()Lg5/m;

    move-result-object v11

    iget-object v11, v11, Lg5/m;->n:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    invoke-virtual {v0, v11}, Lj6/e0;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v1}, Lj6/c;->j()Lg5/m;

    move-result-object v12

    iget-object v12, v12, Lg5/m;->o:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    invoke-virtual {v0, v12}, Lj6/e0;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    if-eqz v10, :cond_42

    sget-object v14, Lk6/a;->e:Ljava/lang/RuntimeException;

    if-nez v14, :cond_41

    sget-object v14, Lk6/a;->d:Lk6/a;

    invoke-virtual {v14, v2}, Lk6/a;->a(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_35

    move/from16 v20, v7

    const/4 v2, 0x0

    :goto_12
    move/from16 v23, v10

    goto/16 :goto_15

    :cond_35
    array-length v8, v5

    new-array v8, v8, [Lg5/e;

    move-object/from16 v19, v2

    move/from16 v20, v7

    const/4 v2, 0x0

    :goto_13
    array-length v7, v5

    if-ge v2, v7, :cond_36

    :try_start_0
    iget-object v7, v14, Lk6/a;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v21, v2

    :try_start_1
    aget-object v2, v5, v21

    move-object/from16 v22, v8

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v7, v14, Lk6/a;->c:Ljava/lang/reflect/Method;

    move/from16 v23, v10

    aget-object v10, v5, v21

    invoke-virtual {v7, v10, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    new-instance v8, Lg5/e;

    const/16 v10, 0x8

    invoke-direct {v8, v10, v7, v2}, Lg5/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v22, v21

    add-int/lit8 v2, v21, 0x1

    move-object/from16 v8, v22

    move/from16 v10, v23

    goto :goto_13

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    array-length v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {v19 .. v19}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Failed to access type of field #%d (of %d) of Record type %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_14

    :catch_2
    move-exception v0

    move/from16 v21, v2

    :goto_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    array-length v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {v19 .. v19}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Failed to access name of field #%d (of %d) of Record type %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_36
    move-object/from16 v22, v8

    move-object/from16 v2, v22

    goto :goto_12

    :goto_15
    if-nez v2, :cond_37

    const/4 v8, 0x0

    goto/16 :goto_1b

    :cond_37
    array-length v5, v2

    if-nez v5, :cond_38

    invoke-virtual {v1}, Lj6/c;->j()Lg5/m;

    move-result-object v7

    iget-object v7, v7, Lg5/m;->m:Ljava/lang/Object;

    check-cast v7, Lj6/d;

    if-eqz v7, :cond_38

    new-instance v2, Lj6/i0;

    const/4 v14, 0x0

    invoke-direct {v2, v7, v14}, Lj6/i0;-><init>(Lj6/n;Lr5/j;)V

    move-object v8, v2

    goto/16 :goto_1b

    :cond_38
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_16
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_40

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lj6/i0;

    iget-object v10, v8, Lj6/i0;->a:Lj6/n;

    invoke-virtual {v10}, Lj6/n;->u()I

    move-result v14

    if-eq v14, v5, :cond_39

    goto :goto_16

    :cond_39
    const/4 v14, 0x0

    :goto_17
    if-ge v14, v5, :cond_3b

    move-object/from16 v19, v2

    invoke-virtual {v10, v14}, Lj6/n;->w(I)Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v21, v7

    aget-object v7, v19, v14

    iget-object v7, v7, Lg5/e;->m:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Class;

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    move-object/from16 v2, v19

    move-object/from16 v7, v21

    goto :goto_16

    :cond_3a
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v19

    move-object/from16 v7, v21

    goto :goto_17

    :cond_3b
    move-object/from16 v19, v2

    new-array v2, v5, [Lb6/i0;

    const/4 v7, 0x0

    :goto_18
    if-ge v7, v5, :cond_3c

    aget-object v14, v19, v7

    iget-object v14, v14, Lg5/e;->n:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Lb6/i0;->a(Ljava/lang/String;)Lb6/i0;

    move-result-object v14

    aput-object v14, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_3c
    iget-object v5, v8, Lj6/i0;->d:[Lb6/i0;

    if-eqz v5, :cond_3d

    goto :goto_1b

    :cond_3d
    invoke-virtual {v10}, Lj6/n;->u()I

    move-result v5

    if-nez v5, :cond_3e

    sget-object v2, Lj6/i0;->g:[Lb6/i0;

    iput-object v2, v8, Lj6/i0;->e:[Lb6/i0;

    iput-object v2, v8, Lj6/i0;->d:[Lb6/i0;

    goto :goto_1b

    :cond_3e
    new-array v7, v5, [Lb6/i0;

    iput-object v7, v8, Lj6/i0;->e:[Lb6/i0;

    iput-object v2, v8, Lj6/i0;->d:[Lb6/i0;

    invoke-virtual {v6}, Ld6/m;->d()Lb6/d;

    move-result-object v2

    const/4 v7, 0x0

    :goto_19
    if-ge v7, v5, :cond_43

    invoke-virtual {v10, v7}, Lj6/n;->t(I)Lj6/m;

    move-result-object v14

    invoke-virtual {v2, v14}, Lb6/d;->z(Lj6/a;)Lb6/i0;

    move-result-object v14

    if-eqz v14, :cond_3f

    invoke-virtual {v14}, Lb6/i0;->d()Z

    move-result v19

    if-nez v19, :cond_3f

    move-object/from16 v19, v2

    iget-object v2, v8, Lj6/i0;->e:[Lb6/i0;

    aput-object v14, v2, v7

    goto :goto_1a

    :cond_3f
    move-object/from16 v19, v2

    :goto_1a
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v19

    goto :goto_19

    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to find the canonical Record constructor of type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lj6/c;->l:Lb6/l;

    invoke-static {v1}, Lu6/h;->r(Lb6/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    throw v14

    :cond_42
    move/from16 v20, v7

    move/from16 v23, v10

    invoke-virtual {v15, v6, v1, v11, v12}, Lb6/d;->h(Ld6/m;Lj6/c;Ljava/util/List;Ljava/util/List;)Lj6/i0;

    move-result-object v8

    :cond_43
    :goto_1b
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_44
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    sget-object v7, Lr5/j;->n:Lr5/j;

    if-eqz v5, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lj6/i0;

    iget-object v5, v5, Lj6/i0;->c:Lr5/j;

    if-ne v5, v7, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1c

    :cond_45
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_46
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lj6/i0;

    iget-object v5, v5, Lj6/i0;->c:Lr5/j;

    if-ne v5, v7, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1d

    :cond_47
    iget-object v2, v9, Lb6/l;->o:Ljava/lang/Class;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_48
    :goto_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lj6/i0;

    iget-boolean v10, v7, Lj6/i0;->b:Z

    iget-object v14, v7, Lj6/i0;->a:Lj6/n;

    if-eqz v10, :cond_49

    goto :goto_1e

    :cond_49
    if-ne v8, v7, :cond_4a

    goto :goto_1e

    :cond_4a
    invoke-virtual {v14}, Lj6/a;->f()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_4c

    invoke-virtual {v14}, Lj6/n;->u()I

    move-result v7

    const/4 v10, 0x1

    if-ne v7, v10, :cond_4c

    invoke-virtual {v14}, Lj6/a;->e()Ljava/lang/String;

    move-result-object v7

    const-string v10, "valueOf"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4b

    goto :goto_1e

    :cond_4b
    const-string v10, "fromString"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4c

    const/4 v7, 0x0

    invoke-virtual {v14, v7}, Lj6/n;->w(I)Ljava/lang/Class;

    move-result-object v10

    const-class v7, Ljava/lang/String;

    if-eq v10, v7, :cond_48

    const-class v7, Ljava/lang/CharSequence;

    invoke-virtual {v7, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_4c

    goto :goto_1e

    :cond_4c
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1e

    :cond_4d
    iget-boolean v2, v0, Lj6/e0;->h:Z

    if-eqz v2, :cond_4f

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v11, v3, v7}, Lj6/e0;->a(Lg5/i;Ljava/util/List;Ljava/util/LinkedHashMap;Z)V

    iget-object v2, v4, Lg5/i;->m:Ljava/lang/Object;

    check-cast v2, Lj6/i0;

    if-eqz v2, :cond_4e

    const/4 v2, 0x1

    goto :goto_1f

    :cond_4e
    const/4 v2, 0x0

    :goto_1f
    invoke-virtual {v0, v4, v12, v3, v2}, Lj6/e0;->a(Lg5/i;Ljava/util/List;Ljava/util/LinkedHashMap;Z)V

    :cond_4f
    iget-object v2, v4, Lg5/i;->m:Ljava/lang/Object;

    check-cast v2, Lj6/i0;

    const-string v5, "implicit"

    if-eqz v2, :cond_50

    goto :goto_23

    :cond_50
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v7, 0x0

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lj6/i0;

    invoke-virtual {v10, v6}, Lj6/i0;->b(Ld6/m;)V

    iget-object v14, v10, Lj6/i0;->e:[Lb6/i0;

    array-length v14, v14

    move-object/from16 v19, v2

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v14, :cond_52

    move/from16 v21, v2

    iget-object v2, v10, Lj6/i0;->e:[Lb6/i0;

    aget-object v2, v2, v21

    if-eqz v2, :cond_53

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->remove()V

    if-nez v7, :cond_51

    new-instance v2, Ljava/util/ArrayList;

    const/4 v7, 0x4

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v7, v2

    :cond_51
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_52
    move-object/from16 v2, v19

    goto :goto_20

    :cond_53
    add-int/lit8 v2, v21, 0x1

    goto :goto_21

    :cond_54
    if-nez v7, :cond_55

    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_55
    if-eqz v8, :cond_56

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-virtual {v4, v6, v8, v5}, Lg5/i;->D(Ld6/m;Lj6/i0;Ljava/lang/String;)V

    goto :goto_23

    :cond_56
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lj6/i0;

    invoke-virtual {v4, v6, v7, v5}, Lg5/i;->D(Ld6/m;Lj6/i0;Ljava/lang/String;)V

    goto :goto_22

    :cond_57
    :goto_23
    if-eqz v8, :cond_5e

    invoke-interface {v11, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_58

    invoke-interface {v12, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    :cond_58
    iget-object v2, v8, Lj6/i0;->c:Lr5/j;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v10, 0x1

    if-eq v2, v10, :cond_5b

    const/4 v7, 0x2

    if-eq v2, v7, :cond_59

    const/4 v7, 0x3

    if-eq v2, v7, :cond_59

    iget-object v2, v8, Lj6/i0;->a:Lj6/n;

    invoke-virtual {v2}, Lj6/n;->u()I

    move-result v2

    if-ne v2, v10, :cond_59

    iget-object v2, v0, Lj6/e0;->t:Ljava/util/LinkedList;

    if-eqz v2, :cond_59

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_59

    goto :goto_24

    :cond_59
    iget-object v2, v4, Lg5/i;->m:Ljava/lang/Object;

    check-cast v2, Lj6/i0;

    if-eqz v2, :cond_5a

    goto :goto_25

    :cond_5a
    const-string v2, "Primary"

    invoke-virtual {v4, v6, v8, v2}, Lg5/i;->D(Ld6/m;Lj6/i0;Ljava/lang/String;)V

    goto :goto_25

    :cond_5b
    :goto_24
    iget-object v2, v4, Lg5/i;->n:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_5c

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5c

    goto :goto_25

    :cond_5c
    iget-object v2, v4, Lg5/i;->n:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_5d

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v4, Lg5/i;->n:Ljava/lang/Object;

    :cond_5d
    iget-object v2, v4, Lg5/i;->n:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5e
    :goto_25
    invoke-virtual {v6}, Ld6/m;->f()Ld6/e;

    move-result-object v2

    iget-object v7, v4, Lg5/i;->m:Ljava/lang/Object;

    check-cast v7, Lj6/i0;

    if-nez v7, :cond_68

    iget-object v7, v4, Lg5/i;->n:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_5f

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5f

    goto/16 :goto_28

    :cond_5f
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lj6/c;->j()Lg5/m;

    move-result-object v2

    iget-object v2, v2, Lg5/m;->m:Ljava/lang/Object;

    check-cast v2, Lj6/d;

    if-eqz v2, :cond_60

    goto/16 :goto_28

    :cond_60
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    const/4 v10, 0x1

    if-eq v2, v10, :cond_61

    goto/16 :goto_28

    :cond_61
    const/4 v7, 0x0

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj6/i0;

    iget-object v7, v2, Lj6/i0;->a:Lj6/n;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Lj6/h;->m()Ljava/lang/reflect/Member;

    move-result-object v8

    iget-object v10, v13, Lj6/m0;->o:Lr5/g;

    invoke-virtual {v10, v8}, Lr5/g;->a(Ljava/lang/reflect/Member;)Z

    move-result v8

    if-nez v8, :cond_62

    goto :goto_28

    :cond_62
    invoke-virtual {v2, v6}, Lj6/i0;->b(Ld6/m;)V

    invoke-virtual {v7}, Lj6/n;->u()I

    move-result v8

    const/4 v10, 0x1

    if-eq v8, v10, :cond_64

    invoke-virtual {v2, v6}, Lj6/i0;->a(Ld6/m;)Z

    move-result v7

    if-nez v7, :cond_63

    goto :goto_28

    :cond_63
    const/4 v7, 0x0

    goto :goto_27

    :cond_64
    const/4 v8, 0x0

    if-eqz v15, :cond_65

    invoke-virtual {v7, v8}, Lj6/n;->t(I)Lj6/m;

    move-result-object v7

    invoke-virtual {v15, v7}, Lb6/d;->u(Lj6/h;)Lr5/b;

    move-result-object v7

    if-eqz v7, :cond_65

    move v7, v8

    goto :goto_27

    :cond_65
    invoke-virtual {v6}, Ld6/m;->f()Ld6/e;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v2, Lj6/i0;->d:[Lb6/i0;

    aget-object v7, v7, v8

    if-nez v7, :cond_66

    const/4 v7, 0x0

    goto :goto_26

    :cond_66
    iget-object v7, v7, Lb6/i0;->l:Ljava/lang/String;

    :goto_26
    if-nez v7, :cond_67

    goto :goto_28

    :cond_67
    invoke-virtual {v3, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lj6/h0;

    if-eqz v7, :cond_68

    invoke-virtual {v7}, Lj6/h0;->P()Z

    move-result v8

    if-eqz v8, :cond_68

    invoke-virtual {v7}, Lj6/h0;->O()Z

    move-result v7

    if-eqz v7, :cond_63

    goto :goto_28

    :goto_27
    invoke-interface {v11, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {v4, v6, v2, v5}, Lg5/i;->D(Ld6/m;Lj6/i0;Ljava/lang/String;)V

    :cond_68
    :goto_28
    invoke-virtual {v0, v11}, Lj6/e0;->h(Ljava/util/List;)V

    invoke-virtual {v0, v12}, Lj6/e0;->h(Ljava/util/List;)V

    iput-object v11, v4, Lg5/i;->o:Ljava/lang/Object;

    iput-object v12, v4, Lg5/i;->p:Ljava/lang/Object;

    iget-object v2, v4, Lg5/i;->m:Ljava/lang/Object;

    check-cast v2, Lj6/i0;

    if-nez v2, :cond_69

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, v0, Lj6/e0;->l:Ljava/util/List;

    goto/16 :goto_2e

    :cond_69
    iget-object v4, v2, Lj6/i0;->a:Lj6/n;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lj6/e0;->l:Ljava/util/List;

    invoke-virtual {v4}, Lj6/n;->u()I

    move-result v7

    const/4 v8, 0x0

    :goto_29
    if-ge v8, v7, :cond_70

    invoke-virtual {v4, v8}, Lj6/n;->t(I)Lj6/m;

    move-result-object v10

    iget-object v11, v2, Lj6/i0;->e:[Lb6/i0;

    aget-object v11, v11, v8

    iget-object v12, v2, Lj6/i0;->d:[Lb6/i0;

    aget-object v12, v12, v8

    if-eqz v11, :cond_6a

    const/16 v28, 0x1

    goto :goto_2a

    :cond_6a
    const/16 v28, 0x0

    :goto_2a
    if-nez v28, :cond_6c

    if-nez v12, :cond_6c

    invoke-virtual {v15, v10}, Lb6/d;->g0(Lj6/h;)Lu6/r;

    move-result-object v11

    if-eqz v11, :cond_6b

    iget v11, v10, Lj6/m;->p:I

    invoke-static {v11}, Lg5/e;->j(I)Lb6/i0;

    move-result-object v11

    invoke-virtual {v0, v3, v11}, Lj6/e0;->f(Ljava/util/LinkedHashMap;Lb6/i0;)Lj6/h0;

    move-result-object v12

    new-instance v24, Lj6/g0;

    iget-object v13, v12, Lj6/h0;->s:Lj6/g0;

    const/16 v28, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x0

    move-object/from16 v25, v10

    move-object/from16 v27, v11

    move-object/from16 v26, v13

    invoke-direct/range {v24 .. v30}, Lj6/g0;-><init>(Ljava/lang/Object;Lj6/g0;Lb6/i0;ZZZ)V

    move-object/from16 v10, v24

    iput-object v10, v12, Lj6/h0;->s:Lj6/g0;

    goto :goto_2d

    :cond_6b
    const/4 v12, 0x0

    goto :goto_2d

    :cond_6c
    move-object/from16 v25, v10

    if-eqz v12, :cond_6d

    iget-object v10, v12, Lb6/i0;->l:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lj6/e0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lb6/i0;->a(Ljava/lang/String;)Lb6/i0;

    move-result-object v12

    :cond_6d
    if-nez v12, :cond_6e

    invoke-virtual {v0, v3, v11}, Lj6/e0;->f(Ljava/util/LinkedHashMap;Lb6/i0;)Lj6/h0;

    move-result-object v10

    goto :goto_2b

    :cond_6e
    invoke-virtual {v0, v3, v12}, Lj6/e0;->f(Ljava/util/LinkedHashMap;Lb6/i0;)Lj6/h0;

    move-result-object v10

    :goto_2b
    if-eqz v28, :cond_6f

    move-object/from16 v27, v11

    goto :goto_2c

    :cond_6f
    move-object/from16 v27, v12

    :goto_2c
    new-instance v24, Lj6/g0;

    iget-object v11, v10, Lj6/h0;->s:Lj6/g0;

    const/16 v29, 0x1

    const/16 v30, 0x0

    move-object/from16 v26, v11

    invoke-direct/range {v24 .. v30}, Lj6/g0;-><init>(Ljava/lang/Object;Lj6/g0;Lb6/i0;ZZZ)V

    move-object/from16 v11, v24

    iput-object v11, v10, Lj6/h0;->s:Lj6/g0;

    move-object v12, v10

    :goto_2d
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_29

    :cond_70
    iput-object v5, v2, Lj6/i0;->f:Ljava/util/ArrayList;

    goto :goto_2e

    :cond_71
    move/from16 v20, v7

    move/from16 v23, v10

    :goto_2e
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_72
    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_78

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj6/h0;

    invoke-virtual {v4}, Lj6/h0;->P()Z

    move-result v5

    if-nez v5, :cond_73

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2f

    :cond_73
    invoke-virtual {v4}, Lj6/h0;->O()Z

    move-result v5

    if-eqz v5, :cond_72

    if-eqz v23, :cond_74

    if-nez v20, :cond_74

    invoke-virtual {v4}, Lj6/h0;->R()V

    invoke-virtual {v4}, Lj6/h0;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lj6/e0;->d(Ljava/lang/String;)V

    goto :goto_2f

    :cond_74
    iget-object v5, v4, Lj6/h0;->r:Lj6/g0;

    invoke-static {v5}, Lj6/h0;->C(Lj6/g0;)Z

    move-result v5

    if-nez v5, :cond_77

    iget-object v5, v4, Lj6/h0;->t:Lj6/g0;

    invoke-static {v5}, Lj6/h0;->C(Lj6/g0;)Z

    move-result v5

    if-nez v5, :cond_77

    iget-object v5, v4, Lj6/h0;->u:Lj6/g0;

    invoke-static {v5}, Lj6/h0;->C(Lj6/g0;)Z

    move-result v5

    if-nez v5, :cond_77

    iget-object v5, v4, Lj6/h0;->s:Lj6/g0;

    :goto_30
    if-eqz v5, :cond_76

    iget-boolean v7, v5, Lj6/g0;->e:Z

    if-nez v7, :cond_75

    iget-object v7, v5, Lj6/g0;->g:Ljava/lang/Object;

    check-cast v7, Lb6/i0;

    if-eqz v7, :cond_75

    iget-boolean v7, v5, Lj6/g0;->b:Z

    if-eqz v7, :cond_75

    goto :goto_31

    :cond_75
    iget-object v5, v5, Lj6/g0;->f:Ljava/lang/Object;

    check-cast v5, Lj6/g0;

    goto :goto_30

    :cond_76
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v4}, Lj6/h0;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lj6/e0;->d(Ljava/lang/String;)V

    goto :goto_2f

    :cond_77
    :goto_31
    invoke-virtual {v4}, Lj6/h0;->R()V

    invoke-virtual {v4}, Lj6/h0;->a()Z

    move-result v5

    if-nez v5, :cond_72

    invoke-virtual {v4}, Lj6/h0;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lj6/e0;->d(Ljava/lang/String;)V

    goto :goto_2f

    :cond_78
    sget-object v2, Lb6/x;->x:Lb6/x;

    invoke-virtual {v6, v2}, Ld6/m;->m(Lb6/x;)Z

    move-result v2

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_79
    :goto_32
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_91

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lj6/h0;

    if-eqz v20, :cond_7a

    const/4 v7, 0x0

    goto :goto_33

    :cond_7a
    move-object v7, v0

    :goto_33
    iget-boolean v8, v5, Lj6/h0;->m:Z

    iget-object v10, v5, Lj6/h0;->o:Lb6/d;

    sget-object v11, Lr5/h0;->l:Lr5/h0;

    if-nez v10, :cond_7c

    :cond_7b
    const/4 v12, 0x0

    goto/16 :goto_35

    :cond_7c
    if-eqz v8, :cond_80

    iget-object v12, v5, Lj6/h0;->t:Lj6/g0;

    if-eqz v12, :cond_7d

    iget-object v12, v12, Lj6/g0;->d:Ljava/lang/Object;

    check-cast v12, Lj6/h;

    invoke-virtual {v10, v12}, Lb6/d;->I(Lj6/a;)Lr5/h0;

    move-result-object v12

    if-eqz v12, :cond_7d

    if-eq v12, v11, :cond_7d

    goto/16 :goto_35

    :cond_7d
    iget-object v12, v5, Lj6/h0;->r:Lj6/g0;

    if-eqz v12, :cond_7e

    iget-object v12, v12, Lj6/g0;->d:Ljava/lang/Object;

    check-cast v12, Lj6/h;

    invoke-virtual {v10, v12}, Lb6/d;->I(Lj6/a;)Lr5/h0;

    move-result-object v12

    if-eqz v12, :cond_7e

    if-eq v12, v11, :cond_7e

    goto/16 :goto_35

    :cond_7e
    iget-object v12, v5, Lj6/h0;->s:Lj6/g0;

    if-eqz v12, :cond_7f

    iget-object v12, v12, Lj6/g0;->d:Ljava/lang/Object;

    check-cast v12, Lj6/h;

    invoke-virtual {v10, v12}, Lb6/d;->I(Lj6/a;)Lr5/h0;

    move-result-object v12

    if-eqz v12, :cond_7f

    if-eq v12, v11, :cond_7f

    goto :goto_35

    :cond_7f
    iget-object v12, v5, Lj6/h0;->u:Lj6/g0;

    if-eqz v12, :cond_7b

    iget-object v12, v12, Lj6/g0;->d:Ljava/lang/Object;

    check-cast v12, Lj6/h;

    invoke-virtual {v10, v12}, Lb6/d;->I(Lj6/a;)Lr5/h0;

    move-result-object v10

    if-eqz v10, :cond_7b

    if-eq v10, v11, :cond_7b

    :goto_34
    move-object v12, v10

    goto :goto_35

    :cond_80
    iget-object v12, v5, Lj6/h0;->s:Lj6/g0;

    if-eqz v12, :cond_81

    iget-object v12, v12, Lj6/g0;->d:Ljava/lang/Object;

    check-cast v12, Lj6/h;

    invoke-virtual {v10, v12}, Lb6/d;->I(Lj6/a;)Lr5/h0;

    move-result-object v12

    if-eqz v12, :cond_81

    if-eq v12, v11, :cond_81

    goto :goto_35

    :cond_81
    iget-object v12, v5, Lj6/h0;->u:Lj6/g0;

    if-eqz v12, :cond_82

    iget-object v12, v12, Lj6/g0;->d:Ljava/lang/Object;

    check-cast v12, Lj6/h;

    invoke-virtual {v10, v12}, Lb6/d;->I(Lj6/a;)Lr5/h0;

    move-result-object v12

    if-eqz v12, :cond_82

    if-eq v12, v11, :cond_82

    goto :goto_35

    :cond_82
    iget-object v12, v5, Lj6/h0;->r:Lj6/g0;

    if-eqz v12, :cond_83

    iget-object v12, v12, Lj6/g0;->d:Ljava/lang/Object;

    check-cast v12, Lj6/h;

    invoke-virtual {v10, v12}, Lb6/d;->I(Lj6/a;)Lr5/h0;

    move-result-object v12

    if-eqz v12, :cond_83

    if-eq v12, v11, :cond_83

    goto :goto_35

    :cond_83
    iget-object v12, v5, Lj6/h0;->t:Lj6/g0;

    if-eqz v12, :cond_7b

    iget-object v12, v12, Lj6/g0;->d:Ljava/lang/Object;

    check-cast v12, Lj6/h;

    invoke-virtual {v10, v12}, Lb6/d;->I(Lj6/a;)Lr5/h0;

    move-result-object v10

    if-eqz v10, :cond_7b

    if-eq v10, v11, :cond_7b

    goto :goto_34

    :goto_35
    iget-object v10, v5, Lj6/h0;->n:Ld6/m;

    sget-object v13, Lb6/x;->C:Lb6/x;

    invoke-virtual {v10, v13}, Ld6/m;->m(Lb6/x;)Z

    move-result v10

    if-eqz v10, :cond_85

    sget-object v10, Lr5/h0;->n:Lr5/h0;

    sget-object v13, Lr5/h0;->m:Lr5/h0;

    if-ne v12, v13, :cond_84

    move-object v12, v10

    goto :goto_36

    :cond_84
    if-ne v12, v10, :cond_85

    move-object v12, v13

    :cond_85
    :goto_36
    if-nez v12, :cond_86

    goto :goto_37

    :cond_86
    move-object v11, v12

    :goto_37
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_8d

    const/4 v11, 0x2

    if-eq v10, v11, :cond_8c

    const/4 v12, 0x3

    if-eq v10, v12, :cond_79

    iget-object v7, v5, Lj6/h0;->t:Lj6/g0;

    if-nez v7, :cond_87

    goto :goto_38

    :cond_87
    invoke-virtual {v7}, Lj6/g0;->g()Lj6/g0;

    move-result-object v7

    :goto_38
    iput-object v7, v5, Lj6/h0;->t:Lj6/g0;

    iget-object v7, v5, Lj6/h0;->s:Lj6/g0;

    if-nez v7, :cond_88

    goto :goto_39

    :cond_88
    invoke-virtual {v7}, Lj6/g0;->g()Lj6/g0;

    move-result-object v7

    :goto_39
    iput-object v7, v5, Lj6/h0;->s:Lj6/g0;

    if-eqz v2, :cond_89

    iget-object v7, v5, Lj6/h0;->t:Lj6/g0;

    if-nez v7, :cond_79

    :cond_89
    iget-object v7, v5, Lj6/h0;->r:Lj6/g0;

    if-nez v7, :cond_8a

    goto :goto_3a

    :cond_8a
    invoke-virtual {v7}, Lj6/g0;->g()Lj6/g0;

    move-result-object v7

    :goto_3a
    iput-object v7, v5, Lj6/h0;->r:Lj6/g0;

    iget-object v7, v5, Lj6/h0;->u:Lj6/g0;

    if-nez v7, :cond_8b

    goto :goto_3b

    :cond_8b
    invoke-virtual {v7}, Lj6/g0;->g()Lj6/g0;

    move-result-object v7

    :goto_3b
    iput-object v7, v5, Lj6/h0;->u:Lj6/g0;

    goto/16 :goto_32

    :cond_8c
    const/4 v12, 0x3

    const/4 v14, 0x0

    iput-object v14, v5, Lj6/h0;->t:Lj6/g0;

    if-eqz v8, :cond_79

    iput-object v14, v5, Lj6/h0;->r:Lj6/g0;

    goto/16 :goto_32

    :cond_8d
    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v14, 0x0

    if-eqz v7, :cond_90

    invoke-virtual {v5}, Lj6/h0;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lj6/e0;->d(Ljava/lang/String;)V

    iget-object v10, v5, Lj6/h0;->r:Lj6/g0;

    invoke-static {v10, v14}, Lj6/h0;->H(Lj6/g0;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v10

    iget-object v13, v5, Lj6/h0;->t:Lj6/g0;

    invoke-static {v13, v10}, Lj6/h0;->H(Lj6/g0;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v10

    iget-object v13, v5, Lj6/h0;->u:Lj6/g0;

    invoke-static {v13, v10}, Lj6/h0;->H(Lj6/g0;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v10

    iget-object v13, v5, Lj6/h0;->s:Lj6/g0;

    invoke-static {v13, v10}, Lj6/h0;->H(Lj6/g0;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v10

    if-nez v10, :cond_8e

    sget-object v10, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :cond_8e
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lb6/i0;

    iget-object v13, v13, Lb6/i0;->l:Ljava/lang/String;

    invoke-virtual {v7, v13}, Lj6/e0;->d(Ljava/lang/String;)V

    goto :goto_3c

    :cond_8f
    const/4 v14, 0x0

    :cond_90
    iput-object v14, v5, Lj6/h0;->u:Lj6/g0;

    iput-object v14, v5, Lj6/h0;->s:Lj6/g0;

    if-nez v8, :cond_79

    iput-object v14, v5, Lj6/h0;->r:Lj6/g0;

    goto/16 :goto_32

    :cond_91
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_97

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lj6/h0;

    iget-object v7, v0, Lj6/e0;->u:Ljava/util/HashSet;

    if-eqz v7, :cond_92

    invoke-virtual {v5}, Lj6/h0;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_92

    goto :goto_3d

    :cond_92
    iget-object v7, v5, Lj6/h0;->r:Lj6/g0;

    const/4 v14, 0x0

    invoke-static {v7, v14}, Lj6/h0;->H(Lj6/g0;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    iget-object v8, v5, Lj6/h0;->t:Lj6/g0;

    invoke-static {v8, v7}, Lj6/h0;->H(Lj6/g0;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    iget-object v8, v5, Lj6/h0;->u:Lj6/g0;

    invoke-static {v8, v7}, Lj6/h0;->H(Lj6/g0;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    iget-object v8, v5, Lj6/h0;->s:Lj6/g0;

    invoke-static {v8, v7}, Lj6/h0;->H(Lj6/g0;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    if-nez v7, :cond_93

    sget-object v7, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :cond_93
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_94

    goto :goto_3d

    :cond_94
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    if-nez v4, :cond_95

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    :cond_95
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_96

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb6/i0;

    new-instance v8, Lj6/h0;

    invoke-direct {v8, v5, v7}, Lj6/h0;-><init>(Lj6/h0;Lb6/i0;)V

    invoke-virtual {v4, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :cond_96
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iget-object v10, v5, Lj6/h0;->r:Lj6/g0;

    check-cast v7, Ljava/util/Set;

    invoke-virtual {v5, v7, v8, v10}, Lj6/h0;->G(Ljava/util/Set;Ljava/util/HashMap;Lj6/g0;)V

    iget-object v10, v5, Lj6/h0;->t:Lj6/g0;

    invoke-virtual {v5, v7, v8, v10}, Lj6/h0;->G(Ljava/util/Set;Ljava/util/HashMap;Lj6/g0;)V

    iget-object v10, v5, Lj6/h0;->u:Lj6/g0;

    invoke-virtual {v5, v7, v8, v10}, Lj6/h0;->G(Ljava/util/Set;Ljava/util/HashMap;Lj6/g0;)V

    iget-object v10, v5, Lj6/h0;->s:Lj6/g0;

    invoke-virtual {v5, v7, v8, v10}, Lj6/h0;->G(Ljava/util/Set;Ljava/util/HashMap;Lj6/g0;)V

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3d

    :cond_97
    if-eqz v4, :cond_9a

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_98
    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj6/h0;

    invoke-virtual {v4}, Lj6/h0;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lj6/h0;

    if-nez v7, :cond_99

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    :cond_99
    invoke-virtual {v7, v4}, Lj6/h0;->N(Lj6/h0;)V

    :goto_3f
    iget-object v7, v0, Lj6/e0;->l:Ljava/util/List;

    invoke-static {v7, v4}, Lj6/e0;->j(Ljava/util/List;Lj6/h0;)Z

    move-result v4

    if-eqz v4, :cond_98

    iget-object v4, v0, Lj6/e0;->u:Ljava/util/HashSet;

    if-eqz v4, :cond_98

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_3e

    :cond_9a
    invoke-virtual {v1}, Lj6/c;->l()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj6/f;

    invoke-virtual {v15, v4}, Lb6/d;->u(Lj6/h;)Lr5/b;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lj6/e0;->e(Lr5/b;Lj6/h;)V

    goto :goto_40

    :cond_9b
    invoke-virtual {v1}, Lj6/c;->k()Lj6/l;

    move-result-object v2

    invoke-virtual {v2}, Lj6/l;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj6/i;

    iget-object v5, v4, Lj6/i;->o:Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v5

    const/4 v10, 0x1

    if-eq v5, v10, :cond_9c

    goto :goto_41

    :cond_9c
    invoke-virtual {v15, v4}, Lb6/d;->u(Lj6/h;)Lr5/b;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lj6/e0;->e(Lr5/b;Lj6/h;)V

    goto :goto_41

    :cond_9d
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9e
    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj6/h0;

    if-eqz v20, :cond_a0

    iget-object v5, v4, Lj6/h0;->t:Lj6/g0;

    if-eqz v5, :cond_9f

    iget-object v7, v4, Lj6/h0;->r:Lj6/g0;

    iget-object v8, v4, Lj6/h0;->s:Lj6/g0;

    iget-object v10, v4, Lj6/h0;->u:Lj6/g0;

    filled-new-array {v5, v7, v8, v10}, [Lj6/g0;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v7, v5}, Lj6/h0;->L(I[Lj6/g0;)Lb0/l1;

    move-result-object v5

    iget-object v8, v4, Lj6/h0;->t:Lj6/g0;

    invoke-static {v8, v5}, Lj6/h0;->F(Lj6/g0;Lb0/l1;)Lj6/g0;

    move-result-object v5

    iput-object v5, v4, Lj6/h0;->t:Lj6/g0;

    goto :goto_42

    :cond_9f
    const/4 v7, 0x0

    iget-object v5, v4, Lj6/h0;->r:Lj6/g0;

    if-eqz v5, :cond_9e

    iget-object v8, v4, Lj6/h0;->s:Lj6/g0;

    iget-object v10, v4, Lj6/h0;->u:Lj6/g0;

    filled-new-array {v5, v8, v10}, [Lj6/g0;

    move-result-object v5

    invoke-static {v7, v5}, Lj6/h0;->L(I[Lj6/g0;)Lb0/l1;

    move-result-object v5

    iget-object v7, v4, Lj6/h0;->r:Lj6/g0;

    invoke-static {v7, v5}, Lj6/h0;->F(Lj6/g0;Lb0/l1;)Lj6/g0;

    move-result-object v5

    iput-object v5, v4, Lj6/h0;->r:Lj6/g0;

    const/4 v7, 0x0

    goto :goto_42

    :cond_a0
    iget-object v5, v4, Lj6/h0;->s:Lj6/g0;

    if-eqz v5, :cond_a1

    iget-object v7, v4, Lj6/h0;->u:Lj6/g0;

    iget-object v8, v4, Lj6/h0;->r:Lj6/g0;

    iget-object v10, v4, Lj6/h0;->t:Lj6/g0;

    filled-new-array {v5, v7, v8, v10}, [Lj6/g0;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v7, v5}, Lj6/h0;->L(I[Lj6/g0;)Lb0/l1;

    move-result-object v5

    iget-object v8, v4, Lj6/h0;->s:Lj6/g0;

    invoke-static {v8, v5}, Lj6/h0;->F(Lj6/g0;Lb0/l1;)Lj6/g0;

    move-result-object v5

    iput-object v5, v4, Lj6/h0;->s:Lj6/g0;

    goto :goto_42

    :cond_a1
    const/4 v7, 0x0

    iget-object v5, v4, Lj6/h0;->u:Lj6/g0;

    if-eqz v5, :cond_a2

    iget-object v8, v4, Lj6/h0;->r:Lj6/g0;

    iget-object v10, v4, Lj6/h0;->t:Lj6/g0;

    filled-new-array {v5, v8, v10}, [Lj6/g0;

    move-result-object v5

    invoke-static {v7, v5}, Lj6/h0;->L(I[Lj6/g0;)Lb0/l1;

    move-result-object v5

    iget-object v8, v4, Lj6/h0;->u:Lj6/g0;

    invoke-static {v8, v5}, Lj6/h0;->F(Lj6/g0;Lb0/l1;)Lj6/g0;

    move-result-object v5

    iput-object v5, v4, Lj6/h0;->u:Lj6/g0;

    goto :goto_42

    :cond_a2
    iget-object v5, v4, Lj6/h0;->r:Lj6/g0;

    if-eqz v5, :cond_9e

    iget-object v8, v4, Lj6/h0;->t:Lj6/g0;

    filled-new-array {v5, v8}, [Lj6/g0;

    move-result-object v5

    invoke-static {v7, v5}, Lj6/h0;->L(I[Lj6/g0;)Lb0/l1;

    move-result-object v5

    iget-object v8, v4, Lj6/h0;->r:Lj6/g0;

    invoke-static {v8, v5}, Lj6/h0;->F(Lj6/g0;Lb0/l1;)Lj6/g0;

    move-result-object v5

    iput-object v5, v4, Lj6/h0;->r:Lj6/g0;

    goto/16 :goto_42

    :cond_a3
    const/4 v7, 0x0

    invoke-virtual {v15, v1}, Lb6/d;->B(Lj6/c;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_a4

    iget-object v1, v6, Ld6/m;->m:Ld6/a;

    iget-object v1, v1, Ld6/a;->o:Lb6/o0;

    goto :goto_43

    :cond_a4
    instance-of v2, v1, Lb6/o0;

    if-eqz v2, :cond_a5

    check-cast v1, Lb6/o0;

    goto :goto_43

    :cond_a5
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_c0

    check-cast v1, Ljava/lang/Class;

    const-class v2, Lb6/o0;

    if-ne v1, v2, :cond_a6

    const/4 v1, 0x0

    goto :goto_43

    :cond_a6
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_bf

    invoke-virtual {v6}, Ld6/m;->j()V

    sget-object v2, Lb6/x;->A:Lb6/x;

    invoke-virtual {v6, v2}, Ld6/m;->m(Lb6/x;)Z

    move-result v2

    invoke-static {v1, v2}, Lu6/h;->h(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb6/o0;

    :goto_43
    if-eqz v1, :cond_b7

    invoke-virtual {v9}, Lb6/l;->d0()Z

    move-result v2

    if-eqz v2, :cond_a7

    invoke-virtual {v0}, Lj6/e0;->n()Lr5/q;

    move-result-object v2

    iget-object v2, v2, Lr5/q;->m:Lr5/p;

    sget-object v4, Lr5/p;->s:Lr5/p;

    if-eq v2, v4, :cond_a7

    goto/16 :goto_4c

    :cond_a7
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lj6/h0;

    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lj6/h0;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    array-length v4, v2

    :goto_44
    if-ge v7, v4, :cond_b7

    aget-object v5, v2, v7

    iget-object v8, v5, Lj6/h0;->p:Lb6/i0;

    iget-object v9, v5, Lj6/h0;->r:Lj6/g0;

    invoke-static {v9}, Lj6/h0;->A(Lj6/g0;)Z

    move-result v9

    if-nez v9, :cond_a8

    iget-object v9, v5, Lj6/h0;->t:Lj6/g0;

    invoke-static {v9}, Lj6/h0;->A(Lj6/g0;)Z

    move-result v9

    if-nez v9, :cond_a8

    iget-object v9, v5, Lj6/h0;->u:Lj6/g0;

    invoke-static {v9}, Lj6/h0;->A(Lj6/g0;)Z

    move-result v9

    if-nez v9, :cond_a8

    iget-object v9, v5, Lj6/h0;->s:Lj6/g0;

    invoke-static {v9}, Lj6/h0;->A(Lj6/g0;)Z

    move-result v9

    if-eqz v9, :cond_a9

    :cond_a8
    sget-object v9, Lb6/x;->Q:Lb6/x;

    invoke-virtual {v6, v9}, Ld6/m;->m(Lb6/x;)Z

    move-result v9

    if-eqz v9, :cond_b2

    :cond_a9
    if-eqz v20, :cond_ab

    iget-object v9, v5, Lj6/h0;->t:Lj6/g0;

    if-eqz v9, :cond_aa

    invoke-virtual {v5}, Lj6/h0;->o()Lj6/i;

    iget-object v9, v8, Lb6/i0;->l:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lb6/o0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_48

    :cond_aa
    invoke-virtual {v5}, Lj6/h0;->v()Z

    move-result v9

    if-eqz v9, :cond_b2

    invoke-virtual {v5}, Lj6/h0;->n()Lj6/f;

    iget-object v9, v8, Lb6/i0;->l:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lb6/o0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_48

    :cond_ab
    invoke-virtual {v5}, Lj6/h0;->w()Z

    move-result v9

    if-eqz v9, :cond_ad

    iget-object v9, v5, Lj6/h0;->u:Lj6/g0;

    if-nez v9, :cond_ac

    goto :goto_45

    :cond_ac
    iget-object v9, v9, Lj6/g0;->d:Ljava/lang/Object;

    check-cast v9, Lj6/i;

    :goto_45
    iget-object v9, v8, Lb6/i0;->l:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lb6/o0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_48

    :cond_ad
    invoke-virtual {v5}, Lj6/h0;->u()Z

    move-result v9

    if-eqz v9, :cond_ae

    invoke-virtual {v5}, Lj6/h0;->m()Lj6/m;

    iget-object v9, v8, Lb6/i0;->l:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lb6/o0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_48

    :cond_ae
    invoke-virtual {v5}, Lj6/h0;->v()Z

    move-result v9

    if-eqz v9, :cond_b0

    iget-object v9, v5, Lj6/h0;->r:Lj6/g0;

    if-nez v9, :cond_af

    goto :goto_46

    :cond_af
    iget-object v9, v9, Lj6/g0;->d:Ljava/lang/Object;

    check-cast v9, Lj6/f;

    :goto_46
    iget-object v9, v8, Lb6/i0;->l:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lb6/o0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_48

    :cond_b0
    iget-object v9, v5, Lj6/h0;->t:Lj6/g0;

    if-eqz v9, :cond_b2

    if-nez v9, :cond_b1

    goto :goto_47

    :cond_b1
    iget-object v9, v9, Lj6/g0;->d:Ljava/lang/Object;

    check-cast v9, Lj6/i;

    :goto_47
    iget-object v9, v8, Lb6/i0;->l:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lb6/o0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_48

    :cond_b2
    const/4 v9, 0x0

    :goto_48
    if-eqz v9, :cond_b5

    iget-object v10, v8, Lb6/i0;->l:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b5

    iget-object v8, v5, Lj6/h0;->p:Lb6/i0;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v8, Lb6/i0;->l:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b3

    move-object v10, v8

    goto :goto_49

    :cond_b3
    new-instance v10, Lb6/i0;

    iget-object v11, v8, Lb6/i0;->m:Ljava/lang/String;

    invoke-direct {v10, v9, v11}, Lb6/i0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_49
    if-ne v10, v8, :cond_b4

    goto :goto_4a

    :cond_b4
    new-instance v8, Lj6/h0;

    invoke-direct {v8, v5, v10}, Lj6/h0;-><init>(Lj6/h0;Lb6/i0;)V

    move-object v5, v8

    goto :goto_4a

    :cond_b5
    iget-object v9, v8, Lb6/i0;->l:Ljava/lang/String;

    :goto_4a
    invoke-virtual {v3, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lj6/h0;

    if-nez v8, :cond_b6

    invoke-interface {v3, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4b

    :cond_b6
    invoke-virtual {v8, v5}, Lj6/h0;->N(Lj6/h0;)V

    :goto_4b
    iget-object v8, v0, Lj6/e0;->l:Ljava/util/List;

    invoke-static {v8, v5}, Lj6/e0;->j(Ljava/util/List;Lj6/h0;)Z

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_44

    :cond_b7
    :goto_4c
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj6/h0;

    iget-object v4, v2, Lj6/h0;->r:Lj6/g0;

    if-nez v4, :cond_b8

    goto :goto_4e

    :cond_b8
    invoke-virtual {v4}, Lj6/g0;->c()Lj6/g0;

    move-result-object v4

    :goto_4e
    iput-object v4, v2, Lj6/h0;->r:Lj6/g0;

    iget-object v4, v2, Lj6/h0;->t:Lj6/g0;

    if-nez v4, :cond_b9

    goto :goto_4f

    :cond_b9
    invoke-virtual {v4}, Lj6/g0;->c()Lj6/g0;

    move-result-object v4

    :goto_4f
    iput-object v4, v2, Lj6/h0;->t:Lj6/g0;

    iget-object v4, v2, Lj6/h0;->u:Lj6/g0;

    if-nez v4, :cond_ba

    goto :goto_50

    :cond_ba
    invoke-virtual {v4}, Lj6/g0;->c()Lj6/g0;

    move-result-object v4

    :goto_50
    iput-object v4, v2, Lj6/h0;->u:Lj6/g0;

    iget-object v4, v2, Lj6/h0;->s:Lj6/g0;

    if-nez v4, :cond_bb

    goto :goto_51

    :cond_bb
    invoke-virtual {v4}, Lj6/g0;->c()Lj6/g0;

    move-result-object v4

    :goto_51
    iput-object v4, v2, Lj6/h0;->s:Lj6/g0;

    goto :goto_4d

    :cond_bc
    if-eqz v23, :cond_bd

    if-nez v20, :cond_bd

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj6/h0;

    const/4 v14, 0x0

    iput-object v14, v2, Lj6/h0;->r:Lj6/g0;

    goto :goto_52

    :cond_bd
    sget-object v1, Lb6/x;->O:Lb6/x;

    invoke-virtual {v6, v1}, Ld6/m;->m(Lb6/x;)Z

    move-result v1

    if-eqz v1, :cond_be

    invoke-virtual {v0, v3}, Lj6/e0;->i(Ljava/util/LinkedHashMap;)V

    :cond_be
    invoke-virtual {v0, v3}, Lj6/e0;->l(Ljava/util/LinkedHashMap;)V

    iput-object v3, v0, Lj6/e0;->k:Ljava/util/LinkedHashMap;

    const/4 v10, 0x1

    iput-boolean v10, v0, Lj6/e0;->j:Z

    return-void

    :cond_bf
    invoke-static {v1}, Lu6/h;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "AnnotationIntrospector returned Class %s; expected `Class<PropertyNamingStrategy>`"

    invoke-virtual {v0, v2, v1}, Lj6/e0;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v16, 0x0

    throw v16

    :cond_c0
    const/16 v16, 0x0

    invoke-static {v1}, Lu6/h;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "AnnotationIntrospector returned PropertyNamingStrategy definition of type %s; expected type `PropertyNamingStrategy` or `Class<PropertyNamingStrategy>` instead"

    invoke-virtual {v0, v2, v1}, Lj6/e0;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v16
.end method

.method public final n()Lr5/q;
    .locals 3

    iget-object v0, p0, Lj6/e0;->w:Lr5/q;

    if-nez v0, :cond_4

    iget-object v0, p0, Lj6/e0;->g:Lb6/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lj6/e0;->e:Lj6/c;

    invoke-virtual {v0, v1}, Lb6/d;->s(Lj6/a;)Lr5/q;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lj6/e0;->d:Lb6/l;

    iget-object v1, v1, Lb6/l;->o:Ljava/lang/Class;

    iget-object v2, p0, Lj6/e0;->a:Ld6/m;

    invoke-virtual {v2, v1}, Ld6/m;->h(Ljava/lang/Class;)Lr5/q;

    move-result-object v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lr5/q;->e(Lr5/q;)Lr5/q;

    move-result-object v0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    sget-object v0, Lr5/q;->s:Lr5/q;

    :cond_3
    iput-object v0, p0, Lj6/e0;->w:Lr5/q;

    :cond_4
    iget-object p0, p0, Lj6/e0;->w:Lr5/q;

    return-object p0
.end method

.method public final varargs o(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    array-length v0, p2

    if-lez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Problem with definition of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lj6/e0;->e:Lj6/c;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
