.class public final Lu/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/j1;


# virtual methods
.method public final a(Lc2/t0;Lb3/m;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final b(Lc2/t0;Lb3/m;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final c(Lc2/t0;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final d(Lb3/c;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lu/x;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Insets(left=0, top=0, right=0, bottom=0)"

    return-object p0
.end method
