.class public final Lu/b0;
.super Lja/c;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lq3/f;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final n:Lu/k1;

.field public o:Z

.field public p:Z

.field public q:Lq3/x0;


# direct methods
.method public constructor <init>(Lu/k1;)V
    .locals 1

    iget-boolean v0, p1, Lu/k1;->s:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lja/c;-><init>(I)V

    iput-object p1, p0, Lu/b0;->n:Lu/k1;

    return-void
.end method


# virtual methods
.method public final a(Lq3/e0;)V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/b0;->o:Z

    iput-boolean v0, p0, Lu/b0;->p:Z

    iget-object v0, p0, Lu/b0;->q:Lq3/x0;

    iget-object p1, p1, Lq3/e0;->a:Lq3/d0;

    invoke-virtual {p1}, Lq3/d0;->b()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lq3/x0;->a:Lq3/u0;

    iget-object v1, p0, Lu/b0;->n:Lu/k1;

    iget-object v2, v1, Lu/k1;->r:Lu/i1;

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lq3/u0;->i(I)Ll3/b;

    move-result-object v4

    invoke-static {v4}, Lu/b;->v(Ll3/b;)Lu/c0;

    move-result-object v4

    invoke-virtual {v2, v4}, Lu/i1;->f(Lu/c0;)V

    iget-object v2, v1, Lu/k1;->q:Lu/i1;

    invoke-virtual {p1, v3}, Lq3/u0;->i(I)Ll3/b;

    move-result-object p1

    invoke-static {p1}, Lu/b;->v(Ll3/b;)Lu/c0;

    move-result-object p1

    invoke-virtual {v2, p1}, Lu/i1;->f(Lu/c0;)V

    invoke-static {v1, v0}, Lu/k1;->b(Lu/k1;Lq3/x0;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lu/b0;->q:Lq3/x0;

    return-void
.end method

.method public final b(Lq3/e0;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lu/b0;->o:Z

    iput-boolean p1, p0, Lu/b0;->p:Z

    return-void
.end method

.method public final c(Landroid/view/View;Lq3/x0;)Lq3/x0;
    .locals 5

    iput-object p2, p0, Lu/b0;->q:Lq3/x0;

    iget-object v0, p0, Lu/b0;->n:Lu/k1;

    iget-object v1, v0, Lu/k1;->q:Lu/i1;

    iget-object v2, p2, Lq3/x0;->a:Lq3/u0;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lq3/u0;->i(I)Ll3/b;

    move-result-object v4

    invoke-static {v4}, Lu/b;->v(Ll3/b;)Lu/c0;

    move-result-object v4

    invoke-virtual {v1, v4}, Lu/i1;->f(Lu/c0;)V

    iget-boolean v1, p0, Lu/b0;->o:Z

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_1

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lu/b0;->p:Z

    if-nez p0, :cond_1

    iget-object p0, v0, Lu/k1;->r:Lu/i1;

    invoke-virtual {v2, v3}, Lq3/u0;->i(I)Ll3/b;

    move-result-object p1

    invoke-static {p1}, Lu/b;->v(Ll3/b;)Lu/c0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu/i1;->f(Lu/c0;)V

    invoke-static {v0, p2}, Lu/k1;->b(Lu/k1;Lq3/x0;)V

    :cond_1
    :goto_0
    iget-boolean p0, v0, Lu/k1;->s:Z

    if-eqz p0, :cond_2

    sget-object p0, Lq3/x0;->b:Lq3/x0;

    return-object p0

    :cond_2
    return-object p2
.end method

.method public final d(Lq3/x0;Ljava/util/List;)Lq3/x0;
    .locals 0

    iget-object p0, p0, Lu/b0;->n:Lu/k1;

    invoke-static {p0, p1}, Lu/k1;->b(Lu/k1;Lq3/x0;)V

    iget-boolean p0, p0, Lu/k1;->s:Z

    if-eqz p0, :cond_0

    sget-object p0, Lq3/x0;->b:Lq3/x0;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final e(Lq3/e0;Lg5/l;)Lg5/l;
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lu/b0;->o:Z

    return-object p2
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final run()V
    .locals 5

    iget-boolean v0, p0, Lu/b0;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/b0;->o:Z

    iput-boolean v0, p0, Lu/b0;->p:Z

    iget-object v0, p0, Lu/b0;->q:Lq3/x0;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lu/b0;->n:Lu/k1;

    iget-object v2, v1, Lu/k1;->r:Lu/i1;

    const/16 v3, 0x8

    iget-object v4, v0, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {v4, v3}, Lq3/u0;->i(I)Ll3/b;

    move-result-object v3

    invoke-static {v3}, Lu/b;->v(Ll3/b;)Lu/c0;

    move-result-object v3

    invoke-virtual {v2, v3}, Lu/i1;->f(Lu/c0;)V

    invoke-static {v1, v0}, Lu/k1;->b(Lu/k1;Lq3/x0;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lu/b0;->q:Lq3/x0;

    :cond_0
    return-void
.end method
