.class public abstract Lf8/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf8/n4;
.implements Lf8/q4;


# direct methods
.method public static D(Lf8/c;)Landroidx/fragment/app/i0;
    .locals 8

    new-instance v0, Landroidx/fragment/app/i0;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    invoke-static {p0, v2, v1}, Lf8/v4;->k(Lf8/q4;Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Message missing required fields: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/String;

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    const-string v7, ", "

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract A(Lf8/i5;)Lf8/a;
.end method

.method public abstract B(Lf8/v2;)Lf8/a;
.end method

.method public abstract E(Lf8/v2;Ljava/lang/Object;)Lf8/a;
.end method

.method public abstract F(Lf8/i5;)Lf8/a;
.end method

.method public abstract g(Lf8/v2;Ljava/lang/Object;)Lf8/a;
.end method

.method public abstract h()Lf8/m2;
.end method

.method public bridge synthetic k(Lf8/k;Lf8/h3;)Lf8/n4;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/a;->v(Lf8/k;Lf8/h3;)Lf8/a;

    move-result-object p0

    return-object p0
.end method

.method public abstract r()Lf8/c;
.end method

.method public abstract s()Lf8/c;
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lf8/c5;->a:Ljava/util/logging/Logger;

    sget-object v0, Lf8/b5;->b:Lf8/b5;

    invoke-virtual {v0, p0}, Lf8/b5;->c(Lf8/q4;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u(Lf8/c;)Lf8/a;
    .locals 5

    invoke-interface {p1}, Lf8/q4;->l()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lf8/q4;->h()Lf8/m2;

    move-result-object v1

    invoke-virtual {p0}, Lf8/a;->h()Lf8/m2;

    move-result-object v2

    if-ne v1, v2, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/v2;

    invoke-virtual {v2}, Lf8/v2;->l()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lf8/a;->g(Lf8/v2;Ljava/lang/Object;)Lf8/a;

    goto :goto_1

    :cond_1
    iget-object v3, v2, Lf8/v2;->r:Lf8/u2;

    iget-object v3, v3, Lf8/u2;->l:Lf8/t2;

    sget-object v4, Lf8/t2;->u:Lf8/t2;

    if-ne v3, v4, :cond_3

    invoke-interface {p0, v2}, Lf8/q4;->o(Lf8/v2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf8/c;

    invoke-interface {v3}, Lf8/q4;->a()Lf8/c;

    move-result-object v4

    if-ne v3, v4, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lf8/a;->E(Lf8/v2;Ljava/lang/Object;)Lf8/a;

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lf8/c;->d()Lf8/a;

    move-result-object v4

    invoke-virtual {v4, v3}, Lf8/a;->x(Lf8/c;)Lf8/a;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf8/c;

    invoke-virtual {v3, v1}, Lf8/a;->x(Lf8/c;)Lf8/a;

    move-result-object v1

    invoke-virtual {v1}, Lf8/a;->r()Lf8/c;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lf8/a;->E(Lf8/v2;Ljava/lang/Object;)Lf8/a;

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lf8/a;->E(Lf8/v2;Ljava/lang/Object;)Lf8/a;

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Lf8/q4;->i()Lf8/i5;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf8/a;->A(Lf8/i5;)Lf8/a;

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mergeFrom(Message) can only merge messages of the same type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public v(Lf8/k;Lf8/h3;)Lf8/a;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lf8/q4;->i()Lf8/i5;

    move-result-object v0

    invoke-static {}, Lf8/i5;->b()Lf8/f5;

    move-result-object v2

    invoke-virtual {v2, v0}, Lf8/f5;->x(Lf8/i5;)V

    :goto_0
    invoke-virtual {p1}, Lf8/k;->q()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    new-instance v5, Lb0/l1;

    const/16 v0, 0x8

    invoke-direct {v5, v0, p0}, Lb0/l1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lf8/a;->h()Lf8/m2;

    move-result-object v4

    move-object v1, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lf8/v4;->m(Lf8/k;Lf8/f5;Lf8/h3;Lf8/m2;Lb0/l1;I)Z

    move-result p1

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v2}, Lf8/f5;->r()Lf8/i5;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf8/a;->F(Lf8/i5;)Lf8/a;

    return-object p0

    :cond_1
    move-object p1, v1

    move-object p2, v3

    goto :goto_0
.end method

.method public abstract x(Lf8/c;)Lf8/a;
.end method

.method public final z(Lf8/j;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lf8/j;->l()Lf8/k;

    move-result-object p1

    sget-object v0, Lf8/f3;->e:Lf8/f3;

    invoke-virtual {p0, p1, v0}, Lf8/a;->v(Lf8/k;Lf8/h3;)Lf8/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lf8/k;->a(I)V
    :try_end_0
    .catch Lf8/h4; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reading "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " from a ByteString threw an IOException (should never happen)."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    throw p0
.end method
