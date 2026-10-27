.class public final Lw1/f;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Lw1/e;


# instance fields
.field public A:Li9/c;

.field public z:Li9/c;


# virtual methods
.method public final A(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object p0, p0, Lw1/f;->z:Li9/c;

    if-eqz p0, :cond_0

    new-instance v0, Lw1/b;

    invoke-direct {v0, p1}, Lw1/b;-><init>(Landroid/view/KeyEvent;)V

    invoke-interface {p0, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object p0, p0, Lw1/f;->A:Li9/c;

    if-eqz p0, :cond_0

    new-instance v0, Lw1/b;

    invoke-direct {v0, p1}, Lw1/b;-><init>(Landroid/view/KeyEvent;)V

    invoke-interface {p0, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
