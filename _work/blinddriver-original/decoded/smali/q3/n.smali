.class public abstract Lq3/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/View;)Lq3/x0;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {v1, v0}, Lq3/x0;->c(Landroid/view/View;Landroid/view/WindowInsets;)Lq3/x0;

    move-result-object v0

    iget-object v1, v0, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {v1, v0}, Lq3/u0;->y(Lq3/x0;)V

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v1, p0}, Lq3/u0;->d(Landroid/view/View;)V

    invoke-virtual {v1, p0}, Lq3/u0;->p(Landroid/view/View;)V

    invoke-virtual {v1}, Lq3/u0;->q()V

    return-object v0
.end method
