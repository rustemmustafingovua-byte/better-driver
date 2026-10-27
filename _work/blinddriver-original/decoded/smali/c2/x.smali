.class public abstract Lc2/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lc2/x0;

.field public static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc2/x0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lc2/x0;-><init>(I)V

    sput-object v0, Lc2/x;->a:Lc2/x0;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc2/x;->b:Ljava/lang/Object;

    return-void
.end method

.method public static final a(Lc2/r1;Lf1/r;Li9/e;Lr0/q;I)V
    .locals 8

    const v0, -0x1e845847

    invoke-virtual {p3, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p4, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p3, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p4

    goto :goto_1

    :cond_1
    move v0, p4

    :goto_1
    and-int/lit8 v1, p4, 0x30

    if-nez v1, :cond_3

    invoke-virtual {p3, p1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, p4, 0x180

    if-nez v1, :cond_5

    invoke-virtual {p3, p2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x100

    goto :goto_3

    :cond_4
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v0, v1

    :cond_5
    and-int/lit16 v1, v0, 0x93

    const/16 v2, 0x92

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_6

    move v1, v3

    goto :goto_4

    :cond_6
    move v1, v4

    :goto_4
    and-int/2addr v0, v3

    invoke-virtual {p3, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-wide v0, p3, Lr0/q;->T:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    invoke-static {p3}, Lr0/r;->B(Lr0/q;)Lr0/p;

    move-result-object v1

    invoke-static {p1, p3}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    invoke-virtual {p3}, Lr0/q;->m()Lr0/j1;

    move-result-object v5

    sget-object v6, Le2/f;->n:Le2/f;

    invoke-virtual {p3}, Lr0/q;->e0()V

    iget-boolean v7, p3, Lr0/q;->S:Z

    if-eqz v7, :cond_7

    invoke-virtual {p3, v6}, Lr0/q;->l(Li9/a;)V

    goto :goto_5

    :cond_7
    invoke-virtual {p3}, Lr0/q;->o0()V

    :goto_5
    iget-object v6, p0, Lc2/r1;->c:Lc2/q1;

    invoke-static {v6, p0, p3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-object v6, p0, Lc2/r1;->d:Lc2/q1;

    invoke-static {v6, v1, p3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-object v1, p0, Lc2/r1;->e:Lc2/q1;

    invoke-static {v1, p2, p3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Le2/h;->b:Le2/g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Le2/g;->e:Le2/e;

    invoke-static {v1, v5, p3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Le2/g;->h:Le2/d;

    invoke-static {p3, v1}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v1, Le2/g;->d:Le2/e;

    invoke-static {v1, v2, p3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Le2/g;->g:Le2/e;

    invoke-static {p3, v0, v1}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    invoke-virtual {p3, v3}, Lr0/q;->q(Z)V

    invoke-virtual {p3}, Lr0/q;->F()Z

    move-result v0

    if-nez v0, :cond_a

    const v0, -0x4b0e8d74

    invoke-virtual {p3, v0}, Lr0/q;->b0(I)V

    invoke-virtual {p3, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_8

    sget-object v0, Lr0/m;->a:Lr0/e;

    if-ne v1, v0, :cond_9

    :cond_8
    new-instance v1, Lc2/l0;

    const/4 v0, 0x1

    invoke-direct {v1, v0, p0}, Lc2/l0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p3, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_9
    check-cast v1, Li9/a;

    invoke-static {v1, p3}, Lr0/r;->j(Li9/a;Lr0/q;)V

    :goto_6
    invoke-virtual {p3, v4}, Lr0/q;->q(Z)V

    goto :goto_7

    :cond_a
    const v0, -0x4b78b857

    invoke-virtual {p3, v0}, Lr0/q;->b0(I)V

    goto :goto_6

    :cond_b
    invoke-virtual {p3}, Lr0/q;->W()V

    :goto_7
    invoke-virtual {p3}, Lr0/q;->u()Lr0/n1;

    move-result-object p3

    if-eqz p3, :cond_c

    new-instance v0, Lc2/n1;

    invoke-direct {v0, p0, p1, p2, p4}, Lc2/n1;-><init>(Lc2/r1;Lf1/r;Li9/e;I)V

    iput-object v0, p3, Lr0/n1;->d:Li9/e;

    :cond_c
    return-void
.end method

.method public static final b(Lf1/r;Li9/e;Lr0/q;I)V
    .locals 3

    const v0, -0x4d634bd0    # -1.824273E-8f

    invoke-virtual {p2, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p3, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    invoke-virtual {p2, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x13

    const/16 v2, 0x12

    if-eq v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lr0/m;->a:Lr0/e;

    if-ne v1, v2, :cond_4

    new-instance v1, Lc2/r1;

    sget-object v2, Lc2/x0;->m:Lc2/x0;

    invoke-direct {v1, v2}, Lc2/r1;-><init>(Lc2/u1;)V

    invoke-virtual {p2, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    check-cast v1, Lc2/r1;

    shl-int/lit8 v0, v0, 0x3

    and-int/lit16 v0, v0, 0x3f0

    invoke-static {v1, p0, p1, p2, v0}, Lc2/x;->a(Lc2/r1;Lf1/r;Li9/e;Lr0/q;I)V

    goto :goto_4

    :cond_5
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_4
    invoke-virtual {p2}, Lr0/q;->u()Lr0/n1;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance v0, Lc2/m1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p3, v1}, Lc2/m1;-><init>(Lf1/r;Li9/e;II)V

    iput-object v0, p2, Lr0/n1;->d:Li9/e;

    :cond_6
    return-void
.end method

.method public static final c(JJ)F
    .locals 4

    const/16 v0, 0x20

    shr-long v1, p2, v0

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    shr-long v2, p0, v0

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    div-float/2addr v1, v0

    const-wide v2, 0xffffffffL

    and-long/2addr p2, v2

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    and-long/2addr p0, v2

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    div-float/2addr p2, p0

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static final d(Lc2/e1;Z[Lc2/m;F)F
    .locals 6

    array-length v0, p2

    const/high16 v1, 0x7fc00000    # Float.NaN

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v4, p2, v3

    invoke-virtual {p0, v4}, Lc2/e1;->c(Lc2/m;)F

    move-result v4

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_1

    cmpl-float v5, v4, v1

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    if-ne p1, v5, :cond_2

    :cond_1
    move v1, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_4

    return p3

    :cond_4
    return v1
.end method

.method public static final e(Lc2/u;)Ll1/c;
    .locals 6

    invoke-interface {p0}, Lc2/u;->I()Lc2/u;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lc2/u;->U(Lc2/u;Z)Ll1/c;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ll1/c;

    invoke-interface {p0}, Lc2/u;->o()J

    move-result-wide v1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-float v1, v1

    invoke-interface {p0}, Lc2/u;->o()J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int p0, v2

    int-to-float p0, p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Ll1/c;-><init>(FFFF)V

    return-object v0
.end method

.method public static final f(Lc2/u;Z)Ll1/c;
    .locals 14

    invoke-static {p0}, Lc2/x;->h(Lc2/u;)Lc2/u;

    move-result-object v0

    invoke-interface {v0}, Lc2/u;->o()J

    move-result-wide v1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-float v1, v1

    invoke-interface {v0}, Lc2/u;->o()J

    move-result-wide v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    long-to-int v2, v4

    int-to-float v2, v2

    invoke-interface {v0, p0, p1}, Lc2/u;->U(Lc2/u;Z)Ll1/c;

    move-result-object p0

    iget v4, p0, Ll1/c;->d:F

    iget v5, p0, Ll1/c;->c:F

    iget v8, p0, Ll1/c;->b:F

    iget p0, p0, Ll1/c;->a:F

    const/4 v9, 0x0

    if-eqz p1, :cond_1

    cmpg-float v10, p0, v9

    if-gez v10, :cond_0

    move p0, v9

    :cond_0
    cmpl-float v10, p0, v1

    if-lez v10, :cond_1

    move p0, v1

    :cond_1
    if-eqz p1, :cond_3

    cmpg-float v10, v8, v9

    if-gez v10, :cond_2

    move v8, v9

    :cond_2
    cmpl-float v10, v8, v2

    if-lez v10, :cond_3

    move v8, v2

    :cond_3
    if-eqz p1, :cond_6

    cmpg-float v10, v5, v9

    if-gez v10, :cond_4

    move v5, v9

    :cond_4
    cmpl-float v10, v5, v1

    if-lez v10, :cond_5

    goto :goto_0

    :cond_5
    move v1, v5

    :goto_0
    move v5, v1

    :cond_6
    if-eqz p1, :cond_9

    cmpg-float p1, v4, v9

    if-gez p1, :cond_7

    move v4, v9

    :cond_7
    cmpl-float p1, v4, v2

    if-lez p1, :cond_8

    goto :goto_1

    :cond_8
    move v2, v4

    :goto_1
    move v4, v2

    :cond_9
    cmpg-float p1, p0, v5

    if-nez p1, :cond_a

    goto :goto_2

    :cond_a
    cmpg-float p1, v8, v4

    if-nez p1, :cond_b

    :goto_2
    sget-object p0, Ll1/c;->e:Ll1/c;

    return-object p0

    :cond_b
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v1, p1

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v9, p1

    shl-long/2addr v1, v3

    and-long/2addr v9, v6

    or-long/2addr v1, v9

    invoke-interface {v0, v1, v2}, Lc2/u;->e(J)J

    move-result-wide v1

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v9, p1

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v11, p1

    shl-long v8, v9, v3

    and-long v10, v11, v6

    or-long/2addr v8, v10

    invoke-interface {v0, v8, v9}, Lc2/u;->e(J)J

    move-result-wide v8

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v10, p1

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v12, p1

    shl-long/2addr v10, v3

    and-long/2addr v12, v6

    or-long/2addr v10, v12

    invoke-interface {v0, v10, v11}, Lc2/u;->e(J)J

    move-result-wide v10

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr p0, v3

    and-long/2addr v4, v6

    or-long/2addr p0, v4

    invoke-interface {v0, p0, p1}, Lc2/u;->e(J)J

    move-result-wide p0

    shr-long v4, v1, v3

    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    shr-long v4, v8, v3

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    shr-long v12, p0, v3

    long-to-int v5, v12

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    shr-long v12, v10, v3

    long-to-int v3, v12

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v4, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v0, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    and-long/2addr v1, v6

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    and-long v2, v8, v6

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    and-long/2addr p0, v6

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    and-long v3, v10, v6

    long-to-int p1, v3

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    new-instance p1, Ll1/c;

    invoke-direct {p1, v12, v3, v0, p0}, Ll1/c;-><init>(FFFF)V

    return-object p1
.end method

.method public static final g(JJ)Z
    .locals 0

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final h(Lc2/u;)Lc2/u;
    .locals 2

    invoke-interface {p0}, Lc2/u;->I()Lc2/u;

    move-result-object v0

    :goto_0
    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lc2/u;->I()Lc2/u;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of p0, v0, Le2/h1;

    if-eqz p0, :cond_1

    move-object p0, v0

    check-cast p0, Le2/h1;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_2

    return-object v0

    :cond_2
    iget-object v0, p0, Le2/h1;->B:Le2/h1;

    :goto_2
    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    if-eqz p0, :cond_3

    iget-object v0, p0, Le2/h1;->B:Le2/h1;

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public static final i(Lc2/q0;)Ljava/lang/Object;
    .locals 2

    invoke-interface {p0}, Lc2/q0;->G()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lc2/y;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lc2/y;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    iget-object p0, p0, Lc2/y;->z:Ljava/lang/Object;

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static final j(Le2/q0;)Le2/q0;
    .locals 2

    iget-object p0, p0, Le2/q0;->z:Le2/h1;

    iget-object p0, p0, Le2/h1;->z:Le2/g0;

    :goto_0
    invoke-virtual {p0}, Le2/g0;->v()Le2/g0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Le2/g0;->t:Le2/g0;

    goto :goto_1

    :cond_0
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Le2/g0;->v()Le2/g0;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Le2/g0;->t:Le2/g0;

    :cond_1
    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Le2/g0;->v()Le2/g0;

    move-result-object p0

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object p0, p0, Le2/g0;->t:Le2/g0;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Le2/g0;->R:Le2/c1;

    iget-object p0, p0, Le2/c1;->d:Le2/h1;

    invoke-virtual {p0}, Le2/h1;->S0()Le2/q0;

    move-result-object p0

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final k(Lf1/r;Li9/f;)Lf1/r;
    .locals 1

    new-instance v0, Lc2/v;

    invoke-direct {v0, p1}, Lc2/v;-><init>(Li9/f;)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final l(Lf1/r;Ljava/lang/Object;)Lf1/r;
    .locals 1

    new-instance v0, Lc2/w;

    invoke-direct {v0, p1}, Lc2/w;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final m(Lf1/r;Li9/c;)Lf1/r;
    .locals 1

    new-instance v0, Lc2/y0;

    invoke-direct {v0, p1}, Lc2/y0;-><init>(Li9/c;)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final n(Lf1/r;Li9/c;)Lf1/r;
    .locals 1

    new-instance v0, Lc2/a1;

    invoke-direct {v0, p1}, Lc2/a1;-><init>(Li9/c;)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final o(JJ)J
    .locals 5

    const/16 v0, 0x20

    shr-long v1, p0, v0

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    shr-long v2, p2, v0

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    mul-float/2addr v2, v1

    const-wide v3, 0xffffffffL

    and-long/2addr p0, v3

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    and-long p1, p2, v3

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    mul-float/2addr p1, p0

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p2, p0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    shl-long/2addr p2, v0

    and-long/2addr p0, v3

    or-long/2addr p0, p2

    return-wide p0
.end method
