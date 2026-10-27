.class public Lpb/q;
.super Lpb/i;
.source "SourceFile"

# interfaces
.implements Lpb/r;


# instance fields
.field public final o:Lpb/d;


# direct methods
.method public constructor <init>(Lpb/d;Lpb/m;)V
    .locals 1

    invoke-direct {p0, p2}, Lpb/i;-><init>(Lpb/m;)V

    if-nez p1, :cond_0

    iget-object p1, p2, Lpb/m;->m:Lqb/b;

    const/4 p2, 0x0

    new-array p2, p2, [Lpb/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lqb/a;

    invoke-direct {p1, p2}, Lqb/a;-><init>([Lpb/a;)V

    :cond_0
    invoke-interface {p1}, Lpb/d;->size()I

    move-result p2

    if-lez p2, :cond_2

    invoke-interface {p1}, Lpb/d;->size()I

    move-result p2

    const/4 v0, 0x2

    if-lt p2, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid number of points in LineString (found "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lpb/d;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " - must be 0 or >= 2)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iput-object p1, p0, Lpb/q;->o:Lpb/d;

    return-void
.end method


# virtual methods
.method public B()Ljava/lang/String;
    .locals 0

    const-string p0, "LineString"

    return-object p0
.end method

.method public final D()D
    .locals 13

    iget-object p0, p0, Lpb/q;->o:Lpb/d;

    invoke-interface {p0}, Lpb/d;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-gt v0, v3, :cond_0

    return-wide v1

    :cond_0
    invoke-interface {p0}, Lpb/d;->m()Lpb/a;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {p0, v5, v4}, Lpb/d;->c(ILpb/a;)V

    iget-wide v5, v4, Lpb/a;->l:D

    iget-wide v7, v4, Lpb/a;->m:D

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-interface {p0, v3, v4}, Lpb/d;->c(ILpb/a;)V

    iget-wide v9, v4, Lpb/a;->l:D

    iget-wide v11, v4, Lpb/a;->m:D

    sub-double v5, v9, v5

    sub-double v7, v11, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    add-double/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    move-wide v5, v9

    move-wide v7, v11

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public final F()I
    .locals 0

    iget-object p0, p0, Lpb/q;->o:Lpb/d;

    invoke-interface {p0}, Lpb/d;->size()I

    move-result p0

    return p0
.end method

.method public G()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final L()Z
    .locals 0

    iget-object p0, p0, Lpb/q;->o:Lpb/d;

    invoke-interface {p0}, Lpb/d;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final M(Lpb/i;)Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public O()Lpb/q;
    .locals 2

    new-instance v0, Lpb/q;

    iget-object v1, p0, Lpb/q;->o:Lpb/d;

    invoke-interface {v1}, Lpb/d;->d()Lpb/d;

    move-result-object v1

    iget-object p0, p0, Lpb/i;->m:Lpb/m;

    invoke-direct {v0, v1, p0}, Lpb/q;-><init>(Lpb/d;Lpb/m;)V

    return-object v0
.end method

.method public P()Z
    .locals 2

    invoke-virtual {p0}, Lpb/q;->L()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lpb/q;->o:Lpb/d;

    invoke-interface {v0, v1}, Lpb/d;->b(I)Lpb/a;

    move-result-object v0

    iget-object v1, p0, Lpb/q;->o:Lpb/d;

    invoke-interface {v1}, Lpb/d;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object p0, p0, Lpb/q;->o:Lpb/d;

    invoke-interface {p0, v1}, Lpb/d;->b(I)Lpb/a;

    move-result-object p0

    invoke-virtual {v0, p0}, Lpb/a;->i(Lpb/a;)Z

    move-result p0

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
    .locals 3

    iget-object v0, p0, Lpb/q;->o:Lpb/d;

    invoke-interface {v0}, Lpb/d;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lpb/q;->o:Lpb/d;

    invoke-interface {v1}, Lpb/d;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lpb/q;->o:Lpb/d;

    invoke-virtual {p1, v1, v0}, Lg5/e;->k(Lpb/d;I)V

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

.method public final getDimension()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final h(Lpb/l;)V
    .locals 0

    invoke-interface {p1, p0}, Lpb/l;->a(Lpb/i;)V

    return-void
.end method

.method public final i(Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Lpb/q;

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lpb/q;->o:Lpb/d;

    invoke-interface {v3}, Lpb/d;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p1, Lpb/q;->o:Lpb/d;

    invoke-interface {v3}, Lpb/d;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lpb/q;->o:Lpb/d;

    invoke-interface {v3, v1}, Lpb/d;->b(I)Lpb/a;

    move-result-object v3

    iget-object v4, p1, Lpb/q;->o:Lpb/d;

    invoke-interface {v4, v2}, Lpb/d;->b(I)Lpb/a;

    move-result-object v4

    invoke-virtual {v3, v4}, Lpb/a;->a(Lpb/a;)I

    move-result v3

    if-eqz v3, :cond_0

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lpb/q;->o:Lpb/d;

    invoke-interface {p0}, Lpb/d;->size()I

    move-result p0

    if-ge v1, p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    iget-object p0, p1, Lpb/q;->o:Lpb/d;

    invoke-interface {p0}, Lpb/d;->size()I

    move-result p0

    if-ge v2, p0, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    return v0
.end method

.method public final j()Lpb/h;
    .locals 1

    invoke-virtual {p0}, Lpb/q;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lpb/h;

    invoke-direct {p0}, Lpb/h;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Lpb/h;

    invoke-direct {v0}, Lpb/h;-><init>()V

    iget-object p0, p0, Lpb/q;->o:Lpb/d;

    invoke-interface {p0, v0}, Lpb/d;->J(Lpb/h;)Lpb/h;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic p()Lpb/i;
    .locals 0

    invoke-virtual {p0}, Lpb/q;->O()Lpb/q;

    move-result-object p0

    return-object p0
.end method

.method public final r(Lpb/i;)Z
    .locals 4

    instance-of v0, p1, Lpb/q;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Lpb/q;

    iget-object v0, p0, Lpb/q;->o:Lpb/d;

    invoke-interface {v0}, Lpb/d;->size()I

    move-result v0

    iget-object v2, p1, Lpb/q;->o:Lpb/d;

    invoke-interface {v2}, Lpb/d;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lpb/q;->o:Lpb/d;

    invoke-interface {v2}, Lpb/d;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lpb/q;->o:Lpb/d;

    invoke-interface {v2, v0}, Lpb/d;->b(I)Lpb/a;

    move-result-object v2

    iget-object v3, p1, Lpb/q;->o:Lpb/d;

    invoke-interface {v3, v0}, Lpb/d;->b(I)Lpb/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lpb/a;->equals(Ljava/lang/Object;)Z

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

.method public final s()Lpb/i;
    .locals 1

    new-instance v0, Lg5/i;

    invoke-direct {v0, p0}, Lg5/i;-><init>(Lpb/i;)V

    invoke-virtual {v0}, Lg5/i;->n()Lpb/i;

    move-result-object p0

    return-object p0
.end method

.method public u()I
    .locals 0

    invoke-virtual {p0}, Lpb/q;->P()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final v()Lpb/a;
    .locals 1

    invoke-virtual {p0}, Lpb/q;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lpb/q;->o:Lpb/d;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lpb/d;->b(I)Lpb/a;

    move-result-object p0

    return-object p0
.end method

.method public final x()[Lpb/a;
    .locals 0

    iget-object p0, p0, Lpb/q;->o:Lpb/d;

    invoke-interface {p0}, Lpb/d;->t()[Lpb/a;

    move-result-object p0

    return-object p0
.end method
