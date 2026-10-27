.class public final Ls6/g0;
.super Ls6/n0;
.source "SourceFile"

# interfaces
.implements Lq6/i;
.implements Lq6/l;


# instance fields
.field public final n:Lu6/k;

.field public final o:Lb6/l;

.field public final p:Lb6/u;


# direct methods
.method public constructor <init>(Lu6/k;Lb6/l;Lb6/u;)V
    .locals 0

    invoke-direct {p0, p2}, Ls6/n0;-><init>(Lb6/l;)V

    iput-object p1, p0, Ls6/g0;->n:Lu6/k;

    iput-object p2, p0, Ls6/g0;->o:Lb6/l;

    iput-object p3, p0, Ls6/g0;->p:Lb6/u;

    return-void
.end method

.method public static i(Lb6/r0;Ljava/lang/Object;)Lb6/u;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Lb6/r0;->q:Lg5/s;

    iget-object v1, p0, Lb6/r0;->v:Lr6/n;

    invoke-virtual {v1, p1}, Lr6/n;->b(Ljava/lang/Class;)Lb6/u;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lg5/s;->S(Ljava/lang/Class;)Lb6/u;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v1, p1}, Ld6/m;->c(Ljava/lang/Class;)Lb6/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg5/s;->R(Lb6/l;)Lb6/u;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lb6/r0;->O(Ljava/lang/Class;)Lb6/u;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lb6/r0;->f0(Ljava/lang/Class;)Lb6/u;

    move-result-object v1

    :cond_0
    instance-of p1, v1, Lq6/i;

    if-eqz p1, :cond_1

    check-cast v1, Lq6/i;

    const/4 p1, 0x0

    invoke-interface {v1, p0, p1}, Lq6/i;->b(Lb6/r0;Lb6/f;)Lb6/u;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public final a(Lb6/r0;)V
    .locals 1

    iget-object p0, p0, Ls6/g0;->p:Lb6/u;

    if-eqz p0, :cond_0

    instance-of v0, p0, Lq6/l;

    if-eqz v0, :cond_0

    check-cast p0, Lq6/l;

    invoke-interface {p0, p1}, Lq6/l;->a(Lb6/r0;)V

    :cond_0
    return-void
.end method

.method public final acceptJsonFormatVisitor(Lm6/b;Lb6/l;)V
    .locals 0

    iget-object p0, p0, Ls6/g0;->p:Lb6/u;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lb6/u;->acceptJsonFormatVisitor(Lm6/b;Lb6/l;)V

    :cond_0
    return-void
.end method

.method public final b(Lb6/r0;Lb6/f;)Lb6/u;
    .locals 6

    iget-object v0, p0, Ls6/g0;->n:Lu6/k;

    iget-object v1, p0, Ls6/g0;->p:Lb6/u;

    iget-object v2, p0, Ls6/g0;->o:Lb6/l;

    if-nez v1, :cond_2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lb6/r0;->u()Lt6/p;

    move-object v3, v0

    check-cast v3, Lf6/m;

    iget-object v3, v3, Lf6/m;->a:Lb6/l;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v3}, Lb6/l;->e0()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p1, Lb6/r0;->v:Lr6/n;

    invoke-virtual {v4, v3}, Lr6/n;->a(Lb6/l;)Lb6/u;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v4, p1, Lb6/r0;->q:Lg5/s;

    invoke-virtual {v4, v3}, Lg5/s;->R(Lb6/l;)Lb6/u;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual {p1, v3}, Lb6/r0;->N(Lb6/l;)Lb6/u;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v4, v3, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p1, v4}, Lb6/r0;->f0(Ljava/lang/Class;)Lb6/u;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v1

    goto :goto_1

    :cond_2
    move-object v4, v1

    move-object v3, v2

    :cond_3
    :goto_1
    instance-of v5, v4, Lq6/i;

    if-eqz v5, :cond_4

    invoke-virtual {p1, v4, p2}, Lb6/r0;->h0(Lb6/u;Lb6/f;)Lb6/u;

    move-result-object v4

    :cond_4
    if-ne v4, v1, :cond_5

    if-ne v3, v2, :cond_5

    return-object p0

    :cond_5
    const-class p1, Ls6/g0;

    const-string p2, "withDelegate"

    invoke-static {p1, p0, p2}, Lu6/h;->F(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ls6/g0;

    invoke-direct {p0, v0, v3, v4}, Ls6/g0;-><init>(Lu6/k;Lb6/l;Lb6/u;)V

    return-object p0
.end method

.method public final getDelegatee()Lb6/u;
    .locals 0

    iget-object p0, p0, Ls6/g0;->p:Lb6/u;

    return-object p0
.end method

.method public final isEmpty(Lb6/r0;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Ls6/g0;->n:Lu6/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lf6/m;

    invoke-virtual {v0, p2}, Lf6/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ls6/g0;->p:Lb6/u;

    if-nez p0, :cond_2

    if-nez p2, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {p0, p1, v0}, Lb6/u;->isEmpty(Lb6/r0;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 1

    iget-object v0, p0, Ls6/g0;->n:Lu6/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lf6/m;

    invoke-virtual {v0, p1}, Lf6/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p3, p2}, Lb6/r0;->U(Ls5/g;)V

    return-void

    :cond_0
    iget-object p0, p0, Ls6/g0;->p:Lb6/u;

    if-nez p0, :cond_1

    invoke-static {p3, p1}, Ls6/g0;->i(Lb6/r0;Ljava/lang/Object;)Lb6/u;

    move-result-object p0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    return-void
.end method

.method public final serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V
    .locals 1

    iget-object v0, p0, Ls6/g0;->n:Lu6/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lf6/m;

    invoke-virtual {v0, p1}, Lf6/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p3, p2}, Lb6/r0;->U(Ls5/g;)V

    return-void

    :cond_0
    iget-object p0, p0, Ls6/g0;->p:Lb6/u;

    if-nez p0, :cond_1

    invoke-static {p3, p1}, Ls6/g0;->i(Lb6/r0;Ljava/lang/Object;)Lb6/u;

    move-result-object p0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lb6/u;->serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V

    return-void
.end method
