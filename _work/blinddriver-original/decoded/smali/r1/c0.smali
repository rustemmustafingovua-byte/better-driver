.class public abstract Lr1/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Li9/c;


# virtual methods
.method public abstract a(Lo1/d;)V
.end method

.method public b()Li9/c;
    .locals 0

    iget-object p0, p0, Lr1/c0;->a:Li9/c;

    return-object p0
.end method

.method public final c()V
    .locals 1

    invoke-virtual {p0}, Lr1/c0;->b()Li9/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public d(Landroidx/fragment/app/t;)V
    .locals 0

    iput-object p1, p0, Lr1/c0;->a:Li9/c;

    return-void
.end method
