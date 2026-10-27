.class public final Lf8/c3;
.super Lf8/a;
.source "SourceFile"


# instance fields
.field public final l:Lf8/m2;

.field public m:Lf8/k3;

.field public final n:[Lf8/v2;

.field public o:Lf8/i5;


# direct methods
.method public constructor <init>(Lf8/m2;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf8/c3;->l:Lf8/m2;

    new-instance v0, Lf8/k3;

    invoke-direct {v0}, Lf8/k3;-><init>()V

    iput-object v0, p0, Lf8/c3;->m:Lf8/k3;

    sget-object v0, Lf8/i5;->m:Lf8/i5;

    iput-object v0, p0, Lf8/c3;->o:Lf8/i5;

    iget-object v0, p1, Lf8/m2;->l:Lf8/t;

    iget-object v0, v0, Lf8/t;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lf8/v2;

    iput-object v0, p0, Lf8/c3;->n:[Lf8/v2;

    iget-object v0, p1, Lf8/m2;->l:Lf8/t;

    invoke-virtual {v0}, Lf8/t;->w()Lf8/f1;

    move-result-object v0

    iget-boolean v0, v0, Lf8/f1;->s:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lf8/m2;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf8/v2;

    iget-object v1, v0, Lf8/v2;->r:Lf8/u2;

    iget-object v1, v1, Lf8/u2;->l:Lf8/t2;

    sget-object v2, Lf8/t2;->u:Lf8/t2;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lf8/c3;->m:Lf8/k3;

    invoke-virtual {v0}, Lf8/v2;->j()Lf8/m2;

    move-result-object v2

    invoke-static {v2}, Lf8/d3;->e(Lf8/m2;)Lf8/d3;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lf8/k3;->n(Lf8/j3;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lf8/c3;->m:Lf8/k3;

    invoke-virtual {v0}, Lf8/v2;->g()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lf8/k3;->n(Lf8/j3;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final A(Lf8/i5;)Lf8/a;
    .locals 2

    iget-object v0, p0, Lf8/c3;->o:Lf8/i5;

    invoke-static {}, Lf8/i5;->b()Lf8/f5;

    move-result-object v1

    invoke-virtual {v1, v0}, Lf8/f5;->x(Lf8/i5;)V

    invoke-virtual {v1, p1}, Lf8/f5;->x(Lf8/i5;)V

    invoke-virtual {v1}, Lf8/f5;->r()Lf8/i5;

    move-result-object p1

    iput-object p1, p0, Lf8/c3;->o:Lf8/i5;

    return-object p0
.end method

.method public final B(Lf8/v2;)Lf8/a;
    .locals 1

    invoke-virtual {p0, p1}, Lf8/c3;->L(Lf8/v2;)V

    iget-object p0, p1, Lf8/v2;->r:Lf8/u2;

    iget-object p0, p0, Lf8/u2;->l:Lf8/t2;

    sget-object v0, Lf8/t2;->u:Lf8/t2;

    if-ne p0, v0, :cond_0

    new-instance p0, Lf8/c3;

    invoke-virtual {p1}, Lf8/v2;->j()Lf8/m2;

    move-result-object p1

    invoke-direct {p0, p1}, Lf8/c3;-><init>(Lf8/m2;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "newBuilderForField is only valid for fields with message type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final E(Lf8/v2;Ljava/lang/Object;)Lf8/a;
    .locals 6

    invoke-virtual {p0, p1}, Lf8/c3;->L(Lf8/v2;)V

    iget-object v0, p0, Lf8/c3;->m:Lf8/k3;

    iget-boolean v1, v0, Lf8/k3;->b:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lf8/k3;->b()Lf8/k3;

    move-result-object v0

    iput-object v0, p0, Lf8/c3;->m:Lf8/k3;

    :cond_0
    iget-object v0, p1, Lf8/v2;->r:Lf8/u2;

    sget-object v1, Lf8/u2;->q:Lf8/u2;

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lf8/v2;->l()Z

    move-result v0

    const-string v1, "DynamicMessage should use EnumValueDescriptor to set Enum Value."

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lf8/f4;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v2, Lf8/s2;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    sget-object v0, Lf8/f4;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lf8/s2;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    iget-object v0, p1, Lf8/v2;->u:Lf8/z2;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget v0, v0, Lf8/z2;->l:I

    iget-object v2, p0, Lf8/c3;->n:[Lf8/v2;

    aget-object v3, v2, v0

    if-eqz v3, :cond_5

    if-eq v3, p1, :cond_5

    iget-object v4, p0, Lf8/c3;->m:Lf8/k3;

    iget-object v5, v4, Lf8/k3;->a:Lf8/s4;

    invoke-virtual {v5, v3}, Lf8/s4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    iput-boolean v1, v4, Lf8/k3;->c:Z

    :cond_5
    aput-object p1, v2, v0

    goto :goto_2

    :cond_6
    iget-object v0, p1, Lf8/v2;->o:Lf8/w2;

    invoke-virtual {v0}, Lf8/w2;->h()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_8

    invoke-virtual {p1}, Lf8/v2;->l()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p1, Lf8/v2;->r:Lf8/u2;

    iget-object v0, v0, Lf8/u2;->l:Lf8/t2;

    sget-object v2, Lf8/t2;->u:Lf8/t2;

    if-eq v0, v2, :cond_8

    invoke-virtual {p1}, Lf8/v2;->g()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p2, p0, Lf8/c3;->m:Lf8/k3;

    iget-object v0, p2, Lf8/k3;->a:Lf8/s4;

    invoke-virtual {v0, p1}, Lf8/s4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    iput-boolean v1, p2, Lf8/k3;->c:Z

    :cond_7
    return-object p0

    :cond_8
    :goto_2
    iget-object v0, p0, Lf8/c3;->m:Lf8/k3;

    invoke-virtual {v0, p1, p2}, Lf8/k3;->n(Lf8/j3;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final F(Lf8/i5;)Lf8/a;
    .locals 0

    iput-object p1, p0, Lf8/c3;->o:Lf8/i5;

    return-object p0
.end method

.method public final G()Lf8/d3;
    .locals 4

    invoke-virtual {p0}, Lf8/c3;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lf8/c3;->H()Lf8/d3;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lf8/d3;

    iget-object v1, p0, Lf8/c3;->m:Lf8/k3;

    iget-object v2, p0, Lf8/c3;->n:[Lf8/v2;

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lf8/v2;

    iget-object v3, p0, Lf8/c3;->o:Lf8/i5;

    iget-object p0, p0, Lf8/c3;->l:Lf8/m2;

    invoke-direct {v0, p0, v1, v2, v3}, Lf8/d3;-><init>(Lf8/m2;Lf8/k3;[Lf8/v2;Lf8/i5;)V

    invoke-static {v0}, Lf8/a;->D(Lf8/c;)Landroidx/fragment/app/i0;

    move-result-object p0

    throw p0
.end method

.method public final H()Lf8/d3;
    .locals 4

    iget-object v0, p0, Lf8/c3;->m:Lf8/k3;

    invoke-virtual {v0}, Lf8/k3;->k()V

    new-instance v0, Lf8/d3;

    iget-object v1, p0, Lf8/c3;->m:Lf8/k3;

    iget-object v2, p0, Lf8/c3;->n:[Lf8/v2;

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lf8/v2;

    iget-object v3, p0, Lf8/c3;->o:Lf8/i5;

    iget-object p0, p0, Lf8/c3;->l:Lf8/m2;

    invoke-direct {v0, p0, v1, v2, v3}, Lf8/d3;-><init>(Lf8/m2;Lf8/k3;[Lf8/v2;Lf8/i5;)V

    return-object v0
.end method

.method public final I(Lf8/c;)Lf8/c3;
    .locals 6

    instance-of v0, p1, Lf8/d3;

    if-eqz v0, :cond_6

    check-cast p1, Lf8/d3;

    iget-object v0, p1, Lf8/d3;->o:[Lf8/v2;

    iget-object v1, p1, Lf8/d3;->m:Lf8/m2;

    iget-object v2, p0, Lf8/c3;->l:Lf8/m2;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lf8/c3;->m:Lf8/k3;

    iget-boolean v2, v1, Lf8/k3;->b:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lf8/k3;->b()Lf8/k3;

    move-result-object v1

    iput-object v1, p0, Lf8/c3;->m:Lf8/k3;

    :cond_0
    iget-object v1, p0, Lf8/c3;->m:Lf8/k3;

    iget-object v2, p1, Lf8/d3;->n:Lf8/k3;

    invoke-virtual {v1, v2}, Lf8/k3;->l(Lf8/k3;)V

    iget-object p1, p1, Lf8/d3;->p:Lf8/i5;

    iget-object v1, p0, Lf8/c3;->o:Lf8/i5;

    invoke-static {}, Lf8/i5;->b()Lf8/f5;

    move-result-object v2

    invoke-virtual {v2, v1}, Lf8/f5;->x(Lf8/i5;)V

    invoke-virtual {v2, p1}, Lf8/f5;->x(Lf8/i5;)V

    invoke-virtual {v2}, Lf8/f5;->r()Lf8/i5;

    move-result-object p1

    iput-object p1, p0, Lf8/c3;->o:Lf8/i5;

    const/4 p1, 0x0

    move v1, p1

    :goto_0
    iget-object v2, p0, Lf8/c3;->n:[Lf8/v2;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    aget-object v3, v2, v1

    if-nez v3, :cond_1

    aget-object v3, v0, v1

    aput-object v3, v2, v1

    goto :goto_1

    :cond_1
    aget-object v4, v0, v1

    if-eqz v4, :cond_3

    if-eq v3, v4, :cond_3

    iget-object v4, p0, Lf8/c3;->m:Lf8/k3;

    iget-object v5, v4, Lf8/k3;->a:Lf8/s4;

    invoke-virtual {v5, v3}, Lf8/s4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iput-boolean p1, v4, Lf8/k3;->c:Z

    :cond_2
    aget-object v3, v0, v1

    aput-object v3, v2, v1

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mergeFrom(Message) can only merge messages of the same type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-super {p0, p1}, Lf8/a;->u(Lf8/c;)Lf8/a;

    return-object p0
.end method

.method public final L(Lf8/v2;)V
    .locals 0

    iget-object p1, p1, Lf8/v2;->s:Lf8/m2;

    iget-object p0, p0, Lf8/c3;->l:Lf8/m2;

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "FieldDescriptor does not match message type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final bridge synthetic build()Lf8/o4;
    .locals 0

    invoke-virtual {p0}, Lf8/c3;->G()Lf8/d3;

    move-result-object p0

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lf8/c3;

    iget-object v1, p0, Lf8/c3;->l:Lf8/m2;

    invoke-direct {v0, v1}, Lf8/c3;-><init>(Lf8/m2;)V

    iget-object v1, v0, Lf8/c3;->m:Lf8/k3;

    iget-object v2, p0, Lf8/c3;->m:Lf8/k3;

    invoke-virtual {v1, v2}, Lf8/k3;->l(Lf8/k3;)V

    iget-object v1, p0, Lf8/c3;->o:Lf8/i5;

    iget-object v2, v0, Lf8/c3;->o:Lf8/i5;

    invoke-static {}, Lf8/i5;->b()Lf8/f5;

    move-result-object v3

    invoke-virtual {v3, v2}, Lf8/f5;->x(Lf8/i5;)V

    invoke-virtual {v3, v1}, Lf8/f5;->x(Lf8/i5;)V

    invoke-virtual {v3}, Lf8/f5;->r()Lf8/i5;

    move-result-object v1

    iput-object v1, v0, Lf8/c3;->o:Lf8/i5;

    iget-object v1, v0, Lf8/c3;->n:[Lf8/v2;

    iget-object p0, p0, Lf8/c3;->n:[Lf8/v2;

    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final g(Lf8/v2;Ljava/lang/Object;)Lf8/a;
    .locals 2

    invoke-virtual {p0, p1}, Lf8/c3;->L(Lf8/v2;)V

    iget-object v0, p0, Lf8/c3;->m:Lf8/k3;

    iget-boolean v1, v0, Lf8/k3;->b:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lf8/k3;->b()Lf8/k3;

    move-result-object v0

    iput-object v0, p0, Lf8/c3;->m:Lf8/k3;

    :cond_0
    iget-object v0, p0, Lf8/c3;->m:Lf8/k3;

    invoke-virtual {v0, p1, p2}, Lf8/k3;->a(Lf8/v2;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final h()Lf8/m2;
    .locals 0

    iget-object p0, p0, Lf8/c3;->l:Lf8/m2;

    return-object p0
.end method

.method public final i()Lf8/i5;
    .locals 0

    iget-object p0, p0, Lf8/c3;->o:Lf8/i5;

    return-object p0
.end method

.method public final j(Lf8/v2;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lf8/c3;->L(Lf8/v2;)V

    iget-object p0, p0, Lf8/c3;->m:Lf8/k3;

    invoke-virtual {p0, p1}, Lf8/k3;->g(Lf8/v2;)Z

    move-result p0

    return p0
.end method

.method public final l()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lf8/c3;->m:Lf8/k3;

    invoke-virtual {p0}, Lf8/k3;->f()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final o(Lf8/v2;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lf8/c3;->L(Lf8/v2;)V

    iget-object p0, p0, Lf8/c3;->m:Lf8/k3;

    iget-object p0, p0, Lf8/k3;->a:Lf8/s4;

    invoke-virtual {p0, p1}, Lf8/s4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Lf8/v2;->l()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    iget-object p0, p1, Lf8/v2;->r:Lf8/u2;

    iget-object p0, p0, Lf8/u2;->l:Lf8/t2;

    sget-object v0, Lf8/t2;->u:Lf8/t2;

    if-ne p0, v0, :cond_1

    invoke-virtual {p1}, Lf8/v2;->j()Lf8/m2;

    move-result-object p0

    invoke-static {p0}, Lf8/d3;->e(Lf8/m2;)Lf8/d3;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lf8/v2;->g()Ljava/lang/Object;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public final p()Z
    .locals 1

    iget-object v0, p0, Lf8/c3;->l:Lf8/m2;

    iget-object p0, p0, Lf8/c3;->m:Lf8/k3;

    invoke-static {v0, p0}, Lf8/d3;->m(Lf8/m2;Lf8/k3;)Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic r()Lf8/c;
    .locals 0

    invoke-virtual {p0}, Lf8/c3;->G()Lf8/d3;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic s()Lf8/c;
    .locals 0

    invoke-virtual {p0}, Lf8/c3;->H()Lf8/d3;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic u(Lf8/c;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1}, Lf8/c3;->I(Lf8/c;)Lf8/c3;

    return-object p0
.end method

.method public final bridge synthetic x(Lf8/c;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1}, Lf8/c3;->I(Lf8/c;)Lf8/c3;

    return-object p0
.end method
