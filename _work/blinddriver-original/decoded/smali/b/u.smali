.class public abstract Lb/u;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public a(Lb/k0;Lb/k0;Landroid/view/Window;Landroid/view/View;ZZ)V
    .locals 0

    const-string p0, "statusBarStyle"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "navigationBarStyle"

    invoke-static {p2, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "window"

    invoke-static {p3, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "view"

    invoke-static {p4, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {p3, p0}, Lwa/h;->u(Landroid/view/Window;Z)V

    if-eqz p5, :cond_0

    iget p0, p1, Lb/k0;->b:I

    goto :goto_0

    :cond_0
    iget p0, p1, Lb/k0;->a:I

    :goto_0
    invoke-virtual {p3, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    if-eqz p6, :cond_1

    iget p0, p2, Lb/k0;->b:I

    goto :goto_1

    :cond_1
    iget p0, p2, Lb/k0;->a:I

    :goto_1
    invoke-virtual {p3, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x23

    if-lt p0, p1, :cond_2

    new-instance p0, Lq3/a1;

    invoke-direct {p0, p3}, Lq3/z0;-><init>(Landroid/view/Window;)V

    goto :goto_2

    :cond_2
    const/16 p1, 0x1e

    if-lt p0, p1, :cond_3

    new-instance p0, Lq3/z0;

    invoke-direct {p0, p3}, Lq3/z0;-><init>(Landroid/view/Window;)V

    goto :goto_2

    :cond_3
    new-instance p0, Lq3/y0;

    invoke-direct {p0, p3}, Lq3/y0;-><init>(Landroid/view/Window;)V

    :goto_2
    xor-int/lit8 p1, p5, 0x1

    invoke-virtual {p0, p1}, La/a;->z(Z)V

    xor-int/lit8 p1, p6, 0x1

    invoke-virtual {p0, p1}, La/a;->y(Z)V

    return-void
.end method
