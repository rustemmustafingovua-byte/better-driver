.class public final Lo6/m;
.super Lpc/h;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public n:Ljava/util/LinkedHashSet;


# direct methods
.method public static A(Lj6/c;Ln6/c;Ld6/m;Lb6/d;Ljava/util/HashMap;)V
    .locals 3

    invoke-virtual {p1}, Ln6/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3, p0}, Lb6/d;->e0(Lj6/c;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ln6/c;

    iget-object p1, p1, Ln6/c;->l:Ljava/lang/Class;

    invoke-direct {v1, p1, v0}, Ln6/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    new-instance v0, Ln6/c;

    iget-object v1, p1, Ln6/c;->l:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln6/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ln6/c;->a()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln6/c;

    invoke-virtual {p0}, Ln6/c;->a()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    invoke-virtual {p4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, p0}, Lb6/d;->d0(Lj6/a;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln6/c;

    iget-object v0, p1, Ln6/c;->l:Ljava/lang/Class;

    invoke-static {p2, v0}, Lf7/q;->i(Ld6/m;Ljava/lang/Class;)Lj6/c;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lo6/m;->A(Lj6/c;Ln6/c;Ld6/m;Lb6/d;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static B(Lj6/c;Ln6/c;Ld6/m;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashMap;)V
    .locals 3

    invoke-virtual {p2}, Ld6/m;->d()Lb6/d;

    move-result-object v0

    invoke-virtual {p1}, Ln6/c;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Lb6/d;->e0(Lj6/c;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ln6/c;

    iget-object p1, p1, Ln6/c;->l:Ljava/lang/Class;

    invoke-direct {v2, p1, v1}, Ln6/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object p1, v2

    :cond_0
    invoke-virtual {p1}, Ln6/c;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Ln6/c;->n:Ljava/lang/String;

    invoke-interface {p4, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p1, p1, Ln6/c;->l:Ljava/lang/Class;

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0, p0}, Lb6/d;->d0(Lj6/a;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln6/c;

    iget-object v0, p1, Ln6/c;->l:Ljava/lang/Class;

    invoke-static {p2, v0}, Lf7/q;->i(Ld6/m;Ljava/lang/Class;)Lj6/c;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lo6/m;->B(Lj6/c;Ln6/c;Ld6/m;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashMap;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static C(Ljava/lang/Class;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashMap;)Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln6/c;

    iget-object v1, v1, Ln6/c;->l:Ljava/lang/Class;

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    if-ne p2, p0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ln6/c;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Ln6/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final D(Ld6/m;Lj6/h;Lb6/l;)Ljava/util/ArrayList;
    .locals 4

    invoke-virtual {p1}, Ld6/m;->d()Lb6/d;

    move-result-object v0

    if-eqz p3, :cond_0

    iget-object p3, p3, Lb6/l;->o:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lj6/a;->f()Ljava/lang/Class;

    move-result-object p3

    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lo6/m;->n:Ljava/util/LinkedHashSet;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln6/c;

    iget-object v3, v2, Ln6/c;->l:Ljava/lang/Class;

    invoke-virtual {p3, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Ln6/c;->l:Ljava/lang/Class;

    invoke-static {p1, v3}, Lf7/q;->i(Ld6/m;Ljava/lang/Class;)Lj6/c;

    move-result-object v3

    invoke-static {v3, v2, p1, v0, v1}, Lo6/m;->A(Lj6/c;Ln6/c;Ld6/m;Lb6/d;Ljava/util/HashMap;)V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v0, p2}, Lb6/d;->d0(Lj6/a;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln6/c;

    iget-object v2, p2, Ln6/c;->l:Ljava/lang/Class;

    invoke-static {p1, v2}, Lf7/q;->i(Ld6/m;Ljava/lang/Class;)Lj6/c;

    move-result-object v2

    invoke-static {v2, p2, p1, v0, v1}, Lo6/m;->A(Lj6/c;Ln6/c;Ld6/m;Lb6/d;Ljava/util/HashMap;)V

    goto :goto_2

    :cond_3
    new-instance p0, Ln6/c;

    const/4 p2, 0x0

    invoke-direct {p0, p3, p2}, Ln6/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {p1, p3}, Lf7/q;->i(Ld6/m;Ljava/lang/Class;)Lj6/c;

    move-result-object p2

    invoke-static {p2, p0, p1, v0, v1}, Lo6/m;->A(Lj6/c;Ln6/c;Ld6/m;Lb6/d;Ljava/util/HashMap;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Both property and base type are nulls"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final E(Ld6/m;Lj6/c;)Ljava/util/ArrayList;
    .locals 5

    iget-object v0, p2, Lj6/c;->m:Ljava/lang/Class;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v3, Ln6/c;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Ln6/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {p2, v3, p1, v1, v2}, Lo6/m;->B(Lj6/c;Ln6/c;Ld6/m;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashMap;)V

    iget-object p0, p0, Lo6/m;->n:Ljava/util/LinkedHashSet;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln6/c;

    iget-object v3, p2, Ln6/c;->l:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p2, Ln6/c;->l:Ljava/lang/Class;

    invoke-static {p1, v3}, Lf7/q;->i(Ld6/m;Ljava/lang/Class;)Lj6/c;

    move-result-object v3

    invoke-static {v3, p2, p1, v1, v2}, Lo6/m;->B(Lj6/c;Ln6/c;Ld6/m;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashMap;)V

    goto :goto_0

    :cond_1
    invoke-static {v0, v1, v2}, Lo6/m;->C(Ljava/lang/Class;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashMap;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final F(Ld6/m;Lj6/h;Lb6/l;)Ljava/util/ArrayList;
    .locals 5

    invoke-virtual {p1}, Ld6/m;->d()Lb6/d;

    move-result-object v0

    iget-object p3, p3, Lb6/l;->o:Ljava/lang/Class;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v3, Ln6/c;

    const/4 v4, 0x0

    invoke-direct {v3, p3, v4}, Ln6/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {p1, p3}, Lf7/q;->i(Ld6/m;Ljava/lang/Class;)Lj6/c;

    move-result-object v4

    invoke-static {v4, v3, p1, v1, v2}, Lo6/m;->B(Lj6/c;Ln6/c;Ld6/m;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashMap;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lb6/d;->d0(Lj6/a;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln6/c;

    iget-object v3, v0, Ln6/c;->l:Ljava/lang/Class;

    invoke-static {p1, v3}, Lf7/q;->i(Ld6/m;Ljava/lang/Class;)Lj6/c;

    move-result-object v3

    invoke-static {v3, v0, p1, v1, v2}, Lo6/m;->B(Lj6/c;Ln6/c;Ld6/m;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashMap;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lo6/m;->n:Ljava/util/LinkedHashSet;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln6/c;

    iget-object v0, p2, Ln6/c;->l:Ljava/lang/Class;

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Ln6/c;->l:Ljava/lang/Class;

    invoke-static {p1, v0}, Lf7/q;->i(Ld6/m;Ljava/lang/Class;)Lj6/c;

    move-result-object v0

    invoke-static {v0, p2, p1, v1, v2}, Lo6/m;->B(Lj6/c;Ln6/c;Ld6/m;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashMap;)V

    goto :goto_1

    :cond_2
    invoke-static {p3, v1, v2}, Lo6/m;->C(Ljava/lang/Class;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashMap;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
