.class public final Lq3/a1;
.super Lq3/z0;
.source "SourceFile"


# virtual methods
.method public final y(Z)V
    .locals 0

    iget-object p0, p0, Lq3/z0;->f:Landroid/view/WindowInsetsController;

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lq3/a0;->u(Landroid/view/WindowInsetsController;I)V

    return-void
.end method

.method public final z(Z)V
    .locals 0

    iget-object p0, p0, Lq3/z0;->f:Landroid/view/WindowInsetsController;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lq3/a0;->w(Landroid/view/WindowInsetsController;I)V

    return-void
.end method
