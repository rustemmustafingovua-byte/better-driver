.class public abstract Lf2/i3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sput-object v0, Lf2/i3;->a:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method public static final a(Lf2/a;Lr0/u;Lz0/d;)Lf2/g3;
    .locals 6

    sget-object v0, Lf2/q1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    invoke-static {v2, v0, v3}, Lpc/h;->a(IILw9/a;)Lw9/e;

    move-result-object v0

    sget-object v2, Lf2/v0;->x:Lt8/o;

    invoke-virtual {v2}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly8/h;

    invoke-static {v2}, Lu9/v;->a(Ly8/h;)Lz9/d;

    move-result-object v2

    new-instance v4, Landroidx/lifecycle/m0;

    const/4 v5, 0x4

    invoke-direct {v4, v0, v3, v5}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ly8/c;I)V

    const/4 v5, 0x3

    invoke-static {v2, v3, v3, v4, v5}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    new-instance v2, Landroidx/fragment/app/t;

    const/16 v4, 0xa

    invoke-direct {v2, v4, v0}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    sget-object v0, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v4, Ld1/p;->i:Ljava/lang/Object;

    invoke-static {v4, v2}, Lu8/m;->q0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    sput-object v2, Ld1/p;->i:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-static {}, Ld1/p;->a()V

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lf2/y;

    if-eqz v1, :cond_1

    check-cast v0, Lf2/y;

    goto :goto_2

    :cond_1
    :goto_1
    move-object v0, v3

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_1

    :goto_2
    if-nez v0, :cond_3

    new-instance v0, Lf2/y;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lr0/u;->j()Ly8/h;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lf2/y;-><init>(Landroid/content/Context;Ly8/h;)V

    invoke-virtual {v0}, Lf2/y;->getView()Landroid/view/View;

    move-result-object v1

    sget-object v2, Lf2/i3;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lf2/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-virtual {v0}, Lf2/y;->getView()Landroid/view/View;

    move-result-object p0

    const v1, 0x7f080096

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v2, p0, Lf2/g3;

    if-eqz v2, :cond_4

    move-object v3, p0

    check-cast v3, Lf2/g3;

    :cond_4
    if-nez v3, :cond_5

    new-instance v3, Lf2/g3;

    new-instance p0, Le2/f2;

    invoke-virtual {v0}, Lf2/y;->getRoot()Le2/g0;

    move-result-object v2

    invoke-direct {p0, v2}, Le2/f2;-><init>(Le2/g0;)V

    new-instance v2, Lr0/x;

    invoke-direct {v2, p1, p0}, Lr0/x;-><init>(Lr0/u;Le2/f2;)V

    invoke-direct {v3, v0, v2}, Lf2/g3;-><init>(Lf2/y;Lr0/x;)V

    invoke-virtual {v0}, Lf2/y;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_5
    invoke-virtual {v3, p2}, Lf2/g3;->f(Li9/e;)V

    invoke-virtual {v0}, Lf2/y;->getCoroutineContext()Ly8/h;

    move-result-object p0

    invoke-virtual {p1}, Lr0/u;->j()Ly8/h;

    move-result-object p2

    invoke-static {p0, p2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {p1}, Lr0/u;->j()Ly8/h;

    move-result-object p0

    invoke-virtual {v0, p0}, Lf2/y;->setCoroutineContext(Ly8/h;)V

    :cond_6
    new-instance p0, Lf2/h3;

    invoke-direct {p0, p1}, Lf2/h3;-><init>(Lr0/u;)V

    invoke-virtual {v0, p0}, Lf2/y;->setFrameEndScheduler$ui(Lf2/y1;)V

    return-object v3
.end method
