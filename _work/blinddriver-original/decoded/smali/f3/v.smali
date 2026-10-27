.class public final Lf3/v;
.super Lb/q;
.source "SourceFile"


# instance fields
.field public p:Li9/a;

.field public q:Lf3/u;

.field public final r:Landroid/view/View;

.field public final s:Lf3/t;

.field public t:Z


# direct methods
.method public constructor <init>(Li9/a;Lf3/u;Landroid/view/View;Lb3/m;Lb3/c;Ljava/util/UUID;)V
    .locals 4

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p2, Lf3/u;->e:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x7f0c0000

    goto :goto_0

    :cond_0
    const v2, 0x7f0c0003

    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lb/q;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lf3/v;->p:Li9/a;

    iput-object p2, p0, Lf3/v;->q:Lf3/u;

    iput-object p3, p0, Lf3/v;->r:Landroid/view/View;

    const/16 p1, 0x8

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_6

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/Window;->requestFeature(I)Z

    const v0, 0x106000d

    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget-object v0, p0, Lf3/v;->q:Lf3/u;

    iget-boolean v0, v0, Lf3/u;->e:Z

    invoke-static {p2, v0}, Lwa/h;->u(Landroid/view/Window;Z)V

    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Landroid/view/Window;->setGravity(I)V

    iget-object v0, p0, Lf3/v;->q:Lf3/u;

    iget-boolean v0, v0, Lf3/u;->e:Z

    if-nez v0, :cond_2

    const v0, 0x10100

    invoke-virtual {p2, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v3, Lf3/m;->a:Lf3/m;

    invoke-virtual {v3, v0}, Lf3/m;->a(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_1

    sget-object v2, Lf3/n;->a:Lf3/n;

    invoke-virtual {v2, v0, v1}, Lf3/n;->b(Landroid/view/WindowManager$LayoutParams;I)V

    invoke-virtual {v2, v0, v1}, Lf3/n;->c(Landroid/view/WindowManager$LayoutParams;I)V

    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    new-instance v0, Lf3/t;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Lf3/t;-><init>(Landroid/content/Context;Landroid/view/Window;)V

    iget-object v2, p0, Lf3/v;->q:Lf3/u;

    iget-object v2, v2, Lf3/u;->f:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Dialog:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    const v2, 0x7f08003b

    invoke-virtual {v0, v2, p6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-interface {p5, p1}, Lb3/c;->V(F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setElevation(F)V

    new-instance p1, Lf2/q2;

    const/4 p5, 0x1

    invoke-direct {p1, p5}, Lf2/q2;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iput-object v0, p0, Lf3/v;->s:Lf3/t;

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_3

    check-cast p1, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    invoke-static {p1}, Lf3/v;->e(Landroid/view/ViewGroup;)V

    :cond_4
    invoke-virtual {p0, v0}, Lb/q;->setContentView(Landroid/view/View;)V

    invoke-static {p3}, Landroidx/lifecycle/t0;->e(Landroid/view/View;)Landroidx/lifecycle/v;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/lifecycle/t0;->i(Landroid/view/View;Landroidx/lifecycle/v;)V

    invoke-static {p3}, Landroidx/lifecycle/t0;->f(Landroid/view/View;)Landroidx/lifecycle/g1;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/lifecycle/t0;->j(Landroid/view/View;Landroidx/lifecycle/g1;)V

    invoke-static {p3}, Ll9/a;->n(Landroid/view/View;)Ln4/g;

    move-result-object p1

    invoke-static {v0, p1}, Ll9/a;->B(Landroid/view/View;Ln4/g;)V

    iget-object p1, p0, Lf3/v;->p:Li9/a;

    iget-object p2, p0, Lf3/v;->q:Lf3/u;

    invoke-virtual {p0, p1, p2, p4}, Lf3/v;->f(Li9/a;Lf3/u;Lb3/m;)V

    invoke-virtual {p0}, Lb/q;->a()Lb/h0;

    move-result-object p1

    new-instance p2, Lf3/a;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lf3/a;-><init>(Lf3/v;I)V

    const-string p3, "<this>"

    invoke-static {p1, p3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Lb/i0;

    invoke-direct {p3, p2}, Lb/i0;-><init>(Lf3/a;)V

    invoke-virtual {p0}, Lb/q;->getLifecycle()Landroidx/lifecycle/q;

    move-result-object p2

    move-object p4, p2

    check-cast p4, Landroidx/lifecycle/x;

    iget-object p4, p4, Landroidx/lifecycle/x;->c:Landroidx/lifecycle/p;

    sget-object p5, Landroidx/lifecycle/p;->l:Landroidx/lifecycle/p;

    if-ne p4, p5, :cond_5

    return-void

    :cond_5
    new-instance p4, Lb/c0;

    invoke-direct {p4, p3, p0}, Lb/c0;-><init>(Lb/b0;Landroidx/lifecycle/v;)V

    new-instance p0, Lb/a0;

    invoke-direct {p0, p3, p4}, Lb/a0;-><init>(Lb/b0;Lb/c0;)V

    iget-object p4, p3, Lb/b0;->a:Ljava/util/ArrayList;

    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lb/a0;->g(Z)V

    invoke-virtual {p1}, Lb/h0;->a()Lb/f0;

    move-result-object p4

    iget-object p4, p4, Lb/f0;->c:Lg5/i;

    invoke-static {p4, p0}, Lg5/i;->e(Lg5/i;Lh4/d;)V

    new-instance p4, Landroidx/lifecycle/h;

    invoke-direct {p4, p0, p1, p2}, Landroidx/lifecycle/h;-><init>(Lb/a0;Lb/h0;Landroidx/lifecycle/q;)V

    invoke-virtual {p2, p4}, Landroidx/lifecycle/q;->a(Landroidx/lifecycle/u;)V

    new-instance p0, Lb/d0;

    invoke-direct {p0, p2, p4}, Lb/d0;-><init>(Landroidx/lifecycle/q;Landroidx/lifecycle/h;)V

    iget-object p1, p3, Lb/b0;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Dialog has no window"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final e(Landroid/view/ViewGroup;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    instance-of v1, p0, Lf3/t;

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    invoke-static {v2}, Lf3/v;->e(Landroid/view/ViewGroup;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    return-void
.end method

.method public final f(Li9/a;Lf3/u;Lb3/m;)V
    .locals 6

    iput-object p1, p0, Lf3/v;->p:Li9/a;

    iput-object p2, p0, Lf3/v;->q:Lf3/u;

    iget-object p1, p2, Lf3/u;->c:Lf3/b0;

    iget-object v0, p0, Lf3/v;->r:Landroid/view/View;

    invoke-static {v0}, Lf3/k;->b(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    move v0, v2

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    const/16 v3, 0x2000

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    const/16 v0, -0x2001

    :goto_1
    invoke-virtual {p1, v0, v3}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_5

    if-ne p1, v2, :cond_4

    move p1, v2

    goto :goto_2

    :cond_4
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_5
    move p1, v1

    :goto_2
    iget-object p3, p0, Lf3/v;->s:Lf3/t;

    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutDirection(I)V

    iget-boolean p1, p2, Lf3/u;->e:Z

    iget-boolean v0, p2, Lf3/u;->d:Z

    iget-object v3, p3, Lf3/t;->t:Landroid/view/Window;

    iget-boolean v4, p3, Lf3/t;->x:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p3, Lf3/t;->v:Z

    if-ne v0, v4, :cond_7

    iget-boolean v4, p3, Lf3/t;->w:Z

    if-eq p1, v4, :cond_6

    goto :goto_3

    :cond_6
    move v4, v1

    goto :goto_4

    :cond_7
    :goto_3
    move v4, v2

    :goto_4
    iput-boolean v0, p3, Lf3/t;->v:Z

    iput-boolean p1, p3, Lf3/t;->w:Z

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    const/4 v5, -0x2

    if-eqz v0, :cond_8

    move v0, v5

    goto :goto_5

    :cond_8
    const/4 v0, -0x1

    :goto_5
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v4, :cond_9

    iget-boolean v4, p3, Lf3/t;->x:Z

    if-nez v4, :cond_a

    :cond_9
    invoke-virtual {v3, v0, v5}, Landroid/view/Window;->setLayout(II)V

    iput-boolean v2, p3, Lf3/t;->x:Z

    :cond_a
    iget-boolean p2, p2, Lf3/u;->b:Z

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_d

    if-eqz p1, :cond_b

    goto :goto_6

    :cond_b
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1f

    if-ge p1, p2, :cond_c

    const/16 v1, 0x10

    goto :goto_6

    :cond_c
    const/16 v1, 0x30

    :goto_6
    invoke-virtual {p0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_d
    return-void
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lf3/v;->q:Lf3/u;

    iget-boolean v0, v0, Lf3/u;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lf3/v;->p:Li9/a;

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Lf3/v;->q:Lf3/u;

    iget-boolean v1, v1, Lf3/u;->b:Z

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lf3/v;->s:Lf3/t;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-static {v5}, Ll9/a;->z(F)I

    move-result v5

    if-gt v7, v5, :cond_1

    if-gt v5, v6, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-static {v5}, Ll9/a;->z(F)I

    move-result v5

    if-gt v8, v5, :cond_1

    if-gt v5, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v2, :cond_2

    goto :goto_2

    :cond_2
    iput-boolean v3, p0, Lf3/v;->t:Z

    return v0

    :cond_3
    iget-boolean p1, p0, Lf3/v;->t:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lf3/v;->p:Li9/a;

    invoke-interface {p1}, Li9/a;->invoke()Ljava/lang/Object;

    iput-boolean v3, p0, Lf3/v;->t:Z

    return v4

    :cond_4
    iput-boolean v4, p0, Lf3/v;->t:Z

    return v4

    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_7

    if-eq p1, v4, :cond_7

    if-eq p1, v2, :cond_7

    :cond_6
    :goto_2
    return v0

    :cond_7
    iput-boolean v3, p0, Lf3/v;->t:Z

    return v0
.end method
