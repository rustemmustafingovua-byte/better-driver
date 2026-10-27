.class public final Lp6/i;
.super Lp6/u;
.source "SourceFile"


# instance fields
.field public final l:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lp6/i;->l:F

    return-void
.end method


# virtual methods
.method public final C()Ljava/lang/Number;
    .locals 0

    iget p0, p0, Lp6/i;->l:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final H()Z
    .locals 1

    const/high16 v0, -0x31000000

    iget p0, p0, Lp6/i;->l:F

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x4f000000

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final I()I
    .locals 0

    iget p0, p0, Lp6/i;->l:F

    float-to-int p0, p0

    return p0
.end method

.method public final J()Z
    .locals 1

    iget p0, p0, Lp6/i;->l:F

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

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

    iget p0, p0, Lp6/i;->l:F

    float-to-long v0, p0

    return-wide v0
.end method

.method public final b()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final c()Ls5/n;
    .locals 0

    sget-object p0, Ls5/n;->C:Ls5/n;

    return-object p0
.end method

.method public final d(Ls5/g;Lb6/r0;)V
    .locals 0

    iget p0, p0, Lp6/i;->l:F

    invoke-virtual {p1, p0}, Ls5/g;->W(F)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lp6/i;

    if-eqz v2, :cond_2

    check-cast p1, Lp6/i;

    iget p1, p1, Lp6/i;->l:F

    iget p0, p0, Lp6/i;->l:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lp6/i;->l:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    return p0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    sget-object v0, Lw5/i;->a:Ljava/lang/String;

    iget p0, p0, Lp6/i;->l:F

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final r()Ljava/math/BigInteger;
    .locals 0

    invoke-virtual {p0}, Lp6/i;->u()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public final t()Z
    .locals 1

    const/high16 v0, -0x21000000

    iget p0, p0, Lp6/i;->l:F

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x5f000000

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final u()Ljava/math/BigDecimal;
    .locals 2

    iget p0, p0, Lp6/i;->l:F

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public final v()D
    .locals 2

    iget p0, p0, Lp6/i;->l:F

    float-to-double v0, p0

    return-wide v0
.end method
