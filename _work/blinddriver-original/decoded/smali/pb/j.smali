.class public Lpb/j;
.super Lpb/i;
.source "SourceFile"


# instance fields
.field public final o:[Lpb/i;


# direct methods
.method public constructor <init>([Lpb/i;Lpb/m;)V
    .locals 1

    invoke-direct {p0, p2}, Lpb/i;-><init>(Lpb/m;)V

    const/4 p2, 0x0

    if-nez p1, :cond_0

    new-array p1, p2, [Lpb/i;

    :cond_0
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_2

    aget-object v0, p1, p2

    if-eqz v0, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "geometries must not contain null elements"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iput-object p1, p0, Lpb/j;->o:[Lpb/i;

    return-void
.end method


# virtual methods
.method public final A(I)Lpb/i;
    .locals 0

    iget-object p0, p0, Lpb/j;->o:[Lpb/i;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public B()Ljava/lang/String;
    .locals 0

    const-string p0, "GeometryCollection"

    return-object p0
.end method

.method public final D()D
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lpb/j;->o:[Lpb/i;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lpb/i;->D()D

    move-result-wide v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public final E()I
    .locals 0

    iget-object p0, p0, Lpb/j;->o:[Lpb/i;

    array-length p0, p0

    return p0
.end method

.method public final F()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lpb/j;->o:[Lpb/i;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lpb/i;->F()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public G()I
    .locals 0

    const/4 p0, 0x7

    return p0
.end method

.method public H()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lpb/j;->o:[Lpb/i;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lpb/i;->H()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final L()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lpb/j;->o:[Lpb/i;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lpb/i;->L()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public O()Lpb/j;
    .locals 5

    iget-object v0, p0, Lpb/j;->o:[Lpb/i;

    array-length v1, v0

    new-array v2, v1, [Lpb/i;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lpb/i;->o()Lpb/i;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lpb/j;

    iget-object p0, p0, Lpb/i;->m:Lpb/m;

    invoke-direct {v0, v2, p0}, Lpb/j;-><init>([Lpb/i;Lpb/m;)V

    return-object v0
.end method

.method public final a(Lc5/o;)V
    .locals 3

    invoke-virtual {p1, p0}, Lc5/o;->a(Lpb/i;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lpb/j;->o:[Lpb/i;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lpb/i;->a(Lc5/o;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lpb/i;->o()Lpb/i;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lg5/e;)V
    .locals 3

    iget-object p0, p0, Lpb/j;->o:[Lpb/i;

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Lpb/i;->f(Lg5/e;)V

    iget-object v1, p1, Lg5/e;->n:Ljava/lang/Object;

    check-cast v1, Ljava/util/EnumSet;

    iget-object v2, p1, Lg5/e;->m:Ljava/lang/Object;

    check-cast v2, Ljava/util/EnumSet;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public getDimension()I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lpb/j;->o:[Lpb/i;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lpb/i;->getDimension()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final h(Lpb/l;)V
    .locals 3

    invoke-interface {p1, p0}, Lpb/l;->a(Lpb/i;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lpb/j;->o:[Lpb/i;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lpb/i;->h(Lpb/l;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final i(Ljava/lang/Object;)I
    .locals 2

    new-instance v0, Ljava/util/TreeSet;

    iget-object p0, p0, Lpb/j;->o:[Lpb/i;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    new-instance p0, Ljava/util/TreeSet;

    check-cast p1, Lpb/j;

    iget-object p1, p1, Lpb/j;->o:[Lpb/i;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-virtual {p0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final j()Lpb/h;
    .locals 4

    new-instance v0, Lpb/h;

    invoke-direct {v0}, Lpb/h;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lpb/j;->o:[Lpb/i;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lpb/i;->z()Lpb/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpb/h;->c(Lpb/h;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic p()Lpb/i;
    .locals 0

    invoke-virtual {p0}, Lpb/j;->O()Lpb/j;

    move-result-object p0

    return-object p0
.end method

.method public r(Lpb/i;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lpb/i;->M(Lpb/i;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Lpb/j;

    iget-object p1, p1, Lpb/j;->o:[Lpb/i;

    iget-object p0, p0, Lpb/j;->o:[Lpb/i;

    array-length v0, p0

    array-length v2, p1

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lpb/i;->r(Lpb/i;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public s()Lpb/i;
    .locals 1

    invoke-virtual {p0}, Lpb/j;->G()I

    move-result p0

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Operation does not support GeometryCollection arguments"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Ly4/s;->D(Ljava/lang/String;)V

    throw p0
.end method

.method public u()I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lpb/j;->o:[Lpb/i;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lpb/i;->u()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final v()Lpb/a;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lpb/j;->o:[Lpb/i;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    invoke-virtual {v2}, Lpb/i;->L()Z

    move-result v2

    if-nez v2, :cond_0

    aget-object p0, v1, v0

    invoke-virtual {p0}, Lpb/i;->v()Lpb/a;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final x()[Lpb/a;
    .locals 7

    invoke-virtual {p0}, Lpb/j;->F()I

    move-result v0

    new-array v0, v0, [Lpb/a;

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lpb/j;->o:[Lpb/i;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lpb/i;->x()[Lpb/a;

    move-result-object v4

    move v5, v2

    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    aget-object v6, v4, v5

    aput-object v6, v0, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
