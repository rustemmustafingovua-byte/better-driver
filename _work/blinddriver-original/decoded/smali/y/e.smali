.class public final Ly/e;
.super Lf1/q;
.source "SourceFile"


# instance fields
.field public z:Ly/c;


# virtual methods
.method public final B0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final E0()V
    .locals 2

    iget-object v0, p0, Ly/e;->z:Ly/c;

    if-eqz v0, :cond_0

    iget-object v1, v0, Ly/c;->a:Lt0/b;

    invoke-virtual {v1, p0}, Lt0/b;->j(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Ly/c;->a:Lt0/b;

    invoke-virtual {v1, p0}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_1
    iput-object v0, p0, Ly/e;->z:Ly/c;

    return-void
.end method

.method public final F0()V
    .locals 2

    iget-object v0, p0, Ly/e;->z:Ly/c;

    if-eqz v0, :cond_0

    const-string v1, "null cannot be cast to non-null type androidx.compose.foundation.relocation.BringIntoViewRequesterImpl"

    invoke-static {v0, v1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Ly/c;->a:Lt0/b;

    invoke-virtual {v0, p0}, Lt0/b;->j(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
