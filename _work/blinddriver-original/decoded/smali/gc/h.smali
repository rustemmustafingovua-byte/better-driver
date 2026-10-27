.class public final Lgc/h;
.super Lgc/a;
.source "SourceFile"


# instance fields
.field public b:Lpb/o;


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lgc/h;->b:Lpb/o;

    invoke-virtual {v0}, Lpb/o;->a()Z

    move-result v0

    invoke-virtual {p0}, Lgc/a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lgc/a;->a:I

    return-void
.end method

.method public final b(II)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-lt p1, p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lgc/a;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    return-void

    :cond_2
    const/4 p1, 0x0

    iput p1, p0, Lgc/a;->a:I

    return-void
.end method

.method public final c(Lpb/h;Lpb/h;)V
    .locals 0

    invoke-virtual {p1, p2}, Lpb/h;->a(Lpb/h;)Z

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

.method public final e(Z)Z
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f(Z)Z
    .locals 0

    xor-int/lit8 p0, p1, 0x1

    return p0
.end method

.method public final g(III)V
    .locals 2

    iget-object v0, p0, Lgc/h;->b:Lpb/o;

    iget-object v1, v0, Lpb/o;->l:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    if-le p3, v1, :cond_2

    invoke-virtual {v0, p1, p2, p3}, Lpb/o;->f(III)V

    const/4 p1, 0x2

    iget-object p2, v0, Lpb/o;->l:[[I

    aget-object p1, p2, p1

    const/4 p2, 0x0

    aget p2, p1, p2

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    aget p1, p1, p2

    if-ltz p1, :cond_2

    :goto_0
    invoke-virtual {v0}, Lpb/o;->a()Z

    move-result p1

    invoke-virtual {p0}, Lgc/a;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    iput p1, p0, Lgc/a;->a:I

    :cond_2
    :goto_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "contains: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lgc/h;->b:Lpb/o;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
