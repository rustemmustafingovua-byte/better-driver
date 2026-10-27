.class public final Lm/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/r0;


# instance fields
.field public final a:Lm/m;

.field public b:Z


# direct methods
.method public constructor <init>(Lm/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/d;->a:Lm/m;

    return-void
.end method


# virtual methods
.method public final e(Lc2/p;Ljava/util/List;I)I
    .locals 2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    return p1

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc2/q0;

    invoke-interface {p0, p3}, Lc2/q0;->u(I)I

    move-result p0

    invoke-static {p2}, Lg5/f;->A(Ljava/util/List;)I

    move-result p1

    const/4 v0, 0x1

    if-gt v0, p1, :cond_2

    :goto_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc2/q0;

    invoke-interface {v1, p3}, Lc2/q0;->u(I)I

    move-result v1

    if-le v1, p0, :cond_1

    move p0, v1

    :cond_1
    if-eq v0, p1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p0
.end method

.method public final f(Lc2/p;Ljava/util/List;I)I
    .locals 2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    return p1

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc2/q0;

    invoke-interface {p0, p3}, Lc2/q0;->z(I)I

    move-result p0

    invoke-static {p2}, Lg5/f;->A(Ljava/util/List;)I

    move-result p1

    const/4 v0, 0x1

    if-gt v0, p1, :cond_2

    :goto_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc2/q0;

    invoke-interface {v1, p3}, Lc2/q0;->z(I)I

    move-result v1

    if-le v1, p0, :cond_1

    move p0, v1

    :cond_1
    if-eq v0, p1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p0
.end method

.method public final g(Lc2/p;Ljava/util/List;I)I
    .locals 2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    return p1

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc2/q0;

    invoke-interface {p0, p3}, Lc2/q0;->b0(I)I

    move-result p0

    invoke-static {p2}, Lg5/f;->A(Ljava/util/List;)I

    move-result p1

    const/4 v0, 0x1

    if-gt v0, p1, :cond_2

    :goto_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc2/q0;

    invoke-interface {v1, p3}, Lc2/q0;->b0(I)I

    move-result v1

    if-le v1, p0, :cond_1

    move p0, v1

    :cond_1
    if-eq v0, p1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p0
.end method

.method public final h(Lc2/p;Ljava/util/List;I)I
    .locals 2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    return p1

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc2/q0;

    invoke-interface {p0, p3}, Lc2/q0;->c(I)I

    move-result p0

    invoke-static {p2}, Lg5/f;->A(Ljava/util/List;)I

    move-result p1

    const/4 v0, 0x1

    if-gt v0, p1, :cond_2

    :goto_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc2/q0;

    invoke-interface {v1, p3}, Lc2/q0;->c(I)I

    move-result v1

    if-le v1, p0, :cond_1

    move p0, v1

    :cond_1
    if-eq v0, p1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p0
.end method

.method public final j(Lc2/t0;Ljava/util/List;J)Lc2/s0;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc2/q0;

    invoke-interface {v5, p3, p4}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object v5

    iget v6, v5, Lc2/f1;->l:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v6, v5, Lc2/f1;->m:I

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lc2/p;->T()Z

    move-result p2

    const-wide p3, 0xffffffffL

    const/16 v1, 0x20

    iget-object v2, p0, Lm/d;->a:Lm/m;

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lm/d;->b:Z

    iget-object p0, v2, Lm/m;->a:Lr0/e1;

    int-to-long v5, v3

    shl-long v1, v5, v1

    int-to-long v5, v4

    and-long p2, v5, p3

    or-long/2addr p2, v1

    new-instance p4, Lb3/l;

    invoke-direct {p4, p2, p3}, Lb3/l;-><init>(J)V

    invoke-virtual {p0, p4}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean p0, p0, Lm/d;->b:Z

    if-nez p0, :cond_2

    iget-object p0, v2, Lm/m;->a:Lr0/e1;

    int-to-long v5, v3

    shl-long v1, v5, v1

    int-to-long v5, v4

    and-long p2, v5, p3

    or-long/2addr p2, v1

    new-instance p4, Lb3/l;

    invoke-direct {p4, p2, p3}, Lb3/l;-><init>(J)V

    invoke-virtual {p0, p4}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    new-instance p0, Lc2/j1;

    const/4 p2, 0x3

    invoke-direct {p0, p2, v0}, Lc2/j1;-><init>(ILjava/util/ArrayList;)V

    sget-object p2, Lu8/s;->l:Lu8/s;

    invoke-interface {p1, v3, v4, p2, p0}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0
.end method
