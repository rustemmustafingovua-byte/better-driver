.class public final Lg3/n;
.super Lg3/h;
.source "SourceFile"


# virtual methods
.method public final i(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final j(Ljava/lang/Object;)Z
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Lg3/h;->r:Ljava/lang/Object;

    :cond_0
    sget-object v0, Lg3/h;->q:Ll7/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Ll7/a;->g(Lg3/h;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lg3/h;->c(Lg3/h;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
