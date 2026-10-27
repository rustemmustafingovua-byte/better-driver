.class public Lw0/d;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Lu0/c;
.implements Ljava/util/Map;
.implements Lk9/d;


# instance fields
.field public l:Lw0/b;

.field public m:Ly0/b;

.field public n:Lw0/j;

.field public o:Ljava/lang/Object;

.field public p:I

.field public q:I


# direct methods
.method public constructor <init>(Lw0/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object p1, p0, Lw0/d;->l:Lw0/b;

    new-instance v0, Ly0/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lw0/d;->m:Ly0/b;

    iget-object v0, p1, Lw0/b;->l:Lw0/j;

    iput-object v0, p0, Lw0/d;->n:Lw0/j;

    iget p1, p1, Lw0/b;->m:I

    iput p1, p0, Lw0/d;->q:I

    return-void
.end method


# virtual methods
.method public a()Lw0/b;
    .locals 3

    iget-object v0, p0, Lw0/d;->n:Lw0/j;

    iget-object v1, p0, Lw0/d;->l:Lw0/b;

    iget-object v2, v1, Lw0/b;->l:Lw0/j;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ly0/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lw0/d;->m:Ly0/b;

    new-instance v1, Lw0/b;

    iget-object v0, p0, Lw0/d;->n:Lw0/j;

    iget v2, p0, Lw0/d;->q:I

    invoke-direct {v1, v0, v2}, Lw0/b;-><init>(Lw0/j;I)V

    :goto_0
    iput-object v1, p0, Lw0/d;->l:Lw0/b;

    return-object v1
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lw0/d;->q:I

    iget p1, p0, Lw0/d;->p:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lw0/d;->p:I

    return-void
.end method

.method public bridge synthetic build()Lu0/d;
    .locals 0

    invoke-virtual {p0}, Lw0/d;->a()Lw0/b;

    move-result-object p0

    return-object p0
.end method

.method public final clear()V
    .locals 1

    sget-object v0, Lw0/j;->e:Lw0/j;

    iput-object v0, p0, Lw0/d;->n:Lw0/j;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lw0/d;->b(I)V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    iget-object p0, p0, Lw0/d;->n:Lw0/j;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0, v1, v0, p1}, Lw0/j;->d(IILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2

    new-instance v0, Lw0/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lw0/f;-><init>(ILw0/d;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lw0/d;->n:Lw0/j;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0, v1, v0, p1}, Lw0/j;->g(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 2

    new-instance v0, Lw0/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lw0/f;-><init>(ILw0/d;)V

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    iput-object v0, p0, Lw0/d;->o:Ljava/lang/Object;

    iget-object v1, p0, Lw0/d;->n:Lw0/j;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    move-object v6, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lw0/j;->l(ILjava/lang/Object;Ljava/lang/Object;ILw0/d;)Lw0/j;

    move-result-object p0

    iput-object p0, v6, Lw0/d;->n:Lw0/j;

    iget-object p0, v6, Lw0/d;->o:Ljava/lang/Object;

    return-object p0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 6

    instance-of v0, p1, Lw0/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lw0/b;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    instance-of v0, p1, Lw0/d;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lw0/d;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lw0/d;->a()Lw0/b;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v0

    :cond_3
    :goto_2
    if-eqz v1, :cond_5

    new-instance p1, Ly0/a;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p1, Ly0/a;->a:I

    iget v2, p0, Lw0/d;->q:I

    iget-object v3, p0, Lw0/d;->n:Lw0/j;

    iget-object v4, v1, Lw0/b;->l:Lw0/j;

    const-string v5, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode<K of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder, V of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder>"

    invoke-static {v4, v5}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v0, p1, p0}, Lw0/j;->m(Lw0/j;ILy0/a;Lw0/d;)Lw0/j;

    move-result-object v0

    iput-object v0, p0, Lw0/d;->n:Lw0/j;

    iget v0, v1, Lw0/b;->m:I

    add-int/2addr v0, v2

    iget p1, p1, Ly0/a;->a:I

    sub-int/2addr v0, p1

    if-eq v2, v0, :cond_4

    invoke-virtual {p0, v0}, Lw0/d;->b(I)V

    :cond_4
    return-void

    :cond_5
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lw0/d;->o:Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lw0/d;->n:Lw0/j;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2, p1, v1, p0}, Lw0/j;->n(ILjava/lang/Object;ILw0/d;)Lw0/j;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lw0/j;->e:Lw0/j;

    :cond_1
    iput-object p1, p0, Lw0/d;->n:Lw0/j;

    .line 6
    iget-object p0, p0, Lw0/d;->o:Ljava/lang/Object;

    return-object p0
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    .line 1
    iget v0, p0, Lw0/d;->q:I

    .line 2
    iget-object v1, p0, Lw0/d;->n:Lw0/j;

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v7

    :goto_0
    const/4 v5, 0x0

    move-object v6, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lw0/j;->o(ILjava/lang/Object;Ljava/lang/Object;ILw0/d;)Lw0/j;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lw0/j;->e:Lw0/j;

    :cond_1
    iput-object p0, v6, Lw0/d;->n:Lw0/j;

    .line 3
    iget p0, v6, Lw0/d;->q:I

    if-eq v0, p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v7
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lw0/d;->q:I

    return p0
.end method

.method public final values()Ljava/util/Collection;
    .locals 2

    new-instance v0, Lv8/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lv8/h;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method
