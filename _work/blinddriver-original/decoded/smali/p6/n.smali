.class public final Lp6/n;
.super Lp6/u;
.source "SourceFile"


# instance fields
.field public final l:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lp6/n;->l:J

    return-void
.end method


# virtual methods
.method public final C()Ljava/lang/Number;
    .locals 2

    iget-wide v0, p0, Lp6/n;->l:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final H()Z
    .locals 4

    const-wide/32 v0, -0x80000000

    iget-wide v2, p0, Lp6/n;->l:J

    cmp-long p0, v2, v0

    if-ltz p0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long p0, v2, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final I()I
    .locals 2

    iget-wide v0, p0, Lp6/n;->l:J

    long-to-int p0, v0

    return p0
.end method

.method public final K()J
    .locals 2

    iget-wide v0, p0, Lp6/n;->l:J

    return-wide v0
.end method

.method public final b()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final c()Ls5/n;
    .locals 0

    sget-object p0, Ls5/n;->B:Ls5/n;

    return-object p0
.end method

.method public final d(Ls5/g;Lb6/r0;)V
    .locals 2

    iget-wide v0, p0, Lp6/n;->l:J

    invoke-virtual {p1, v0, v1}, Ls5/g;->Y(J)V

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
    instance-of v2, p1, Lp6/n;

    if-eqz v2, :cond_2

    check-cast p1, Lp6/n;

    iget-wide v2, p1, Lp6/n;->l:J

    iget-wide p0, p0, Lp6/n;->l:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lp6/n;->l:J

    long-to-int p0, v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final j()Z
    .locals 4

    iget-wide v0, p0, Lp6/n;->l:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final q()Ljava/lang/String;
    .locals 4

    sget-object v0, Lw5/i;->a:Ljava/lang/String;

    const-wide/32 v0, 0x7fffffff

    iget-wide v2, p0, Lp6/n;->l:J

    cmp-long p0, v2, v0

    if-gtz p0, :cond_2

    const-wide/32 v0, -0x80000000

    cmp-long p0, v2, v0

    if-ltz p0, :cond_2

    long-to-int p0, v2

    sget-object v0, Lw5/i;->d:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_1

    if-ltz p0, :cond_0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    neg-int v0, p0

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Lw5/i;->e:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object p0, v1, v0

    return-object p0

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final r()Ljava/math/BigInteger;
    .locals 2

    iget-wide v0, p0, Lp6/n;->l:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public final t()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final u()Ljava/math/BigDecimal;
    .locals 2

    iget-wide v0, p0, Lp6/n;->l:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public final v()D
    .locals 2

    iget-wide v0, p0, Lp6/n;->l:J

    long-to-double v0, v0

    return-wide v0
.end method
