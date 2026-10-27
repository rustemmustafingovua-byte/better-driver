.class public final Lh4/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# instance fields
.field public final synthetic a:Lh4/k;


# direct methods
.method public constructor <init>(Lh4/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh4/l;->a:Lh4/k;

    return-void
.end method


# virtual methods
.method public final onBackCancelled()V
    .locals 5

    iget-object p0, p0, Lh4/l;->a:Lh4/k;

    iget-object v0, p0, Lh4/f;->a:Lg5/i;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lh4/f;->b:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0, p0, v2}, Lg5/i;->k(Lh4/f;Lh4/b;)V

    :cond_0
    iget-object v0, v0, Lg5/i;->n:Ljava/lang/Object;

    check-cast v0, Lh4/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lh4/g;->h:Lh4/f;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget v1, v0, Lh4/g;->g:I

    const/4 v4, -0x1

    if-eq v4, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lh4/g;->f:Lh4/d;

    if-nez v1, :cond_2

    invoke-virtual {v0, v4}, Lh4/g;->c(I)Lh4/d;

    move-result-object v1

    :cond_2
    iput-object v2, v0, Lh4/g;->f:Lh4/d;

    iput v3, v0, Lh4/g;->g:I

    iput-object v2, v0, Lh4/g;->h:Lh4/f;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lh4/d;->a()V

    :cond_3
    iget-object v0, v0, Lh4/g;->a:Lx9/l0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lh4/h;->l:Lh4/h;

    invoke-virtual {v0, v2, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    iput-boolean v3, p0, Lh4/f;->b:Z

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This input is not added to any dispatcher."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onBackInvoked()V
    .locals 0

    iget-object p0, p0, Lh4/l;->a:Lh4/k;

    invoke-virtual {p0}, Lh4/f;->a()V

    return-void
.end method

.method public final onBackProgressed(Landroid/window/BackEvent;)V
    .locals 2

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ll7/a;->b(Landroid/window/BackEvent;)Lh4/b;

    move-result-object p1

    iget-object p0, p0, Lh4/l;->a:Lh4/k;

    iget-object v0, p0, Lh4/f;->a:Lg5/i;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lh4/f;->b:Z

    if-eqz v1, :cond_3

    iget-object v0, v0, Lg5/i;->n:Ljava/lang/Object;

    check-cast v0, Lh4/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lh4/g;->h:Lh4/f;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    iget p0, v0, Lh4/g;->g:I

    const/4 v1, -0x1

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lh4/g;->f:Lh4/d;

    if-nez p0, :cond_1

    invoke-virtual {v0, v1}, Lh4/g;->c(I)Lh4/d;

    move-result-object p0

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lh4/d;->c(Lh4/b;)V

    :cond_2
    iget-object p0, v0, Lh4/g;->a:Lx9/l0;

    new-instance v0, Lh4/i;

    invoke-direct {v0, p1}, Lh4/i;-><init>(Lh4/b;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This input is not added to any dispatcher."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onBackStarted(Landroid/window/BackEvent;)V
    .locals 2

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ll7/a;->b(Landroid/window/BackEvent;)Lh4/b;

    move-result-object p1

    iget-object p0, p0, Lh4/l;->a:Lh4/k;

    iget-object v0, p0, Lh4/f;->a:Lg5/i;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lh4/f;->b:Z

    if-nez v1, :cond_0

    invoke-virtual {v0, p0, p1}, Lg5/i;->k(Lh4/f;Lh4/b;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lh4/f;->b:Z

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This input is not added to any dispatcher."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
