.class public final Ly1/e0;
.super Ly1/f;
.source "SourceFile"


# virtual methods
.method public final N0(Ly1/r;)V
    .locals 1

    sget-object v0, Lf2/l1;->u:Lr0/s2;

    invoke-static {p0, v0}, Le2/l;->h(Le2/i;Lr0/m1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly1/s;

    if-eqz p0, :cond_0

    check-cast p0, Lf2/t;

    iput-object p1, p0, Lf2/t;->a:Ly1/r;

    :cond_0
    return-void
.end method

.method public final P0(I)Z
    .locals 0

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    if-ne p1, p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic i()Ljava/lang/Object;
    .locals 0

    const-string p0, "androidx.compose.ui.input.pointer.StylusHoverIcon"

    return-object p0
.end method
