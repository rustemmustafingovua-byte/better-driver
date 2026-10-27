.class public final Lp6/v;
.super Lp6/f;
.source "SourceFile"


# instance fields
.field public final m:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lp6/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lp6/f;-><init>(Lp6/m;)V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lp6/v;->m:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final A()I
    .locals 0

    const/4 p0, 0x7

    return p0
.end method

.method public final D()Lb6/q;
    .locals 1

    const-string v0, "name"

    iget-object p0, p0, Lp6/v;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb6/q;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lp6/o;->l:Lp6/o;

    return-object p0
.end method

.method public final E()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lp6/v;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final H(Lb6/r0;)Ljava/util/AbstractMap;
    .locals 1

    sget-object v0, Ld6/l;->p:Ld6/l;

    iget-object p1, p1, Lb6/r0;->o:Lb6/p0;

    iget-object p1, p1, Ld6/n;->s:Ld6/i;

    invoke-virtual {p1, v0}, Ld6/i;->a(Ld6/g;)Z

    move-result p1

    iget-object p0, p0, Lp6/v;->m:Ljava/util/LinkedHashMap;

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    return-object p1

    :cond_0
    return-object p0
.end method

.method public final I(Ljava/lang/String;Lb6/q;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lp6/v;->m:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final J(Ljava/lang/String;D)V
    .locals 1

    iget-object v0, p0, Lp6/f;->l:Lp6/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lp6/h;

    invoke-direct {v0, p2, p3}, Lp6/h;-><init>(D)V

    iget-object p0, p0, Lp6/v;->m:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final K(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lp6/f;->l:Lp6/m;

    if-nez p2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lp6/t;->l:Lp6/t;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lp6/m;->b(Ljava/lang/String;)Lp6/x;

    move-result-object p2

    :goto_0
    iget-object p0, p0, Lp6/v;->m:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final L(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lp6/f;->l:Lp6/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lp6/w;

    invoke-direct {v0, p1}, Lp6/w;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p2, v0}, Lp6/v;->I(Ljava/lang/String;Lb6/q;)V

    return-void
.end method

.method public final M(Ljava/lang/String;Lb6/q;)Lb6/q;
    .locals 0

    if-nez p2, :cond_0

    iget-object p2, p0, Lp6/f;->l:Lp6/m;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lp6/t;->l:Lp6/t;

    :cond_0
    iget-object p0, p0, Lp6/v;->m:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb6/q;

    return-object p0
.end method

.method public final N(Ls5/g;Lb6/r0;ZZ)V
    .locals 4

    invoke-virtual {p0, p2}, Lp6/v;->H(Lb6/r0;)Ljava/util/AbstractMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb6/q;

    if-eqz p3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lp6/a;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lb6/r;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {v1}, Lb6/q;->A()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ls5/g;->S(Ljava/lang/String;)V

    invoke-interface {v1, p1, p2}, Lb6/s;->d(Ls5/g;Lb6/r0;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Ls5/g;Lb6/r0;Ln6/e;)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p2, Lb6/r0;->o:Lb6/p0;

    sget-object v1, Lb6/q0;->D:Lb6/q0;

    invoke-virtual {v0, v1}, Lb6/p0;->t(Lb6/q0;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    sget-object v2, Ld6/l;->o:Ld6/l;

    iget-object v0, v0, Ld6/n;->s:Ld6/i;

    invoke-virtual {v0, v2}, Ld6/i;->a(Ld6/g;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    :goto_0
    sget-object v2, Ls5/n;->u:Ls5/n;

    invoke-virtual {p3, p0, v2}, Ln6/e;->d(Ljava/lang/Object;Ls5/n;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object v2

    invoke-virtual {p3, p1, v2}, Ln6/e;->e(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object v2

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, p2}, Lp6/v;->H(Lb6/r0;)Ljava/util/AbstractMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb6/q;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ls5/g;->S(Ljava/lang/String;)V

    invoke-interface {v1, p1, p2}, Lb6/s;->d(Ls5/g;Lb6/r0;)V

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {p0, p1, p2, v1, v0}, Lp6/v;->N(Ls5/g;Lb6/r0;ZZ)V

    :cond_3
    invoke-virtual {p3, p1, v2}, Ln6/e;->f(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    return-void
.end method

.method public final c()Ls5/n;
    .locals 0

    sget-object p0, Ls5/n;->u:Ls5/n;

    return-object p0
.end method

.method public final d(Ls5/g;Lb6/r0;)V
    .locals 4

    if-eqz p2, :cond_1

    iget-object v0, p2, Lb6/r0;->o:Lb6/p0;

    sget-object v1, Lb6/q0;->D:Lb6/q0;

    invoke-virtual {v0, v1}, Lb6/p0;->t(Lb6/q0;)Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    sget-object v3, Ld6/l;->o:Ld6/l;

    iget-object v0, v0, Ld6/n;->s:Ld6/i;

    invoke-virtual {v0, v3}, Ld6/i;->a(Ld6/g;)Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1, p0}, Ls5/g;->o0(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, v2, v3}, Lp6/v;->N(Ls5/g;Lb6/r0;ZZ)V

    invoke-virtual {p1}, Ls5/g;->R()V

    return-void

    :cond_1
    invoke-virtual {p1, p0}, Ls5/g;->o0(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lp6/v;->H(Lb6/r0;)Ljava/util/AbstractMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb6/q;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ls5/g;->S(Ljava/lang/String;)V

    invoke-interface {v1, p1, p2}, Lb6/s;->d(Ls5/g;Lb6/r0;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ls5/g;->R()V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lp6/v;

    if-eqz v0, :cond_2

    check-cast p1, Lp6/v;

    iget-object p0, p0, Lp6/v;->m:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lp6/v;->m:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lp6/v;->m:Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->hashCode()I

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Lp6/v;->m:Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lp6/v;->m:Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public final w()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lp6/v;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final x()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lp6/v;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final y(I)Lb6/q;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final z(Ljava/lang/String;)Lb6/q;
    .locals 0

    iget-object p0, p0, Lp6/v;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb6/q;

    return-object p0
.end method
