.class public final Lb/y;
.super Lb/x;
.source "SourceFile"


# virtual methods
.method public a(Lb/k0;Lb/k0;Landroid/view/Window;Landroid/view/View;ZZ)V
    .locals 4

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

    instance-of p1, p4, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    move-object p2, p4

    check-cast p2, Landroid/view/ViewGroup;

    :cond_0
    const/4 p1, 0x1

    if-eqz p2, :cond_4

    move p4, p0

    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p4, v0, :cond_1

    move v0, p1

    goto :goto_1

    :cond_1
    move v0, p0

    :goto_1
    if-eqz v0, :cond_4

    add-int/lit8 v0, p4, 0x1

    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    instance-of v1, p4, Ljava/util/List;

    if-eqz v1, :cond_2

    move-object v1, p4

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lt3/a;

    if-eqz v1, :cond_2

    check-cast p4, Ljava/lang/Iterable;

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_2

    :cond_2
    move p4, v0

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_4
    invoke-virtual {p3, p1}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x23

    if-lt p0, p2, :cond_5

    new-instance p0, Lq3/a1;

    invoke-direct {p0, p3}, Lq3/z0;-><init>(Landroid/view/Window;)V

    goto :goto_3

    :cond_5
    const/16 p2, 0x1e

    if-lt p0, p2, :cond_6

    new-instance p0, Lq3/z0;

    invoke-direct {p0, p3}, Lq3/z0;-><init>(Landroid/view/Window;)V

    goto :goto_3

    :cond_6
    new-instance p0, Lq3/y0;

    invoke-direct {p0, p3}, Lq3/y0;-><init>(Landroid/view/Window;)V

    :goto_3
    xor-int/lit8 p2, p5, 0x1

    invoke-virtual {p0, p2}, La/a;->z(Z)V

    xor-int/2addr p1, p6

    invoke-virtual {p0, p1}, La/a;->y(Z)V

    return-void
.end method
