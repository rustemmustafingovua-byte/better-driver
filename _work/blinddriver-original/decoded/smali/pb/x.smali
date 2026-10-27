.class public final Lpb/x;
.super Lpb/i;
.source "SourceFile"

# interfaces
.implements Lpb/y;


# instance fields
.field public final o:Lpb/s;

.field public final p:[Lpb/s;


# direct methods
.method public constructor <init>(Lpb/s;[Lpb/s;Lpb/m;)V
    .locals 2

    invoke-direct {p0, p3}, Lpb/i;-><init>(Lpb/m;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lpb/x;->o:Lpb/s;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p3, Lpb/m;->m:Lqb/b;

    new-array v1, v0, [Lpb/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lqb/a;

    invoke-direct {p1, v1}, Lqb/a;-><init>([Lpb/a;)V

    new-instance v1, Lpb/s;

    invoke-direct {v1, p1, p3}, Lpb/s;-><init>(Lpb/d;Lpb/m;)V

    move-object p1, v1

    :cond_0
    if-nez p2, :cond_1

    new-array p2, v0, [Lpb/s;

    :cond_1
    move p3, v0

    :goto_0
    array-length v1, p2

    if-ge p3, v1, :cond_3

    aget-object v1, p2, p3

    if-eqz v1, :cond_2

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "holes must not contain null elements"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-virtual {p1}, Lpb/q;->L()Z

    move-result p3

    if-eqz p3, :cond_5

    :goto_1
    array-length p3, p2

    if-ge v0, p3, :cond_5

    aget-object p3, p2, v0

    invoke-virtual {p3}, Lpb/q;->L()Z

    move-result p3

    if-eqz p3, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "shell is empty but holes are not"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    iput-object p1, p0, Lpb/x;->o:Lpb/s;

    iput-object p2, p0, Lpb/x;->p:[Lpb/s;

    return-void
.end method


# virtual methods
.method public final B()Ljava/lang/String;
    .locals 0

    const-string p0, "Polygon"

    return-object p0
.end method

.method public final D()D
    .locals 5

    iget-object v0, p0, Lpb/x;->o:Lpb/s;

    invoke-virtual {v0}, Lpb/q;->D()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    add-double/2addr v0, v2

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lpb/x;->p:[Lpb/s;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lpb/q;->D()D

    move-result-wide v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public final F()I
    .locals 4

    iget-object v0, p0, Lpb/x;->o:Lpb/s;

    iget-object v0, v0, Lpb/q;->o:Lpb/d;

    invoke-interface {v0}, Lpb/d;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lpb/x;->p:[Lpb/s;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    iget-object v2, v2, Lpb/q;->o:Lpb/d;

    invoke-interface {v2}, Lpb/d;->size()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final G()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public final L()Z
    .locals 0

    iget-object p0, p0, Lpb/x;->o:Lpb/s;

    invoke-virtual {p0}, Lpb/q;->L()Z

    move-result p0

    return p0
.end method

.method public final N()Z
    .locals 11

    iget-object v0, p0, Lpb/x;->p:[Lpb/s;

    array-length v0, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lpb/x;->o:Lpb/s;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v2, v0, Lpb/q;->o:Lpb/d;

    invoke-interface {v2}, Lpb/d;->size()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v0, v0, Lpb/q;->o:Lpb/d;

    invoke-virtual {p0}, Lpb/i;->z()Lpb/h;

    move-result-object p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_5

    invoke-interface {v0, v2}, Lpb/d;->C(I)D

    move-result-wide v4

    iget-wide v6, p0, Lpb/h;->l:D

    cmpl-double v6, v4, v6

    if-eqz v6, :cond_3

    iget-wide v6, p0, Lpb/h;->m:D

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_3

    return v1

    :cond_3
    invoke-interface {v0, v2}, Lpb/d;->n(I)D

    move-result-wide v4

    iget-wide v6, p0, Lpb/h;->n:D

    cmpl-double v6, v4, v6

    if-eqz v6, :cond_4

    iget-wide v6, p0, Lpb/h;->o:D

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-interface {v0, v1}, Lpb/d;->C(I)D

    move-result-wide v2

    invoke-interface {v0, v1}, Lpb/d;->n(I)D

    move-result-wide v4

    const/4 p0, 0x1

    move v6, p0

    :goto_1
    const/4 v7, 0x4

    if-gt v6, v7, :cond_9

    invoke-interface {v0, v6}, Lpb/d;->C(I)D

    move-result-wide v7

    invoke-interface {v0, v6}, Lpb/d;->n(I)D

    move-result-wide v9

    cmpl-double v2, v7, v2

    if-eqz v2, :cond_6

    move v2, p0

    goto :goto_2

    :cond_6
    move v2, v1

    :goto_2
    cmpl-double v3, v9, v4

    if-eqz v3, :cond_7

    move v3, p0

    goto :goto_3

    :cond_7
    move v3, v1

    :goto_3
    if-ne v2, v3, :cond_8

    return v1

    :cond_8
    add-int/lit8 v6, v6, 0x1

    move-wide v2, v7

    move-wide v4, v9

    goto :goto_1

    :cond_9
    return p0
.end method

.method public final a(Lc5/o;)V
    .locals 0

    invoke-virtual {p1, p0}, Lc5/o;->a(Lpb/i;)V

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lpb/i;->o()Lpb/i;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lg5/e;)V
    .locals 5

    iget-object v0, p0, Lpb/x;->o:Lpb/s;

    invoke-virtual {v0, p1}, Lpb/q;->f(Lg5/e;)V

    iget-object v0, p1, Lg5/e;->n:Ljava/lang/Object;

    check-cast v0, Ljava/util/EnumSet;

    iget-object v1, p1, Lg5/e;->m:Ljava/lang/Object;

    check-cast v1, Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lpb/x;->p:[Lpb/s;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lpb/q;->f(Lg5/e;)V

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final getDimension()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final h(Lpb/l;)V
    .locals 3

    invoke-interface {p1, p0}, Lpb/l;->a(Lpb/i;)V

    iget-object v0, p0, Lpb/x;->o:Lpb/s;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, v0}, Lpb/l;->a(Lpb/i;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lpb/x;->p:[Lpb/s;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, v1}, Lpb/l;->a(Lpb/i;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final i(Ljava/lang/Object;)I
    .locals 6

    check-cast p1, Lpb/x;

    iget-object v0, p0, Lpb/x;->o:Lpb/s;

    iget-object v1, p1, Lpb/x;->o:Lpb/s;

    invoke-virtual {v0, v1}, Lpb/q;->i(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lpb/x;->p:[Lpb/s;

    array-length v0, p0

    iget-object v1, p1, Lpb/x;->p:[Lpb/s;

    array-length v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    iget-object v5, p1, Lpb/x;->p:[Lpb/s;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Lpb/q;->i(Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_1

    return v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-ge v3, v0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    if-ge v3, v1, :cond_4

    const/4 p0, -0x1

    return p0

    :cond_4
    return v2
.end method

.method public final j()Lpb/h;
    .locals 0

    iget-object p0, p0, Lpb/x;->o:Lpb/s;

    invoke-virtual {p0}, Lpb/i;->z()Lpb/h;

    move-result-object p0

    return-object p0
.end method

.method public final p()Lpb/i;
    .locals 5

    iget-object v0, p0, Lpb/x;->o:Lpb/s;

    invoke-virtual {v0}, Lpb/i;->o()Lpb/i;

    move-result-object v0

    check-cast v0, Lpb/s;

    iget-object v1, p0, Lpb/x;->p:[Lpb/s;

    array-length v2, v1

    new-array v2, v2, [Lpb/s;

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lpb/i;->o()Lpb/i;

    move-result-object v4

    check-cast v4, Lpb/s;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lpb/x;

    iget-object p0, p0, Lpb/i;->m:Lpb/m;

    invoke-direct {v1, v0, v2, p0}, Lpb/x;-><init>(Lpb/s;[Lpb/s;Lpb/m;)V

    return-object v1
.end method

.method public final r(Lpb/i;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lpb/i;->M(Lpb/i;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Lpb/x;

    iget-object v0, p1, Lpb/x;->p:[Lpb/s;

    iget-object v2, p0, Lpb/x;->o:Lpb/s;

    iget-object p1, p1, Lpb/x;->o:Lpb/s;

    invoke-virtual {v2, p1}, Lpb/q;->r(Lpb/i;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lpb/x;->p:[Lpb/s;

    array-length p1, p0

    array-length v2, v0

    if-eq p1, v2, :cond_2

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_0
    array-length v2, p0

    if-ge p1, v2, :cond_4

    aget-object v2, p0, p1

    aget-object v3, v0, p1

    invoke-virtual {v2, v3}, Lpb/q;->r(Lpb/i;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    return v1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public final s()Lpb/i;
    .locals 7

    iget-object v0, p0, Lpb/x;->o:Lpb/s;

    invoke-virtual {v0}, Lpb/q;->L()Z

    move-result v1

    iget-object v2, p0, Lpb/i;->m:Lpb/m;

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lpb/t;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lpb/j;-><init>([Lpb/i;Lpb/m;)V

    return-object p0

    :cond_0
    iget-object p0, p0, Lpb/x;->p:[Lpb/s;

    array-length v1, p0

    const/4 v3, 0x1

    add-int/2addr v1, v3

    new-array v4, v1, [Lpb/s;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    move v0, v5

    :goto_0
    array-length v6, p0

    if-ge v0, v6, :cond_1

    add-int/lit8 v6, v0, 0x1

    aget-object v0, p0, v0

    aput-object v0, v4, v6

    move v0, v6

    goto :goto_0

    :cond_1
    if-gt v1, v3, :cond_2

    aget-object p0, v4, v5

    iget-object p0, p0, Lpb/q;->o:Lpb/d;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lpb/s;

    invoke-direct {v0, p0, v2}, Lpb/s;-><init>(Lpb/d;Lpb/m;)V

    return-object v0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lpb/t;

    invoke-direct {p0, v4, v2}, Lpb/j;-><init>([Lpb/i;Lpb/m;)V

    return-object p0
.end method

.method public final u()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final v()Lpb/a;
    .locals 0

    iget-object p0, p0, Lpb/x;->o:Lpb/s;

    invoke-virtual {p0}, Lpb/q;->v()Lpb/a;

    move-result-object p0

    return-object p0
.end method

.method public final x()[Lpb/a;
    .locals 7

    iget-object v0, p0, Lpb/x;->o:Lpb/s;

    invoke-virtual {v0}, Lpb/q;->L()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-array p0, v2, [Lpb/a;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lpb/x;->F()I

    move-result v1

    new-array v1, v1, [Lpb/a;

    iget-object v0, v0, Lpb/q;->o:Lpb/d;

    invoke-interface {v0}, Lpb/d;->t()[Lpb/a;

    move-result-object v0

    const/4 v3, -0x1

    move v4, v2

    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    aget-object v5, v0, v4

    aput-object v5, v1, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    iget-object v4, p0, Lpb/x;->p:[Lpb/s;

    array-length v5, v4

    if-ge v0, v5, :cond_3

    aget-object v4, v4, v0

    iget-object v4, v4, Lpb/q;->o:Lpb/d;

    invoke-interface {v4}, Lpb/d;->t()[Lpb/a;

    move-result-object v4

    move v5, v2

    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    aget-object v6, v4, v5

    aput-object v6, v1, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method
