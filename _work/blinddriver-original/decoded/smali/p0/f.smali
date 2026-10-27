.class public final Lp0/f;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/z1;


# instance fields
.field public z:Ln/p1;


# virtual methods
.method public final C(Lm2/x;)V
    .locals 1

    new-instance p1, Lp0/e;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lp0/e;-><init>(I)V

    sget-object v0, Lp0/n;->a:Lp0/n;

    invoke-static {p0, v0, p1}, Le2/l;->y(Le2/j;Ljava/lang/Object;Li9/c;)V

    iget-object p0, p0, Lp0/f;->z:Ln/p1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final F0()V
    .locals 2

    new-instance v0, Lp0/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lp0/e;-><init>(I)V

    sget-object v1, Lp0/n;->a:Lp0/n;

    invoke-static {p0, v1, v0}, Le2/l;->y(Le2/j;Ljava/lang/Object;Li9/c;)V

    return-void
.end method
