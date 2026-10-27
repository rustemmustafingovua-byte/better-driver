.class public final Landroidx/fragment/app/j;
.super Landroidx/fragment/app/r1;
.source "SourceFile"


# instance fields
.field public final c:Landroidx/fragment/app/h;

.field public d:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/j;->c:Landroidx/fragment/app/h;

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/fragment/app/j;->d:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Landroidx/fragment/app/j;->c:Landroidx/fragment/app/h;

    if-nez p1, :cond_0

    iget-object p1, v0, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/s1;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/s1;->c(Landroidx/fragment/app/r1;)V

    return-void

    :cond_0
    iget-object p0, v0, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/s1;

    iget-boolean v0, p0, Landroidx/fragment/app/s1;->g:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/fragment/app/l;->a:Landroidx/fragment/app/l;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/l;->a(Landroid/animation/AnimatorSet;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    :goto_0
    const/4 p1, 0x2

    invoke-static {p1}, Landroidx/fragment/app/w0;->l(I)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Animator from operation "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " has been canceled"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroidx/fragment/app/s1;->g:Z

    if-eqz p0, :cond_2

    const-string p0, " with seeking."

    goto :goto_1

    :cond_2
    const-string p0, "."

    :goto_1
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FragmentManager"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public final c(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/fragment/app/j;->c:Landroidx/fragment/app/h;

    iget-object p1, p1, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/s1;

    iget-object v0, p0, Landroidx/fragment/app/j;->d:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Landroidx/fragment/app/s1;->c(Landroidx/fragment/app/r1;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    const/4 p0, 0x2

    invoke-static {p0}, Landroidx/fragment/app/w0;->l(I)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Animator from operation "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has started."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FragmentManager"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final d(Lb/a;Landroid/view/ViewGroup;)V
    .locals 9

    const-string v0, "container"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/j;->c:Landroidx/fragment/app/h;

    iget-object p2, p2, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/s1;

    iget-object v0, p0, Landroidx/fragment/app/j;->d:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    invoke-virtual {p2, p0}, Landroidx/fragment/app/s1;->c(Landroidx/fragment/app/r1;)V

    return-void

    :cond_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt p0, v1, :cond_5

    iget-object p0, p2, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/l0;

    iget-boolean p0, p0, Landroidx/fragment/app/l0;->mTransitioning:Z

    if-eqz p0, :cond_5

    const/4 p0, 0x2

    invoke-static {p0}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Adding BackProgressCallbacks for Animators to operation "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v1, Landroidx/fragment/app/k;->a:Landroidx/fragment/app/k;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/k;->a(Landroid/animation/AnimatorSet;)J

    move-result-wide v3

    iget p1, p1, Lb/a;->c:F

    long-to-float v1, v3

    mul-float/2addr p1, v1

    float-to-long v5, p1

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    const-wide/16 v7, 0x1

    if-nez p1, :cond_2

    move-wide v5, v7

    :cond_2
    cmp-long p1, v5, v3

    if-nez p1, :cond_3

    sub-long v5, v3, v7

    :cond_3
    invoke-static {p0}, Landroidx/fragment/app/w0;->l(I)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Setting currentPlayTime to "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " for Animator "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " on operation "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-object p0, Landroidx/fragment/app/l;->a:Landroidx/fragment/app/l;

    invoke-virtual {p0, v0, v5, v6}, Landroidx/fragment/app/l;->b(Landroid/animation/AnimatorSet;J)V

    :cond_5
    return-void
.end method

.method public final e(Landroid/view/ViewGroup;)V
    .locals 8

    const-string v0, "container"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/j;->c:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/m;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/h;->b(Landroid/content/Context;)Lg5/l;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Lg5/l;->n:Ljava/lang/Object;

    check-cast v1, Landroid/animation/AnimatorSet;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Landroidx/fragment/app/j;->d:Landroid/animation/AnimatorSet;

    iget-object v6, v0, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/s1;

    iget-object v0, v6, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/l0;

    iget v1, v6, Landroidx/fragment/app/s1;->a:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_1
    move v5, v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :goto_2
    iget-object v4, v0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/fragment/app/j;->d:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    new-instance v2, Landroidx/fragment/app/i;

    move-object v7, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Landroidx/fragment/app/i;-><init>(Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/s1;Landroidx/fragment/app/j;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_3

    :cond_3
    move-object v7, p0

    :goto_3
    iget-object p0, v7, Landroidx/fragment/app/j;->d:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v4}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    :cond_4
    :goto_4
    return-void
.end method
