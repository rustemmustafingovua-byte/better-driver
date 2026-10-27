.class public abstract Lh4/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lg5/f;

.field public b:Z

.field public c:Lg5/i;


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public abstract c(Lh4/b;)V
.end method

.method public abstract d(Lh4/b;)V
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Lh4/d;->c:Lg5/i;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lg5/i;->o:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedHashSet;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lg5/i;->n:Ljava/lang/Object;

    check-cast v0, Lh4/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lh4/g;->f:Lh4/d;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, v0, Lh4/g;->g:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lh4/d;->a()V

    :goto_0
    iput-object v2, v0, Lh4/g;->f:Lh4/d;

    const/4 v1, 0x0

    iput v1, v0, Lh4/g;->g:I

    iput-object v2, v0, Lh4/g;->h:Lh4/f;

    :cond_1
    iget-object v1, v0, Lh4/g;->d:Lu8/k;

    invoke-virtual {v1, p0}, Lu8/k;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lh4/g;->e:Lu8/k;

    invoke-virtual {v1, p0}, Lu8/k;->remove(Ljava/lang/Object;)Z

    iput-object v2, p0, Lh4/d;->c:Lg5/i;

    invoke-virtual {v0}, Lh4/g;->b()V

    :cond_2
    return-void
.end method

.method public final f(Z)V
    .locals 1

    iget-boolean v0, p0, Lh4/d;->b:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lh4/d;->b:Z

    iget-object p0, p0, Lh4/d;->c:Lg5/i;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lg5/i;->n:Ljava/lang/Object;

    check-cast p0, Lh4/g;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lh4/g;->b()V

    :cond_1
    :goto_0
    return-void
.end method
