.class public final Lgc/g;
.super Lgc/a;
.source "SourceFile"


# virtual methods
.method public final a()V
    .locals 1

    invoke-virtual {p0}, Lgc/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lgc/a;->a:I

    return-void
.end method

.method public final c(Lpb/h;Lpb/h;)V
    .locals 0

    invoke-virtual {p1, p2}, Lpb/h;->h(Lpb/h;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lgc/a;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lgc/a;->a:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final f(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final g(III)V
    .locals 0

    const/4 p3, 0x2

    if-eq p1, p3, :cond_1

    if-eq p2, p3, :cond_1

    invoke-virtual {p0}, Lgc/a;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput p1, p0, Lgc/a;->a:I

    :cond_1
    :goto_0
    return-void
.end method
