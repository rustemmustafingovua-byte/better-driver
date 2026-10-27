.class public Lb/w;
.super Lb/v;
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

    invoke-virtual {p3, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p3, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p3, p0}, Landroid/view/Window;->setStatusBarContrastEnforced(Z)V

    const/4 p0, 0x1

    invoke-virtual {p3, p0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x23

    if-lt p1, p2, :cond_0

    new-instance p1, Lq3/a1;

    invoke-direct {p1, p3}, Lq3/z0;-><init>(Landroid/view/Window;)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x1e

    if-lt p1, p2, :cond_1

    new-instance p1, Lq3/z0;

    invoke-direct {p1, p3}, Lq3/z0;-><init>(Landroid/view/Window;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lq3/y0;

    invoke-direct {p1, p3}, Lq3/y0;-><init>(Landroid/view/Window;)V

    :goto_0
    xor-int/lit8 p2, p5, 0x1

    invoke-virtual {p1, p2}, La/a;->z(Z)V

    xor-int/2addr p0, p6

    invoke-virtual {p1, p0}, La/a;->y(Z)V

    return-void
.end method
