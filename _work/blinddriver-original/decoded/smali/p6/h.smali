.class public final Lp6/h;
.super Lp6/u;
.source "SourceFile"


# instance fields
.field public final l:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lp6/h;->l:D

    return-void
.end method


# virtual methods
.method public final C()Ljava/lang/Number;
    .locals 2

    iget-wide v0, p0, Lp6/h;->l:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public final H()Z
    .locals 4

    const-wide/high16 v0, -0x3e20000000000000L    # -2.147483648E9

    iget-wide v2, p0, Lp6/h;->l:D

    cmpl-double p0, v2, v0

    if-ltz p0, :cond_0

    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    cmpg-double p0, v2, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final I()I
    .locals 2

    iget-wide v0, p0, Lp6/h;->l:D

    double-to-int p0, v0

    return p0
.end method

.method public final J()Z
    .locals 2

    iget-wide v0, p0, Lp6/h;->l:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final K()J
    .locals 2

    iget-wide v0, p0, Lp6/h;->l:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public final b()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public final c()Ls5/n;
    .locals 0

    sget-object p0, Ls5/n;->C:Ls5/n;

    return-object p0
.end method

.method public final d(Ls5/g;Lb6/r0;)V
    .locals 2

    iget-wide v0, p0, Lp6/h;->l:D

    invoke-virtual {p1, v0, v1}, Ls5/g;->V(D)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lp6/h;

    if-eqz v2, :cond_2

    check-cast p1, Lp6/h;

    iget-wide v2, p1, Lp6/h;->l:D

    iget-wide p0, p0, Lp6/h;->l:D

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lp6/h;->l:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    long-to-int p0, v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final q()Ljava/lang/String;
    .locals 2

    sget-object v0, Lw5/i;->a:Ljava/lang/String;

    iget-wide v0, p0, Lp6/h;->l:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final r()Ljava/math/BigInteger;
    .locals 2

    iget-wide v0, p0, Lp6/h;->l:D

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public final t()Z
    .locals 4

    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    iget-wide v2, p0, Lp6/h;->l:D

    cmpl-double p0, v2, v0

    if-ltz p0, :cond_0

    const-wide/high16 v0, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double p0, v2, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final u()Ljava/math/BigDecimal;
    .locals 2

    iget-wide v0, p0, Lp6/h;->l:D

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public final v()D
    .locals 2

    iget-wide v0, p0, Lp6/h;->l:D

    return-wide v0
.end method
