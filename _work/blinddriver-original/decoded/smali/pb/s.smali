.class public final Lpb/s;
.super Lpb/q;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lpb/d;Lpb/m;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lpb/q;-><init>(Lpb/d;Lpb/m;)V

    invoke-virtual {p0}, Lpb/q;->L()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-super {p0}, Lpb/q;->P()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Points of LinearRing do not form a closed linestring"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p1, p0, Lpb/q;->o:Lpb/d;

    invoke-interface {p1}, Lpb/d;->size()I

    move-result p1

    const/4 p2, 0x1

    if-lt p1, p2, :cond_3

    iget-object p1, p0, Lpb/q;->o:Lpb/d;

    invoke-interface {p1}, Lpb/d;->size()I

    move-result p1

    const/4 p2, 0x3

    if-lt p1, p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid number of points in LinearRing (found "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lpb/q;->o:Lpb/d;

    invoke-interface {p0}, Lpb/d;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " - must be 0 or >= 3)"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final B()Ljava/lang/String;
    .locals 0

    const-string p0, "LinearRing"

    return-object p0
.end method

.method public final G()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public final O()Lpb/q;
    .locals 2

    new-instance v0, Lpb/s;

    iget-object v1, p0, Lpb/q;->o:Lpb/d;

    invoke-interface {v1}, Lpb/d;->d()Lpb/d;

    move-result-object v1

    iget-object p0, p0, Lpb/i;->m:Lpb/m;

    invoke-direct {v0, v1, p0}, Lpb/s;-><init>(Lpb/d;Lpb/m;)V

    return-object v0
.end method

.method public final P()Z
    .locals 1

    invoke-virtual {p0}, Lpb/q;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0}, Lpb/q;->P()Z

    move-result p0

    return p0
.end method

.method public final p()Lpb/i;
    .locals 2

    new-instance v0, Lpb/s;

    iget-object v1, p0, Lpb/q;->o:Lpb/d;

    invoke-interface {v1}, Lpb/d;->d()Lpb/d;

    move-result-object v1

    iget-object p0, p0, Lpb/i;->m:Lpb/m;

    invoke-direct {v0, v1, p0}, Lpb/s;-><init>(Lpb/d;Lpb/m;)V

    return-object v0
.end method

.method public final u()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method
