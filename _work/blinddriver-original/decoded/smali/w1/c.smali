.class public abstract Lw1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(I)J
    .locals 6

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    const/4 p0, 0x0

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    sget p0, Lw1/a;->F:I

    return-wide v0
.end method

.method public static final b(Landroid/view/KeyEvent;)J
    .locals 2

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    invoke-static {p0}, Lw1/c;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final c(Landroid/view/KeyEvent;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method public static final d(Lf1/r;Li9/c;)Lf1/r;
    .locals 2

    new-instance v0, Lw1/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lw1/d;-><init>(Li9/c;Li9/c;)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lf1/r;Li9/c;)Lf1/r;
    .locals 2

    new-instance v0, Lw1/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lw1/d;-><init>(Li9/c;Li9/c;)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method
