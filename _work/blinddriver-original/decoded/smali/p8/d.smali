.class public final Lp8/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljava/util/LinkedHashMap;

.field public final c:Ljava/util/HashSet;

.field public final d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 8

    const-string v0, "roadTypesByName"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "speedLimitsByCountryCode"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lp8/d;->a:Ljava/util/Map;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lu8/v;->J(I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp8/f;

    const/16 v4, 0x22

    :try_start_0
    invoke-interface {v0}, Lp8/f;->getFilter()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v6, Lq3/k;

    invoke-direct {v6, v5}, Lq3/k;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lq8/l; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_6

    :cond_0
    move-object v6, v1

    :goto_1
    :try_start_1
    invoke-interface {v0}, Lp8/f;->getFuzzyFilter()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v7, Lq3/k;

    invoke-direct {v7, v5}, Lq3/k;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lq8/l; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_5

    :cond_1
    move-object v7, v1

    :goto_2
    :try_start_2
    invoke-interface {v0}, Lp8/f;->getRelationFilter()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lq3/k;

    invoke-direct {v1, v0}, Lq3/k;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lq8/l; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    goto :goto_4

    :cond_2
    :goto_3
    new-instance v0, Lp8/g;

    invoke-direct {v0, v6, v7, v1}, Lp8/g;-><init>(Lq3/k;Lq3/k;Lq3/k;)V

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :goto_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid road type relationFilter for \""

    invoke-static {v4, p2, v3}, La6/q;->g(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid road type fuzzyFilter for \""

    invoke-static {v4, p2, v3}, La6/q;->g(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid road type filter for \""

    invoke-static {v4, p2, v3}, La6/q;->g(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    iput-object p2, p0, Lp8/d;->b:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lp8/d;->c:Ljava/util/HashSet;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lp8/d;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    const/16 p2, 0xa

    invoke-static {p1, p2}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-static {p2}, Lu8/v;->J(I)I

    move-result p2

    const/16 v0, 0x10

    if-ge p2, v0, :cond_4

    move p2, v0

    :cond_4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lp8/g;

    new-instance v3, Lp/i;

    const/4 v4, 0x1

    invoke-direct {v3, p2, v1, v4}, Lp/i;-><init>(Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v3}, Ll7/a;->r(Li9/e;)Lq9/i;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    sget-object p2, Lu8/t;->l:Lu8/t;

    goto :goto_9

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v3}, Ll7/a;->y(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    goto :goto_9

    :cond_6
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_7
    move-object p2, v4

    :goto_9
    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_8
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    move-object v2, p2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lu8/m;->E0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    :goto_b
    move-object v3, p2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-eqz v4, :cond_9

    check-cast v4, Ljava/util/Collection;

    goto :goto_d

    :cond_9
    sget-object v4, Lu8/r;->l:Lu8/r;

    :goto_d
    invoke-virtual {v3, v4}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_c

    :cond_a
    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object p2, v3

    goto :goto_b

    :cond_b
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto :goto_a

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A road type filter for \""

    const-string p2, "\" contains circular placeholders"

    invoke-static {p1, v1, p2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    iget-object p1, p0, Lp8/d;->c:Ljava/util/HashSet;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lp8/d;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp8/g;

    iget-object v2, v1, Lp8/g;->a:Lq3/k;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lq3/k;->m()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {p2, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_f
    iget-object v2, v1, Lp8/g;->b:Lq3/k;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lq3/k;->m()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {p2, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_10
    iget-object v1, v1, Lp8/g;->c:Lq3/k;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lq3/k;->m()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {p2, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_e

    :cond_11
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_12
    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr8/i;

    instance-of v1, v0, Lr8/j;

    if-eqz v1, :cond_14

    check-cast v0, Lr8/j;

    iget-object v0, v0, Lr8/j;->a:Lr8/h;

    instance-of v1, v0, Lr8/g;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lp8/d;->d:Ljava/util/ArrayList;

    check-cast v0, Lr8/g;

    iget-object v0, v0, Lr8/g;->b:Lr9/i;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_13
    instance-of v1, v0, Lr8/l;

    if-eqz v1, :cond_12

    check-cast v0, Lr8/l;

    iget-object v0, v0, Lr8/l;->b:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_f

    :cond_14
    instance-of v1, v0, Lr8/k;

    if-eqz v1, :cond_12

    check-cast v0, Lr8/k;

    iget-object v0, v0, Lr8/k;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_15
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/Map;ZLi9/e;)Lp8/e;
    .locals 11

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    new-instance v0, Lr9/e;

    invoke-direct {v0, p1}, Lr9/e;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lr9/e;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v1, v0

    check-cast v1, Ld1/k0;

    iget-object v1, v1, Ld1/k0;->m:Ljava/lang/Object;

    check-cast v1, Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp8/e;

    invoke-interface {v1}, Lp8/e;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    move-object v3, p0

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    goto :goto_1

    :cond_1
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    new-instance v2, Lp8/c;

    move-object v3, p0

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lp8/c;-><init>(Lp8/d;Ljava/lang/String;Ljava/util/Map;ZLi9/e;)V

    invoke-interface {v7, v4, v2}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v1

    :cond_2
    move-object p0, v3

    move-object p2, v5

    move p3, v6

    move-object p4, v7

    goto :goto_0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp8/e;

    move-object v10, v7

    invoke-interface {p1}, Lp8/e;->getName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v8, v5

    new-instance v5, Lp8/c;

    move v9, v6

    move-object v6, v3

    invoke-direct/range {v5 .. v10}, Lp8/c;-><init>(Lp8/d;Ljava/lang/String;Ljava/util/Map;ZLi9/e;)V

    move-object p3, v5

    move-object p2, v7

    move-object v5, v8

    move v6, v9

    move-object v7, v10

    invoke-interface {v7, p2, p3}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    return-object p1

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/util/Map;Li9/e;)Lp8/a;
    .locals 7

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const-string v1, "countryCode"

    invoke-static {p1, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tags"

    invoke-static {p2, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "relationsTags"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lp8/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/16 v1, 0x2d

    invoke-static {p1, v1}, Lr9/k;->u0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, v1, p2, p1, p3}, Lp8/d;->a(Ljava/util/List;Ljava/util/Map;ZLi9/e;)Lp8/e;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    new-instance p0, Lp8/a;

    invoke-interface {p1}, Lp8/e;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1}, Lp8/e;->getTags()Ljava/util/Map;

    move-result-object p1

    invoke-static {p2, p1}, Lr5/u0;->d(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-direct {p0, v0, p3, p1}, Lp8/a;-><init>(ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    return-object p0

    :cond_1
    const-string p1, "maxspeed"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_3

    :cond_2
    :goto_0
    move-object v5, v2

    goto :goto_2

    :cond_3
    new-instance v4, Lr9/e;

    invoke-direct {v4, v1}, Lr9/e;-><init>(Ljava/util/List;)V

    invoke-virtual {v4}, Lr9/e;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    move-object v5, v4

    check-cast v5, Ld1/k0;

    iget-object v5, v5, Ld1/k0;->m:Ljava/lang/Object;

    check-cast v5, Ljava/util/ListIterator;

    invoke-interface {v5}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp8/e;

    invoke-interface {v5}, Lp8/e;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {v5}, Lp8/e;->getTags()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp8/e;

    invoke-interface {v5}, Lp8/e;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8

    goto :goto_0

    :cond_8
    invoke-interface {v5}, Lp8/e;->getTags()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :goto_2
    if-eqz v5, :cond_9

    new-instance p0, Lp8/a;

    invoke-interface {v5}, Lp8/e;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v5}, Lp8/e;->getTags()Ljava/util/Map;

    move-result-object p3

    invoke-static {p2, p3}, Lr5/u0;->d(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p2

    const/4 p3, 0x2

    invoke-direct {p0, p3, p1, p2}, Lp8/a;-><init>(ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    return-object p0

    :cond_9
    invoke-virtual {p0, v1, p2, v0, p3}, Lp8/d;->a(Ljava/util/List;Ljava/util/Map;ZLi9/e;)Lp8/e;

    move-result-object p0

    if-eqz p0, :cond_a

    new-instance p1, Lp8/a;

    invoke-interface {p0}, Lp8/e;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0}, Lp8/e;->getTags()Ljava/util/Map;

    move-result-object p0

    invoke-static {p2, p0}, Lr5/u0;->d(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p0

    const/4 p2, 0x3

    invoke-direct {p1, p2, p3, p0}, Lp8/a;-><init>(ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    return-object p1

    :cond_a
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lp8/e;

    invoke-interface {p3}, Lp8/e;->getName()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_b

    goto :goto_3

    :cond_c
    move-object p1, v2

    :goto_3
    check-cast p1, Lp8/e;

    if-eqz p1, :cond_d

    new-instance p0, Lp8/a;

    invoke-interface {p1}, Lp8/e;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1}, Lp8/e;->getTags()Ljava/util/Map;

    move-result-object p1

    invoke-static {p2, p1}, Lr5/u0;->d(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p1

    const/4 p2, 0x4

    invoke-direct {p0, p2, p3, p1}, Lp8/a;-><init>(ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    return-object p0

    :cond_d
    :goto_4
    return-object v2
.end method
