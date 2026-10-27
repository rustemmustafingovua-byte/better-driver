.class public final Lb0/z2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lp2/j0;

.field public b:Lc2/u;

.field public c:Lc2/u;


# direct methods
.method public constructor <init>(Lc2/u;Lp2/j0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb0/z2;->a:Lp2/j0;

    const/4 p2, 0x0

    iput-object p2, p0, Lb0/z2;->b:Lc2/u;

    iput-object p1, p0, Lb0/z2;->c:Lc2/u;

    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 6

    iget-object v0, p0, Lb0/z2;->b:Lc2/u;

    sget-object v1, Ll1/c;->e:Ll1/c;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lc2/u;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lb0/z2;->c:Lc2/u;

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    invoke-interface {p0, v0, v2}, Lc2/u;->U(Lc2/u;Z)Ll1/c;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, p0

    :cond_3
    :goto_1
    const/16 p0, 0x20

    shr-long v2, p1, p0

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    iget v3, v1, Ll1/c;->a:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    iget v3, v1, Ll1/c;->c:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    :goto_2
    const-wide v4, 0xffffffffL

    and-long/2addr p1, v4

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    iget v0, v1, Ll1/c;->b:F

    cmpg-float p2, p2, v0

    if-gez p2, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    iget v0, v1, Ll1/c;->d:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    :goto_3
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    shl-long p0, p1, p0

    and-long/2addr v0, v4

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public final b(ZJ)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2, p3}, Lb0/z2;->a(J)J

    move-result-wide p2

    :cond_0
    invoke-virtual {p0, p2, p3}, Lb0/z2;->d(J)J

    move-result-wide p1

    iget-object p0, p0, Lb0/z2;->a:Lp2/j0;

    iget-object p0, p0, Lp2/j0;->b:Lp2/n;

    invoke-virtual {p0, p1, p2}, Lp2/n;->g(J)I

    move-result p0

    return p0
.end method

.method public final c(J)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Lb0/z2;->a(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lb0/z2;->d(J)J

    move-result-wide p1

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p1

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iget-object p0, p0, Lb0/z2;->a:Lp2/j0;

    iget-object v1, p0, Lp2/j0;->b:Lp2/n;

    invoke-virtual {v1, v0}, Lp2/n;->e(F)I

    move-result v0

    const/16 v1, 0x20

    shr-long/2addr p1, v1

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    invoke-virtual {p0, v0}, Lp2/j0;->e(I)F

    move-result v1

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-virtual {p0, v0}, Lp2/j0;->f(I)F

    move-result p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d(J)J
    .locals 3

    iget-object v0, p0, Lb0/z2;->b:Lc2/u;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lc2/u;->j()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lb0/z2;->c:Lc2/u;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lc2/u;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v2, p0

    :cond_2
    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0, v2, p1, p2}, Lc2/u;->L(Lc2/u;J)J

    move-result-wide p0

    return-wide p0

    :cond_4
    :goto_1
    return-wide p1
.end method

.method public final e(J)J
    .locals 3

    iget-object v0, p0, Lb0/z2;->b:Lc2/u;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lc2/u;->j()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lb0/z2;->c:Lc2/u;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lc2/u;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v2, p0

    :cond_2
    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v2, v0, p1, p2}, Lc2/u;->L(Lc2/u;J)J

    move-result-wide p0

    return-wide p0

    :cond_4
    :goto_1
    return-wide p1
.end method
