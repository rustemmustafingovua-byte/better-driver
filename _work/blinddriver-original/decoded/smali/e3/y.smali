.class public final Le3/y;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Lk1/t;


# virtual methods
.method public final z0(Lk1/q;)V
    .locals 2

    invoke-static {p0}, Le3/l;->c(Lf1/q;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lf1/q;->l:Lf1/q;

    iget-boolean v1, v1, Lf1/q;->y:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Le3/l;->c(Lf1/q;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->hasFocusable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1, p0}, Lk1/q;->d(Z)V

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0, v0}, Lk1/h;->a(Landroid/view/View;Landroid/view/View;)Ll1/c;

    move-result-object p0

    invoke-interface {p1, p0}, Lk1/q;->e(Ll1/c;)V

    :cond_1
    return-void
.end method
