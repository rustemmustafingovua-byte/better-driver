.class public abstract Lf8/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf8/o4;
.implements Lf8/q4;


# instance fields
.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lf8/c;->l:I

    return-void
.end method

.method public static b(Ljava/util/List;)Ljava/util/Map;
    .locals 6

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf8/c;

    invoke-interface {v1}, Lf8/q4;->h()Lf8/m2;

    move-result-object v2

    const-string v3, "key"

    invoke-virtual {v2, v3}, Lf8/m2;->g(Ljava/lang/String;)Lf8/v2;

    move-result-object v3

    const-string v4, "value"

    invoke-virtual {v2, v4}, Lf8/m2;->g(Ljava/lang/String;)Lf8/v2;

    move-result-object v2

    invoke-interface {v1, v2}, Lf8/q4;->o(Lf8/v2;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lf8/s2;

    if-eqz v5, :cond_1

    check-cast v4, Lf8/s2;

    iget-object v4, v4, Lf8/s2;->l:Lf8/f0;

    iget v4, v4, Lf8/f0;->p:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_1
    invoke-interface {v1, v3}, Lf8/q4;->o(Lf8/v2;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf8/c;

    invoke-interface {v1, v2}, Lf8/q4;->o(Lf8/v2;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lf8/s2;

    if-eqz v5, :cond_2

    check-cast v4, Lf8/s2;

    iget-object v4, v4, Lf8/s2;->l:Lf8/f0;

    iget v4, v4, Lf8/f0;->p:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_2
    invoke-interface {v1, v3}, Lf8/q4;->o(Lf8/v2;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static c(ILjava/util/Map;)I
    .locals 4

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf8/v2;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    mul-int/lit8 p0, p0, 0x25

    iget-object v2, v1, Lf8/v2;->m:Lf8/q0;

    iget v2, v2, Lf8/q0;->p:I

    add-int/2addr p0, v2

    invoke-virtual {v1}, Lf8/v2;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    mul-int/lit8 p0, p0, 0x35

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lf8/c;->b(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lf8/m4;->a(Ljava/util/Map;)I

    move-result v0

    :goto_1
    add-int/2addr v0, p0

    move p0, v0

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lf8/v2;->r:Lf8/u2;

    sget-object v3, Lf8/u2;->q:Lf8/u2;

    if-eq v2, v3, :cond_1

    mul-int/lit8 p0, p0, 0x35

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lf8/v2;->l()Z

    move-result v1

    if-eqz v1, :cond_3

    check-cast v0, Ljava/util/List;

    mul-int/lit8 p0, p0, 0x35

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/b4;

    mul-int/lit8 v1, v1, 0x1f

    invoke-interface {v2}, Lf8/b4;->a()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_2

    :cond_2
    add-int/2addr p0, v1

    goto :goto_0

    :cond_3
    mul-int/lit8 p0, p0, 0x35

    check-cast v0, Lf8/b4;

    invoke-interface {v0}, Lf8/b4;->a()I

    move-result v0

    goto :goto_1

    :cond_4
    return p0
.end method


# virtual methods
.method public abstract d()Lf8/a;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11

    if-ne p1, p0, :cond_0

    goto/16 :goto_7

    :cond_0
    instance-of v0, p1, Lf8/c;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto/16 :goto_8

    :cond_1
    check-cast p1, Lf8/c;

    invoke-interface {p0}, Lf8/q4;->h()Lf8/m2;

    move-result-object v0

    invoke-interface {p1}, Lf8/q4;->h()Lf8/m2;

    move-result-object v2

    if-eq v0, v2, :cond_2

    goto/16 :goto_8

    :cond_2
    invoke-interface {p0}, Lf8/q4;->l()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lf8/q4;->l()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    if-eq v3, v4, :cond_3

    goto/16 :goto_8

    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf8/v2;

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto/16 :goto_8

    :cond_5
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v4, Lf8/v2;->r:Lf8/u2;

    sget-object v8, Lf8/u2;->p:Lf8/u2;

    if-ne v7, v8, :cond_f

    invoke-virtual {v4}, Lf8/v2;->l()Z

    move-result v4

    if-eqz v4, :cond_b

    check-cast v5, Ljava/util/List;

    check-cast v6, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-eq v4, v7, :cond_6

    goto/16 :goto_8

    :cond_6
    move v4, v1

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_4

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v7, [B

    if-eqz v9, :cond_7

    instance-of v10, v8, [B

    if-eqz v10, :cond_7

    check-cast v7, [B

    check-cast v8, [B

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    goto :goto_3

    :cond_7
    if-eqz v9, :cond_8

    check-cast v7, [B

    array-length v9, v7

    invoke-static {v7, v1, v9}, Lf8/j;->c([BII)Lf8/j;

    move-result-object v7

    goto :goto_1

    :cond_8
    check-cast v7, Lf8/j;

    :goto_1
    instance-of v9, v8, [B

    if-eqz v9, :cond_9

    check-cast v8, [B

    array-length v9, v8

    invoke-static {v8, v1, v9}, Lf8/j;->c([BII)Lf8/j;

    move-result-object v8

    goto :goto_2

    :cond_9
    check-cast v8, Lf8/j;

    :goto_2
    invoke-virtual {v7, v8}, Lf8/j;->equals(Ljava/lang/Object;)Z

    move-result v7

    :goto_3
    if-nez v7, :cond_a

    goto/16 :goto_8

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_b
    instance-of v4, v5, [B

    if-eqz v4, :cond_c

    instance-of v7, v6, [B

    if-eqz v7, :cond_c

    check-cast v5, [B

    check-cast v6, [B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    goto :goto_6

    :cond_c
    if-eqz v4, :cond_d

    check-cast v5, [B

    array-length v4, v5

    invoke-static {v5, v1, v4}, Lf8/j;->c([BII)Lf8/j;

    move-result-object v4

    goto :goto_4

    :cond_d
    move-object v4, v5

    check-cast v4, Lf8/j;

    :goto_4
    instance-of v5, v6, [B

    if-eqz v5, :cond_e

    check-cast v6, [B

    array-length v5, v6

    invoke-static {v6, v1, v5}, Lf8/j;->c([BII)Lf8/j;

    move-result-object v5

    goto :goto_5

    :cond_e
    move-object v5, v6

    check-cast v5, Lf8/j;

    :goto_5
    invoke-virtual {v4, v5}, Lf8/j;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_6
    if-nez v4, :cond_4

    goto :goto_8

    :cond_f
    invoke-virtual {v4}, Lf8/v2;->k()Z

    move-result v4

    if-eqz v4, :cond_10

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lf8/c;->b(Ljava/util/List;)Ljava/util/Map;

    move-result-object v4

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lf8/c;->b(Ljava/util/List;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v4, v5}, Lf8/m4;->h(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_8

    :cond_10
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_8

    :cond_11
    invoke-interface {p0}, Lf8/q4;->i()Lf8/i5;

    move-result-object p0

    invoke-interface {p1}, Lf8/q4;->i()Lf8/i5;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf8/i5;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    :goto_7
    const/4 p0, 0x1

    return p0

    :cond_12
    :goto_8
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lf8/c;->l:I

    if-nez v0, :cond_0

    invoke-interface {p0}, Lf8/q4;->h()Lf8/m2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-interface {p0}, Lf8/q4;->l()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lf8/c;->c(ILjava/util/Map;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    invoke-interface {p0}, Lf8/q4;->i()Lf8/i5;

    move-result-object v1

    iget-object v1, v1, Lf8/i5;->l:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lf8/c;->l:I

    return v1

    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lf8/c5;->a:Ljava/util/logging/Logger;

    sget-object v0, Lf8/b5;->b:Lf8/b5;

    invoke-virtual {v0, p0}, Lf8/b5;->c(Lf8/q4;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
