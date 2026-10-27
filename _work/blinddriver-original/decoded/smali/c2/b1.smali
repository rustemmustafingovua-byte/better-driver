.class public final Lc2/b1;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/w;


# instance fields
.field public A:J

.field public z:Li9/c;


# virtual methods
.method public final B0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final l(J)V
    .locals 2

    iget-wide v0, p0, Lc2/b1;->A:J

    invoke-static {v0, v1, p1, p2}, Lb3/l;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc2/b1;->z:Li9/c;

    new-instance v1, Lb3/l;

    invoke-direct {v1, p1, p2}, Lb3/l;-><init>(J)V

    invoke-interface {v0, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iput-wide p1, p0, Lc2/b1;->A:J

    :cond_0
    return-void
.end method
