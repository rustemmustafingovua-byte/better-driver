.class public final Lf8/d3;
.super Lf8/c;
.source "SourceFile"


# instance fields
.field public final m:Lf8/m2;

.field public final n:Lf8/k3;

.field public final o:[Lf8/v2;

.field public final p:Lf8/i5;


# direct methods
.method public constructor <init>(Lf8/m2;Lf8/k3;[Lf8/v2;Lf8/i5;)V
    .locals 0

    invoke-direct {p0}, Lf8/c;-><init>()V

    iput-object p1, p0, Lf8/d3;->m:Lf8/m2;

    iput-object p2, p0, Lf8/d3;->n:Lf8/k3;

    iput-object p3, p0, Lf8/d3;->o:[Lf8/v2;

    iput-object p4, p0, Lf8/d3;->p:Lf8/i5;

    return-void
.end method

.method public static e(Lf8/m2;)Lf8/d3;
    .locals 4

    iget-object v0, p0, Lf8/m2;->l:Lf8/t;

    iget-object v0, v0, Lf8/t;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lf8/v2;

    new-instance v1, Lf8/d3;

    sget-object v2, Lf8/k3;->d:Lf8/k3;

    sget-object v3, Lf8/i5;->m:Lf8/i5;

    invoke-direct {v1, p0, v2, v0, v3}, Lf8/d3;-><init>(Lf8/m2;Lf8/k3;[Lf8/v2;Lf8/i5;)V

    return-object v1
.end method

.method public static m(Lf8/m2;Lf8/k3;)Z
    .locals 3

    invoke-virtual {p0}, Lf8/m2;->i()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf8/v2;

    iget-object v1, v0, Lf8/v2;->m:Lf8/q0;

    iget v1, v1, Lf8/q0;->q:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    sget-object v1, Lf8/o0;->m:Lf8/o0;

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    sget-object v1, Lf8/o0;->o:Lf8/o0;

    goto :goto_0

    :cond_2
    sget-object v1, Lf8/o0;->n:Lf8/o0;

    goto :goto_0

    :cond_3
    sget-object v1, Lf8/o0;->m:Lf8/o0;

    :goto_0
    if-nez v1, :cond_4

    sget-object v1, Lf8/o0;->m:Lf8/o0;

    :cond_4
    sget-object v2, Lf8/o0;->n:Lf8/o0;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Lf8/k3;->g(Lf8/v2;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_5
    invoke-virtual {p1}, Lf8/k3;->h()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()Lf8/c;
    .locals 0

    iget-object p0, p0, Lf8/d3;->m:Lf8/m2;

    invoke-static {p0}, Lf8/d3;->e(Lf8/m2;)Lf8/d3;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lf8/a;
    .locals 1

    new-instance v0, Lf8/c3;

    iget-object p0, p0, Lf8/d3;->m:Lf8/m2;

    invoke-direct {v0, p0}, Lf8/c3;-><init>(Lf8/m2;)V

    return-object v0
.end method

.method public final f()Lf8/n4;
    .locals 2

    new-instance v0, Lf8/c3;

    iget-object v1, p0, Lf8/d3;->m:Lf8/m2;

    invoke-direct {v0, v1}, Lf8/c3;-><init>(Lf8/m2;)V

    invoke-virtual {v0, p0}, Lf8/c3;->I(Lf8/c;)Lf8/c3;

    return-object v0
.end method

.method public final h()Lf8/m2;
    .locals 0

    iget-object p0, p0, Lf8/d3;->m:Lf8/m2;

    return-object p0
.end method

.method public final i()Lf8/i5;
    .locals 0

    iget-object p0, p0, Lf8/d3;->p:Lf8/i5;

    return-object p0
.end method

.method public final j(Lf8/v2;)Z
    .locals 2

    iget-object v0, p1, Lf8/v2;->s:Lf8/m2;

    iget-object v1, p0, Lf8/d3;->m:Lf8/m2;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lf8/d3;->n:Lf8/k3;

    invoke-virtual {p0, p1}, Lf8/k3;->g(Lf8/v2;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "FieldDescriptor does not match message type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final l()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lf8/d3;->n:Lf8/k3;

    invoke-virtual {p0}, Lf8/k3;->f()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final o(Lf8/v2;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p1, Lf8/v2;->s:Lf8/m2;

    iget-object v1, p0, Lf8/d3;->m:Lf8/m2;

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lf8/d3;->n:Lf8/k3;

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

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "FieldDescriptor does not match message type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final p()Z
    .locals 1

    iget-object v0, p0, Lf8/d3;->m:Lf8/m2;

    iget-object p0, p0, Lf8/d3;->n:Lf8/k3;

    invoke-static {v0, p0}, Lf8/d3;->m(Lf8/m2;Lf8/k3;)Z

    move-result p0

    return p0
.end method
