.class public abstract Lq6/k;
.super Lb6/r0;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public transient A:Ljava/util/AbstractMap;

.field public transient B:Ljava/util/ArrayList;

.field public transient C:Ls5/g;


# direct methods
.method public static n0(Ls5/g;Ljava/lang/Exception;)Ljava/io/IOException;
    .locals 2

    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/IOException;

    return-object p1

    :cond_0
    invoke-static {p1}, Lu6/h;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[no message for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Lb6/p;

    invoke-direct {v1, p0, v0, p1}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method


# virtual methods
.method public final Y(Ljava/lang/Object;Lr5/d1;)Lr6/u;
    .locals 4

    iget-object v0, p0, Lq6/k;->A:Ljava/util/AbstractMap;

    if-nez v0, :cond_1

    sget-object v0, Lb6/q0;->I:Lb6/q0;

    iget-object v1, p0, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v1, v0}, Lb6/p0;->t(Lb6/q0;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Lq6/k;->A:Ljava/util/AbstractMap;

    goto :goto_1

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr6/u;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    :goto_1
    iget-object v0, p0, Lq6/k;->B:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lq6/k;->B:Ljava/util/ArrayList;

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Lq6/k;->B:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr5/d1;

    invoke-virtual {v2, p2}, Lr5/d1;->a(Lr5/d1;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_6

    invoke-virtual {p2}, Lr5/d1;->e()Lr5/d1;

    move-result-object v2

    iget-object p2, p0, Lq6/k;->B:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance p2, Lr6/u;

    invoke-direct {p2, v2}, Lr6/u;-><init>(Lr5/d1;)V

    iget-object p0, p0, Lq6/k;->A:Ljava/util/AbstractMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final i0(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {p0}, Ld6/m;->j()V

    sget-object v0, Lb6/x;->A:Lb6/x;

    invoke-virtual {p0, v0}, Ld6/m;->m(Lb6/x;)Z

    move-result p0

    invoke-static {p1, p0}, Lu6/h;->h(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final j0(Ljava/lang/Object;)Z
    .locals 7

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lu6/h;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\' should filter out `null` values: ("

    const-string v5, ") "

    const-string v6, "Problem determining whether filter of type \'"

    invoke-static {v6, v1, v4, v2, v5}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iget-object v2, p0, Lq6/k;->C:Ls5/g;

    invoke-virtual {p0}, Lb6/r0;->u()Lt6/p;

    move-result-object p0

    invoke-virtual {p0, p1}, Lt6/p;->l(Ljava/lang/reflect/Type;)Lb6/l;

    new-instance p0, Lh6/b;

    invoke-direct {p0, v2, v1}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p0
.end method

.method public final m0(Lj6/a;Ljava/lang/Object;)Lb6/u;
    .locals 2

    instance-of v0, p2, Lb6/u;

    if-eqz v0, :cond_0

    check-cast p2, Lb6/u;

    goto :goto_0

    :cond_0
    instance-of v0, p2, Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    check-cast p2, Ljava/lang/Class;

    const-class v0, Lb6/t;

    if-eq p2, v0, :cond_4

    invoke-static {p2}, Lu6/h;->t(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-class v0, Lb6/u;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {p1}, Ld6/m;->j()V

    sget-object v0, Lb6/x;->A:Lb6/x;

    invoke-virtual {p1, v0}, Ld6/m;->m(Lb6/x;)Z

    move-result p1

    invoke-static {p2, p1}, Lu6/h;->h(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lb6/u;

    :goto_0
    instance-of p1, p2, Lq6/l;

    if-eqz p1, :cond_2

    move-object p1, p2

    check-cast p1, Lq6/l;

    invoke-interface {p1, p0}, Lq6/l;->a(Lb6/r0;)V

    :cond_2
    return-object p2

    :cond_3
    invoke-virtual {p1}, Lj6/a;->h()Lb6/l;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "AnnotationIntrospector returned Class "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; expected Class<JsonSerializer>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb6/r0;->G(Ljava/lang/String;)Ljava/lang/Object;

    throw v1

    :cond_4
    :goto_1
    return-object v1

    :cond_5
    invoke-virtual {p1}, Lj6/a;->h()Lb6/l;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "AnnotationIntrospector returned serializer definition of type "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; expected type JsonSerializer or Class<JsonSerializer> instead"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb6/r0;->G(Ljava/lang/String;)Ljava/lang/Object;

    throw v1
.end method

.method public abstract o0(Lb6/p0;Lg5/f;)Lq6/k;
.end method

.method public p0(Ls5/g;Ljava/lang/Object;)V
    .locals 5

    iput-object p1, p0, Lq6/k;->C:Ls5/g;

    if-nez p2, :cond_0

    iget-object p0, p0, Lb6/r0;->t:Ls6/o;

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ls5/g;->U()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p1, p0}, Lq6/k;->n0(Ls5/g;Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb6/r0;->b0(Ljava/lang/Class;)Lb6/u;

    move-result-object v1

    iget-object v2, p0, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lb6/q0;->n:Lb6/q0;

    invoke-virtual {v2, v3}, Lb6/p0;->t(Lb6/q0;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Ld6/n;->q:Lu6/m;

    invoke-virtual {v3, v0, v2}, Lu6/m;->a(Ljava/lang/Class;Ld6/n;)Lb6/i0;

    move-result-object v0

    :try_start_1
    invoke-virtual {p1}, Ls5/g;->n0()V

    iget-object v2, p0, Lb6/r0;->o:Lb6/p0;

    iget-object v3, v0, Lb6/i0;->l:Ljava/lang/String;

    iget-object v4, v0, Lb6/i0;->n:Lw5/k;

    if-nez v4, :cond_2

    if-nez v2, :cond_1

    new-instance v2, Lw5/k;

    invoke-direct {v2, v3}, Lw5/k;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v4, v2

    goto :goto_1

    :cond_1
    new-instance v2, Lw5/k;

    invoke-direct {v2, v3}, Lw5/k;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    iput-object v4, v0, Lb6/i0;->n:Lw5/k;

    :cond_2
    invoke-virtual {p1, v4}, Ls5/g;->T(Ls5/q;)V

    invoke-virtual {v1, p2, p1, p0}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    invoke-virtual {p1}, Ls5/g;->R()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    invoke-static {p1, p0}, Lq6/k;->n0(Ls5/g;Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_3
    :try_start_2
    invoke-virtual {v1, p2, p1, p0}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p0

    invoke-static {p1, p0}, Lq6/k;->n0(Ls5/g;Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method
