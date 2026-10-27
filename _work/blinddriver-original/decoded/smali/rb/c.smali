.class public final Lrb/c;
.super Lg5/c;
.source "SourceFile"


# virtual methods
.method public final a(Lpb/i;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lg5/c;->g(Lpb/i;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lg5/c;->i(Lpb/i;)Z

    move-result p0

    return p0
.end method
