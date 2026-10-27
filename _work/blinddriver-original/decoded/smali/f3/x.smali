.class public final Lf3/x;
.super Lf2/a;
.source "SourceFile"


# instance fields
.field public final A:Landroid/view/WindowManager$LayoutParams;

.field public B:Lf3/z;

.field public C:Lb3/m;

.field public final D:Lr0/e1;

.field public final E:Lr0/e1;

.field public F:Lb3/k;

.field public final G:Lr0/d0;

.field public final H:Landroid/graphics/Rect;

.field public final I:Ld1/b0;

.field public J:Lf3/o;

.field public final K:Lr0/e1;

.field public L:Z

.field public final M:[I

.field public t:Li9/a;

.field public u:Lf3/a0;

.field public v:Ljava/lang/String;

.field public final w:Landroid/view/View;

.field public final x:Z

.field public final y:Lf3/y;

.field public final z:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Li9/a;Lf3/a0;Ljava/lang/String;Landroid/view/View;Lb3/c;Lf3/z;Ljava/util/UUID;Z)V
    .locals 2

    new-instance v0, Lf3/y;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lf2/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lf3/x;->t:Li9/a;

    iput-object p2, p0, Lf3/x;->u:Lf3/a0;

    iput-object p3, p0, Lf3/x;->v:Ljava/lang/String;

    iput-object p4, p0, Lf3/x;->w:Landroid/view/View;

    iput-boolean p8, p0, Lf3/x;->x:Z

    iput-object v0, p0, Lf3/x;->y:Lf3/y;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p1, p2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lf3/x;->z:Landroid/view/WindowManager;

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const p2, 0x800033

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object p2, p0, Lf3/x;->u:Lf3/a0;

    invoke-static {p4}, Lf3/k;->b(Landroid/view/View;)Z

    move-result p3

    iget-boolean p8, p2, Lf3/a0;->b:Z

    iget p2, p2, Lf3/a0;->a:I

    if-eqz p8, :cond_0

    if-eqz p3, :cond_0

    or-int/lit16 p2, p2, 0x2000

    goto :goto_0

    :cond_0
    if-eqz p8, :cond_1

    if-nez p3, :cond_1

    and-int/lit16 p2, p2, -0x2001

    :cond_1
    :goto_0
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 p2, 0x3ea

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p4}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object p2

    iput-object p2, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 p2, -0x2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 p2, -0x3

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0b0020

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lf3/x;->A:Landroid/view/WindowManager$LayoutParams;

    iput-object p6, p0, Lf3/x;->B:Lf3/z;

    sget-object p1, Lb3/m;->l:Lb3/m;

    iput-object p1, p0, Lf3/x;->C:Lb3/m;

    const/4 p1, 0x0

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p2

    iput-object p2, p0, Lf3/x;->D:Lr0/e1;

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Lf3/x;->E:Lr0/e1;

    new-instance p1, Lc2/l0;

    const/16 p2, 0x9

    invoke-direct {p1, p2, p0}, Lc2/l0;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Lr0/r;->r(Li9/a;)Lr0/d0;

    move-result-object p1

    iput-object p1, p0, Lf3/x;->G:Lr0/d0;

    const/16 p1, 0x8

    int-to-float p1, p1

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lf3/x;->H:Landroid/graphics/Rect;

    new-instance p2, Ld1/b0;

    new-instance p3, Lf3/h;

    const/4 p6, 0x2

    invoke-direct {p3, p0, p6}, Lf3/h;-><init>(Lf3/x;I)V

    invoke-direct {p2, p3}, Ld1/b0;-><init>(Li9/c;)V

    iput-object p2, p0, Lf3/x;->I:Ld1/b0;

    const p2, 0x1020002

    invoke-virtual {p0, p2}, Landroid/view/View;->setId(I)V

    invoke-static {p4}, Landroidx/lifecycle/t0;->e(Landroid/view/View;)Landroidx/lifecycle/v;

    move-result-object p2

    invoke-static {p0, p2}, Landroidx/lifecycle/t0;->i(Landroid/view/View;Landroidx/lifecycle/v;)V

    invoke-static {p4}, Landroidx/lifecycle/t0;->f(Landroid/view/View;)Landroidx/lifecycle/g1;

    move-result-object p2

    invoke-static {p0, p2}, Landroidx/lifecycle/t0;->j(Landroid/view/View;Landroidx/lifecycle/g1;)V

    invoke-static {p4}, Ll9/a;->n(Landroid/view/View;)Ln4/g;

    move-result-object p2

    invoke-static {p0, p2}, Ll9/a;->B(Landroid/view/View;Ln4/g;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Popup:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f08003b

    invoke-virtual {p0, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-interface {p5, p1}, Lb3/c;->V(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    new-instance p1, Lf2/q2;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lf2/q2;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    sget-object p1, Lf3/s;->a:Lz0/d;

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Lf3/x;->K:Lr0/e1;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lf3/x;->M:[I

    return-void
.end method

.method private final getContent()Li9/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li9/e;"
        }
    .end annotation

    iget-object p0, p0, Lf3/x;->K:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li9/e;

    return-object p0
.end method

.method public static synthetic getParams$ui$annotations()V
    .locals 0

    return-void
.end method

.method private final getParentLayoutCoordinates()Lc2/u;
    .locals 0

    iget-object p0, p0, Lf3/x;->E:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc2/u;

    return-object p0
.end method

.method private final getVisibleDisplayBounds()Lb3/k;
    .locals 4

    iget-object v0, p0, Lf3/x;->y:Lf3/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lf3/x;->w:Landroid/view/View;

    iget-object p0, p0, Lf3/x;->H:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    new-instance v0, Lb3/k;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, p0}, Lb3/k;-><init>(IIII)V

    return-object v0
.end method

.method public static final synthetic h(Lf3/x;)Lc2/u;
    .locals 0

    invoke-direct {p0}, Lf3/x;->getParentLayoutCoordinates()Lc2/u;

    move-result-object p0

    return-object p0
.end method

.method private final setContent(Li9/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li9/e;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lf3/x;->K:Lr0/e1;

    invoke-virtual {p0, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setParentLayoutCoordinates(Lc2/u;)V
    .locals 0

    iget-object p0, p0, Lf3/x;->E:Lr0/e1;

    invoke-virtual {p0, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lr0/q;I)V
    .locals 5

    const v0, -0x331e2520

    invoke-virtual {p1, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p1, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p2

    and-int/lit8 v2, v0, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v1, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    and-int/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lf3/x;->getContent()Li9/e;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_2
    invoke-virtual {p1}, Lr0/q;->u()Lr0/n1;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Lc2/z;

    const/4 v1, 0x6

    invoke-direct {v0, p0, p2, v1}, Lc2/z;-><init>(Lf2/a;II)V

    iput-object v0, p1, Lr0/n1;->d:Li9/e;

    :cond_3
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Lf3/x;->u:Lf3/a0;

    iget-boolean v0, v0, Lf3/a0;->c:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_5

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    return v2

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_5

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p0, p0, Lf3/x;->t:Li9/a;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    :cond_4
    return v2

    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final e(IIIIZ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lf2/a;->e(IIIIZ)V

    iget-object p1, p0, Lf3/x;->u:Lf3/a0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget-object p3, p0, Lf3/x;->A:Landroid/view/WindowManager$LayoutParams;

    iput p2, p3, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p3, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object p1, p0, Lf3/x;->y:Lf3/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lf3/x;->z:Landroid/view/WindowManager;

    invoke-interface {p1, p0, p3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final f(II)V
    .locals 1

    iget-object p1, p0, Lf3/x;->u:Lf3/a0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lf3/x;->getVisibleDisplayBounds()Lb3/k;

    move-result-object p1

    invoke-virtual {p1}, Lb3/k;->d()I

    move-result p2

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1}, Lb3/k;->b()I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p2, p1}, Lf2/a;->f(II)V

    return-void
.end method

.method public final getCanCalculatePosition()Z
    .locals 0

    iget-object p0, p0, Lf3/x;->G:Lr0/d0;

    invoke-virtual {p0}, Lr0/d0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final getParams$ui()Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lf3/x;->A:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public final getParentLayoutDirection()Lb3/m;
    .locals 0

    iget-object p0, p0, Lf3/x;->C:Lb3/m;

    return-object p0
.end method

.method public final getPopupContentSize-bOM6tXw()Lb3/l;
    .locals 0

    iget-object p0, p0, Lf3/x;->D:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb3/l;

    return-object p0
.end method

.method public final getPositionProvider()Lf3/z;
    .locals 0

    iget-object p0, p0, Lf3/x;->B:Lf3/z;

    return-object p0
.end method

.method public getShouldCreateCompositionOnAttachedToWindow()Z
    .locals 0

    iget-boolean p0, p0, Lf3/x;->L:Z

    return p0
.end method

.method public getSubCompositionView()Lf2/a;
    .locals 0

    return-object p0
.end method

.method public final getTestTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf3/x;->v:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic getViewRoot()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final i(Lr0/u;Li9/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Lf2/a;->setParentCompositionContext(Lr0/u;)V

    invoke-direct {p0, p2}, Lf3/x;->setContent(Li9/e;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lf3/x;->L:Z

    return-void
.end method

.method public final j(Li9/a;Lf3/a0;Ljava/lang/String;Lb3/m;)V
    .locals 0

    iput-object p1, p0, Lf3/x;->t:Li9/a;

    iput-object p3, p0, Lf3/x;->v:Ljava/lang/String;

    iget-object p1, p0, Lf3/x;->u:Lf3/a0;

    invoke-static {p1, p2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lf3/x;->u:Lf3/a0;

    iget-object p1, p0, Lf3/x;->w:Landroid/view/View;

    invoke-static {p1}, Lf3/k;->b(Landroid/view/View;)Z

    move-result p1

    iget-boolean p3, p2, Lf3/a0;->b:Z

    iget p2, p2, Lf3/a0;->a:I

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    or-int/lit16 p2, p2, 0x2000

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    if-nez p1, :cond_2

    and-int/lit16 p2, p2, -0x2001

    :cond_2
    :goto_0
    iget-object p1, p0, Lf3/x;->A:Landroid/view/WindowManager$LayoutParams;

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object p2, p0, Lf3/x;->y:Lf3/y;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lf3/x;->z:Landroid/view/WindowManager;

    invoke-interface {p2, p0, p1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_4
    const/4 p2, 0x0

    :goto_2
    invoke-super {p0, p2}, Landroid/view/View;->setLayoutDirection(I)V

    return-void
.end method

.method public final k()V
    .locals 10

    invoke-direct {p0}, Lf3/x;->getParentLayoutCoordinates()Lc2/u;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lc2/u;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Lc2/u;->o()J

    move-result-wide v1

    iget-boolean v3, p0, Lf3/x;->x:Z

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v0, v4, v5}, Lc2/u;->A(J)J

    move-result-wide v3

    goto :goto_1

    :cond_2
    invoke-interface {v0, v4, v5}, Lc2/u;->e(J)J

    move-result-wide v3

    :goto_1
    const/16 v0, 0x20

    shr-long v5, v3, v0

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const-wide v6, 0xffffffffL

    and-long/2addr v3, v6

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v4, v5

    shl-long/2addr v4, v0

    int-to-long v8, v3

    and-long/2addr v6, v8

    or-long v3, v4, v6

    invoke-static {v3, v4, v1, v2}, Lwa/h;->b(JJ)Lb3/k;

    move-result-object v0

    iget-object v1, p0, Lf3/x;->F:Lb3/k;

    invoke-virtual {v0, v1}, Lb3/k;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iput-object v0, p0, Lf3/x;->F:Lb3/k;

    invoke-virtual {p0}, Lf3/x;->m()V

    :cond_3
    :goto_2
    return-void
.end method

.method public final l(Lc2/u;)V
    .locals 0

    invoke-direct {p0, p1}, Lf3/x;->setParentLayoutCoordinates(Lc2/u;)V

    invoke-virtual {p0}, Lf3/x;->k()V

    return-void
.end method

.method public final m()V
    .locals 13

    iget-object v3, p0, Lf3/x;->F:Lb3/k;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lf3/x;->getPopupContentSize-bOM6tXw()Lb3/l;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-wide v6, v0, Lb3/l;->a:J

    invoke-direct {p0}, Lf3/x;->getVisibleDisplayBounds()Lb3/k;

    move-result-object v0

    invoke-virtual {v0}, Lb3/k;->d()I

    move-result v1

    invoke-virtual {v0}, Lb3/k;->b()I

    move-result v0

    int-to-long v1, v1

    const/16 v8, 0x20

    shl-long/2addr v1, v8

    int-to-long v4, v0

    const-wide v9, 0xffffffffL

    and-long/2addr v4, v9

    or-long/2addr v4, v1

    new-instance v1, Lj9/x;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-wide/16 v11, 0x0

    iput-wide v11, v1, Lj9/x;->l:J

    sget-object v11, Lf3/b;->r:Lf3/b;

    new-instance v0, Lf3/w;

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lf3/w;-><init>(Lj9/x;Lf3/x;Lb3/k;JJ)V

    iget-object p0, v2, Lf3/x;->I:Ld1/b0;

    invoke-virtual {p0, v2, v11, v0}, Ld1/b0;->c(Ljava/lang/Object;Li9/c;Li9/a;)V

    iget-wide v0, v1, Lj9/x;->l:J

    shr-long v6, v0, v8

    long-to-int p0, v6

    iget-object v3, v2, Lf3/x;->A:Landroid/view/WindowManager$LayoutParams;

    iput p0, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    and-long/2addr v0, v9

    long-to-int p0, v0

    iput p0, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p0, v2, Lf3/x;->u:Lf3/a0;

    iget-boolean p0, p0, Lf3/a0;->e:Z

    iget-object v0, v2, Lf3/x;->y:Lf3/y;

    if-eqz p0, :cond_1

    shr-long v6, v4, v8

    long-to-int p0, v6

    and-long/2addr v4, v9

    long-to-int v1, v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, p0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    filled-new-array {v4}, [Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p0}, Lg5/f;->G([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v2, Lf3/x;->z:Landroid/view/WindowManager;

    invoke-interface {p0, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Lf2/a;->onAttachedToWindow()V

    iget-object v0, p0, Lf3/x;->I:Ld1/b0;

    invoke-virtual {v0}, Ld1/b0;->d()V

    iget-object v0, p0, Lf3/x;->u:Lf3/a0;

    iget-boolean v0, v0, Lf3/a0;->c:Z

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf3/x;->J:Lf3/o;

    if-nez v0, :cond_1

    iget-object v0, p0, Lf3/x;->t:Li9/a;

    new-instance v1, Lf3/o;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lf3/o;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lf3/x;->J:Lf3/o;

    :cond_1
    iget-object v0, p0, Lf3/x;->J:Lf3/o;

    invoke-static {p0, v0}, Lf3/p;->d(Lf3/x;Lf3/o;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lf3/x;->I:Ld1/b0;

    iget-object v1, v0, Ld1/b0;->h:Lb/e0;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lb/e0;->c()V

    :cond_0
    invoke-virtual {v0}, Ld1/b0;->a()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lf3/x;->J:Lf3/o;

    invoke-static {p0, v0}, Lf3/p;->e(Lf3/x;Lf3/o;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lf3/x;->J:Lf3/o;

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lf3/x;->u:Lf3/a0;

    iget-boolean v0, v0, Lf3/a0;->d:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-gez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    :cond_1
    iget-object p0, p0, Lf3/x;->t:Li9/a;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    return v0

    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    iget-object p0, p0, Lf3/x;->t:Li9/a;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    :cond_3
    return v0

    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setLayoutDirection(I)V
    .locals 0

    return-void
.end method

.method public final setParentLayoutDirection(Lb3/m;)V
    .locals 0

    iput-object p1, p0, Lf3/x;->C:Lb3/m;

    return-void
.end method

.method public final setPopupContentSize-fhxjrPA(Lb3/l;)V
    .locals 0

    iget-object p0, p0, Lf3/x;->D:Lr0/e1;

    invoke-virtual {p0, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPositionProvider(Lf3/z;)V
    .locals 0

    iput-object p1, p0, Lf3/x;->B:Lf3/z;

    return-void
.end method

.method public final setTestTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lf3/x;->v:Ljava/lang/String;

    return-void
.end method
