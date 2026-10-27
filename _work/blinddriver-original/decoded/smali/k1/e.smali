.class public final Lk1/e;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Lk1/g;


# instance fields
.field public A:Lk1/z;

.field public z:Li9/c;


# virtual methods
.method public final s0(Lk1/z;)V
    .locals 1

    iget-object v0, p0, Lk1/e;->A:Lk1/z;

    invoke-static {v0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lk1/e;->A:Lk1/z;

    iget-object p0, p0, Lk1/e;->z:Li9/c;

    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
