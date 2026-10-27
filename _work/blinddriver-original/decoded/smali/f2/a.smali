.class public abstract Lf2/a;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field public l:Ljava/lang/ref/WeakReference;

.field public m:Landroid/os/IBinder;

.field public n:Lf2/g3;

.field public o:Lr0/u;

.field public p:Lc5/d;

.field public q:Z

.field public r:Z

.field public s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    new-instance p1, Lf2/n2;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Lf2/n2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    new-instance v0, Lc2/c0;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lc2/c0;-><init>(I)V

    invoke-static {p0}, Lpc/h;->l(Landroid/view/View;)Lv3/a;

    move-result-object v1

    iget-object v1, v1, Lv3/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc5/d;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v0, v2}, Lc5/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v1, p0, Lf2/a;->p:Lc5/d;

    return-void
.end method

.method private static synthetic getDisposeViewCompositionStrategy$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getShowLayoutBounds$annotations()V
    .locals 0

    return-void
.end method

.method private final setParentContext(Lr0/u;)V
    .locals 1

    iget-object v0, p0, Lf2/a;->o:Lr0/u;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lf2/a;->o:Lr0/u;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-object v0, p0, Lf2/a;->l:Ljava/lang/ref/WeakReference;

    :cond_0
    iget-object p1, p0, Lf2/a;->n:Lf2/g3;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lf2/g3;->a()V

    iput-object v0, p0, Lf2/a;->n:Lf2/g3;

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lf2/a;->d()V

    :cond_1
    return-void
.end method

.method private final setPreviousAttachedWindowToken(Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lf2/a;->m:Landroid/os/IBinder;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lf2/a;->m:Landroid/os/IBinder;

    const/4 p1, 0x0

    iput-object p1, p0, Lf2/a;->l:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a(Lr0/q;I)V
.end method

.method public final addView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf2/a;->b()V

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final addView(Landroid/view/View;I)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lf2/a;->b()V

    .line 4
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public final addView(Landroid/view/View;II)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Lf2/a;->b()V

    .line 6
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 9
    invoke-virtual {p0}, Lf2/a;->b()V

    .line 10
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 7
    invoke-virtual {p0}, Lf2/a;->b()V

    .line 8
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf2/a;->b()V

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    return p0
.end method

.method public final addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 0

    .line 3
    invoke-virtual {p0}, Lf2/a;->b()V

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result p0

    return p0
.end method

.method public final b()V
    .locals 3

    iget-boolean v0, p0, Lf2/a;->r:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot add views to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; only Compose content is supported"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()V
    .locals 6

    iget-object v0, p0, Lf2/a;->n:Lf2/g3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lf2/a;->r:Z

    invoke-virtual {p0}, Lf2/a;->g()Lr0/u;

    move-result-object v2

    new-instance v3, Lc2/z;

    const/4 v4, 0x2

    invoke-direct {v3, v4, p0}, Lc2/z;-><init>(ILjava/lang/Object;)V

    new-instance v4, Lz0/d;

    const v5, -0x271bffc0

    invoke-direct {v4, v5, v1, v3}, Lz0/d;-><init>(IZLt8/e;)V

    invoke-static {p0, v2, v4}, Lf2/i3;->a(Lf2/a;Lr0/u;Lz0/d;)Lf2/g3;

    move-result-object v1

    iput-object v1, p0, Lf2/a;->n:Lf2/g3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lf2/a;->r:Z

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lf2/a;->r:Z

    throw v1

    :cond_0
    return-void
.end method

.method public e(IIIIZ)V
    .locals 2

    const/4 p5, 0x0

    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p3, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    sub-int/2addr p3, p1

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    sub-int/2addr p4, p0

    invoke-virtual {p5, v0, v1, p3, p4}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public f(II)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {v2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final g()Lr0/u;
    .locals 10

    iget-object v0, p0, Lf2/a;->o:Lr0/u;

    if-nez v0, :cond_1a

    invoke-static {p0}, Lf2/d3;->b(Landroid/view/View;)Lr0/u;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_0
    if-nez v0, :cond_1

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lf2/d3;->b(Landroid/view/View;)Lr0/u;

    move-result-object v0

    invoke-static {v1}, Lr5/u0;->n(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    instance-of v2, v0, Lr0/u1;

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Lr0/u1;

    iget-object v2, v2, Lr0/u1;->u:Lx9/l0;

    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr0/q1;

    sget-object v3, Lr0/q1;->m:Lr0/q1;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v1

    goto :goto_3

    :cond_3
    :goto_2
    move-object v2, v0

    :goto_3
    if-eqz v2, :cond_5

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lf2/a;->l:Ljava/lang/ref/WeakReference;

    goto :goto_4

    :cond_4
    move-object v0, v1

    :cond_5
    :goto_4
    if-nez v0, :cond_1a

    iget-object v0, p0, Lf2/a;->l:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr0/u;

    if-eqz v0, :cond_6

    instance-of v2, v0, Lr0/u1;

    if-eqz v2, :cond_7

    move-object v2, v0

    check-cast v2, Lr0/u1;

    iget-object v2, v2, Lr0/u1;->u:Lx9/l0;

    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr0/q1;

    sget-object v3, Lr0/q1;->m:Lr0/q1;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-lez v2, :cond_6

    goto :goto_5

    :cond_6
    move-object v0, v1

    :cond_7
    :goto_5
    if-nez v0, :cond_1a

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Cannot locate windowRecomposer; View "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not attached to a window"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v7, p0

    :goto_6
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_a

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x1020002

    if-ne v2, v3, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v7, v0

    move-object v0, v2

    goto :goto_6

    :cond_a
    :goto_7
    invoke-static {v7}, Lf2/d3;->b(Landroid/view/View;)Lr0/u;

    move-result-object v0

    if-nez v0, :cond_16

    sget-object v0, Lf2/v2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf2/u2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ly8/i;->l:Ly8/i;

    sget-object v2, Lf2/v0;->x:Lt8/o;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_b

    sget-object v2, Lf2/v0;->x:Lt8/o;

    invoke-virtual {v2}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly8/h;

    goto :goto_8

    :cond_b
    sget-object v2, Lf2/v0;->y:Lf2/t0;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly8/h;

    if-eqz v2, :cond_15

    :goto_8
    invoke-interface {v2, v0}, Ly8/h;->y(Ly8/h;)Ly8/h;

    move-result-object v2

    sget-object v3, Lr0/e;->n:Lr0/e;

    invoke-interface {v2, v3}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v3

    check-cast v3, Lf2/x0;

    const/4 v8, 0x0

    if-eqz v3, :cond_c

    new-instance v4, Lf2/x0;

    invoke-direct {v4, v3}, Lf2/x0;-><init>(Lf2/x0;)V

    iget-object v3, v4, Lf2/x0;->n:Ljava/lang/Object;

    check-cast v3, Lk4/h;

    iget-object v5, v3, Lk4/h;->b:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iput-boolean v8, v3, Lk4/h;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v5

    throw p0

    :cond_c
    move-object v4, v1

    :goto_9
    new-instance v6, Lj9/y;

    invoke-direct {v6}, Lj9/y;-><init>()V

    sget-object v3, Lf1/c;->A:Lf1/c;

    invoke-interface {v2, v3}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v3

    check-cast v3, Lf1/t;

    if-nez v3, :cond_d

    new-instance v3, Lf2/b2;

    invoke-direct {v3}, Lf2/b2;-><init>()V

    iput-object v3, v6, Lj9/y;->m:Ljava/lang/Object;

    :cond_d
    if-eqz v4, :cond_e

    move-object v0, v4

    :cond_e
    invoke-interface {v2, v0}, Ly8/h;->y(Ly8/h;)Ly8/h;

    move-result-object v0

    invoke-interface {v0, v3}, Ly8/h;->y(Ly8/h;)Ly8/h;

    move-result-object v0

    new-instance v5, Lr0/u1;

    invoke-direct {v5, v0}, Lr0/u1;-><init>(Ly8/h;)V

    iget-object v2, v5, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter v2

    const/4 v9, 0x1

    :try_start_1
    iput-boolean v9, v5, Lr0/u1;->t:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    invoke-static {v0}, Lu9/v;->a(Ly8/h;)Lz9/d;

    move-result-object v3

    invoke-static {v7}, Landroidx/lifecycle/t0;->e(Landroid/view/View;)Landroidx/lifecycle/v;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Landroidx/lifecycle/v;->getLifecycle()Landroidx/lifecycle/q;

    move-result-object v0

    goto :goto_a

    :cond_f
    move-object v0, v1

    :goto_a
    if-eqz v0, :cond_14

    new-instance v2, Lf2/w2;

    invoke-direct {v2, v7, v5}, Lf2/w2;-><init>(Landroid/view/View;Lr0/u1;)V

    invoke-virtual {v7, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    new-instance v2, Lf2/a3;

    invoke-direct/range {v2 .. v7}, Lf2/a3;-><init>(Lz9/d;Lf2/x0;Lr0/u1;Lj9/y;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/q;->a(Landroidx/lifecycle/u;)V

    const v0, 0x7f08002c

    invoke-virtual {v7, v0, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v7}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-string v2, "windowRecomposer cleanup"

    sget v3, Lv9/e;->a:I

    new-instance v3, Lv9/d;

    invoke-direct {v3, v0, v2, v8}, Lv9/d;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    iget-object v0, v3, Lv9/d;->q:Lv9/d;

    new-instance v2, Landroidx/lifecycle/i0;

    const/4 v3, 0x6

    invoke-direct {v2, v5, v7, v1, v3}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    const/4 v3, 0x2

    and-int/2addr v3, v9

    if-eqz v3, :cond_10

    sget-object v0, Ly8/i;->l:Ly8/i;

    :cond_10
    const/4 v3, 0x2

    and-int/2addr v3, v3

    if-eqz v3, :cond_11

    sget-object v3, Lu9/u;->l:Lu9/u;

    goto :goto_b

    :cond_11
    move-object v3, v1

    :goto_b
    sget-object v4, Ly8/i;->l:Ly8/i;

    invoke-static {v4, v0, v9}, Lu9/v;->j(Ly8/h;Ly8/h;Z)Ly8/h;

    move-result-object v0

    sget-object v4, Lu9/e0;->a:Lba/e;

    if-eq v0, v4, :cond_12

    sget-object v6, Ly8/d;->l:Ly8/d;

    invoke-interface {v0, v6}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v6

    if-nez v6, :cond_12

    invoke-interface {v0, v4}, Ly8/h;->y(Ly8/h;)Ly8/h;

    move-result-object v0

    :cond_12
    sget-object v4, Lu9/u;->m:Lu9/u;

    if-ne v3, v4, :cond_13

    new-instance v4, Lu9/d1;

    invoke-direct {v4, v0, v2}, Lu9/d1;-><init>(Ly8/h;Li9/e;)V

    goto :goto_c

    :cond_13
    new-instance v4, Lu9/j1;

    invoke-direct {v4, v0, v9}, Lu9/a;-><init>(Ly8/h;Z)V

    :goto_c
    invoke-virtual {v4, v3, v4, v2}, Lu9/a;->e0(Lu9/u;Lu9/a;Li9/e;)V

    new-instance v0, Lf2/n2;

    invoke-direct {v0, v9, v4}, Lf2/n2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_d

    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "ViewTreeLifecycleOwner not found from "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb2/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    monitor-exit v2

    throw p0

    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no AndroidUiDispatcher for this thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    instance-of v2, v0, Lr0/u1;

    if-eqz v2, :cond_19

    move-object v5, v0

    check-cast v5, Lr0/u1;

    :goto_d
    iget-object v0, v5, Lr0/u1;->u:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr0/q1;

    sget-object v2, Lr0/q1;->m:Lr0/q1;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_17

    move-object v1, v5

    :cond_17
    if-eqz v1, :cond_18

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lf2/a;->l:Ljava/lang/ref/WeakReference;

    :cond_18
    return-object v5

    :cond_19
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "root viewTreeParentCompositionContext is not a Recomposer"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    return-object v0
.end method

.method public final getAutoClearFocusBehavior-4UtRPd4()I
    .locals 1

    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lf2/d1;

    if-eqz v0, :cond_0

    check-cast p0, Lf2/d1;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    iget p0, p0, Lf2/d1;->a:I

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final getHasComposition()Z
    .locals 0

    iget-object p0, p0, Lf2/a;->n:Lf2/g3;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getShouldCreateCompositionOnAttachedToWindow()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getShowLayoutBounds()Z
    .locals 0

    iget-boolean p0, p0, Lf2/a;->q:Z

    return p0
.end method

.method public final isTransitionGroup()Z
    .locals 1

    iget-boolean v0, p0, Lf2/a;->s:Z

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lf2/a;->setPreviousAttachedWindowToken(Landroid/os/IBinder;)V

    invoke-virtual {p0}, Lf2/a;->getShouldCreateCompositionOnAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lf2/a;->d()V

    :cond_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    move v0, p5

    move p5, p1

    move p1, p2

    move p2, p3

    move p3, p4

    move p4, v0

    invoke-virtual/range {p0 .. p5}, Lf2/a;->e(IIIIZ)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    invoke-virtual {p0}, Lf2/a;->d()V

    invoke-virtual {p0, p1, p2}, Lf2/a;->f(II)V

    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_0
    return-void
.end method

.method public final setAutoClearFocusBehavior-17tfJxM(I)V
    .locals 1

    new-instance v0, Lf2/d1;

    invoke-direct {v0, p1}, Lf2/d1;-><init>(I)V

    const p1, 0x7f080030

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final setParentCompositionContext(Lr0/u;)V
    .locals 0

    invoke-direct {p0, p1}, Lf2/a;->setParentContext(Lr0/u;)V

    return-void
.end method

.method public final setShowLayoutBounds(Z)V
    .locals 1

    iput-boolean p1, p0, Lf2/a;->q:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Le2/q1;

    check-cast p0, Lf2/y;

    invoke-virtual {p0, p1}, Lf2/y;->setShowLayoutBounds(Z)V

    :cond_0
    return-void
.end method

.method public setTransitionGroup(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lf2/a;->s:Z

    return-void
.end method

.method public final setViewCompositionStrategy(Lf2/o2;)V
    .locals 3

    iget-object v0, p0, Lf2/a;->p:Lc5/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc5/d;->invoke()Ljava/lang/Object;

    :cond_0
    check-cast p1, Lf2/k0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lf2/n2;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Lf2/n2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    new-instance v0, Lc2/c0;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lc2/c0;-><init>(I)V

    invoke-static {p0}, Lpc/h;->l(Landroid/view/View;)Lv3/a;

    move-result-object v1

    iget-object v1, v1, Lv3/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc5/d;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v0, v2}, Lc5/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v1, p0, Lf2/a;->p:Lc5/d;

    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
