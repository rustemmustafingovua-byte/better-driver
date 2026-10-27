.class final Lu/d0;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# virtual methods
.method public final e()Lf1/q;
    .locals 1

    new-instance p0, Lu/e0;

    sget-object v0, Lu/f0;->l:Lu/f0;

    invoke-direct {p0}, Lf1/q;-><init>()V

    iput-object v0, p0, Lu/e0;->z:Lu/f0;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu/e0;->A:Z

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lu/d0;

    if-eqz p0, :cond_1

    check-cast p1, Lu/d0;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    sget-object p0, Lu/f0;->l:Lu/f0;

    return v0
.end method

.method public final f(Lf1/q;)V
    .locals 0

    check-cast p1, Lu/e0;

    sget-object p0, Lu/f0;->l:Lu/f0;

    iput-object p0, p1, Lu/e0;->z:Lu/f0;

    const/4 p0, 0x1

    iput-boolean p0, p1, Lu/e0;->A:Z

    return-void
.end method

.method public final hashCode()I
    .locals 1

    sget-object p0, Lu/f0;->l:Lu/f0;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method
