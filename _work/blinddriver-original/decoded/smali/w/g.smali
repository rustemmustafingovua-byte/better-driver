.class public final Lw/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lw/p;

.field public final b:Lw/e;

.field public final c:Lw/b;

.field public final d:Ld1/c0;


# direct methods
.method public constructor <init>(Lw/p;Lw/e;Lw/b;Ld1/c0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw/g;->a:Lw/p;

    iput-object p2, p0, Lw/g;->b:Lw/e;

    iput-object p3, p0, Lw/g;->c:Lw/b;

    iput-object p4, p0, Lw/g;->d:Ld1/c0;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Lr0/q;I)V
    .locals 8

    const v0, -0x1b900aca

    invoke-virtual {p3, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p3, p1}, Lr0/q;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p4

    invoke-virtual {p3, p2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    invoke-virtual {p3, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x100

    goto :goto_2

    :cond_2
    const/16 v1, 0x80

    :goto_2
    or-int/2addr v0, v1

    and-int/lit16 v1, v0, 0x93

    const/16 v2, 0x92

    if-eq v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {p3, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lw/g;->a:Lw/p;

    iget-object v4, v1, Lw/p;->r:Lx/c0;

    new-instance v1, Lod/d;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2, p0}, Lod/d;-><init>(IILjava/lang/Object;)V

    const v2, -0x3128503e

    invoke-static {v2, v1, p3}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v5

    shr-int/lit8 v1, v0, 0x3

    and-int/lit8 v1, v1, 0xe

    or-int/lit16 v1, v1, 0xc00

    shl-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x70

    or-int v7, v1, v0

    move v3, p1

    move-object v2, p2

    move-object v6, p3

    invoke-static/range {v2 .. v7}, Lx/l;->b(Ljava/lang/Object;ILx/c0;Lz0/d;Lr0/q;I)V

    goto :goto_4

    :cond_4
    move v3, p1

    move-object v2, p2

    move-object v6, p3

    invoke-virtual {v6}, Lr0/q;->W()V

    :goto_4
    invoke-virtual {v6}, Lr0/q;->u()Lr0/n1;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance p2, Lw/f;

    invoke-direct {p2, p0, v3, v2, p4}, Lw/f;-><init>(Lw/g;ILjava/lang/Object;I)V

    iput-object p2, p1, Lr0/n1;->d:Li9/e;

    :cond_5
    return-void
.end method

.method public final b(I)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lw/g;->b:Lw/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lw/e;->a:Ld1/c0;

    invoke-virtual {p0, p1}, Ld1/c0;->d(I)Lx/i;

    move-result-object p0

    iget v0, p0, Lx/i;->a:I

    sub-int/2addr p1, v0

    iget-object p0, p0, Lx/i;->c:Lg5/m;

    iget-object p0, p0, Lg5/m;->n:Ljava/lang/Object;

    check-cast p0, Li9/c;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final c()I
    .locals 0

    iget-object p0, p0, Lw/g;->b:Lw/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lw/e;->a:Ld1/c0;

    iget p0, p0, Ld1/c0;->b:I

    return p0
.end method

.method public final d(I)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lw/g;->d:Ld1/c0;

    iget-object v1, v0, Ld1/c0;->d:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iget v0, v0, Ld1/c0;->b:I

    sub-int v0, p1, v0

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    iget-object p0, p0, Lw/g;->b:Lw/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lw/e;->a:Ld1/c0;

    invoke-virtual {p0, p1}, Ld1/c0;->d(I)Lx/i;

    move-result-object p0

    iget v0, p0, Lx/i;->a:I

    sub-int v0, p1, v0

    iget-object p0, p0, Lx/i;->c:Lg5/m;

    iget-object p0, p0, Lg5/m;->m:Ljava/lang/Object;

    check-cast p0, Li9/c;

    if-eqz p0, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    return-object p0

    :cond_2
    :goto_1
    new-instance p0, Lx/g;

    invoke-direct {p0, p1}, Lx/g;-><init>(I)V

    return-object p0

    :cond_3
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lw/g;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lw/g;

    iget-object p1, p1, Lw/g;->b:Lw/e;

    iget-object p0, p0, Lw/g;->b:Lw/e;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lw/g;->b:Lw/e;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
