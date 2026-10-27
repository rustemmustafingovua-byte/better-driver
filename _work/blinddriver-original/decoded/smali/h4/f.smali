.class public abstract Lh4/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lg5/i;

.field public b:Z


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lh4/f;->a:Lg5/i;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lh4/f;->b:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0, p0, v2}, Lg5/i;->k(Lh4/f;Lh4/b;)V

    :cond_0
    iget-object v1, v0, Lg5/i;->n:Ljava/lang/Object;

    check-cast v1, Lh4/g;

    iget-object v0, v0, Lg5/i;->m:Ljava/lang/Object;

    check-cast v0, Lb/e0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lh4/g;->h:Lh4/f;

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    iget v3, v1, Lh4/g;->g:I

    const/4 v5, -0x1

    if-eq v5, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, v1, Lh4/g;->f:Lh4/d;

    if-nez v3, :cond_2

    invoke-virtual {v1, v5}, Lh4/g;->c(I)Lh4/d;

    move-result-object v3

    :cond_2
    iput-object v2, v1, Lh4/g;->f:Lh4/d;

    iput v4, v1, Lh4/g;->g:I

    iput-object v2, v1, Lh4/g;->h:Lh4/f;

    if-nez v3, :cond_3

    iget-object v0, v0, Lb/e0;->l:Ljava/lang/Object;

    check-cast v0, Lb/h0;

    iget-object v0, v0, Lb/h0;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lh4/d;->b()V

    :goto_0
    iget-object v0, v1, Lh4/g;->a:Lx9/l0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lh4/h;->l:Lh4/h;

    invoke-virtual {v0, v2, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    iput-boolean v4, p0, Lh4/f;->b:Z

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This input is not added to any dispatcher."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method
