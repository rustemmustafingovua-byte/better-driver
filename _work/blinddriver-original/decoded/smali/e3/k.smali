.class public abstract Le3/k;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lr0/h;
.implements Le2/r1;
.implements Lq3/f;


# instance fields
.field public A:Lq3/x0;

.field public B:Li9/c;

.field public final C:Le3/j;

.field public final D:Le3/j;

.field public E:Li9/c;

.field public final F:[I

.field public G:I

.field public H:I

.field public final I:Lmb/q;

.field public J:Z

.field public final K:Le2/g0;

.field public final l:Lx1/d;

.field public final m:Landroid/view/View;

.field public final n:Le2/q1;

.field public o:Li9/a;

.field public p:Z

.field public q:Li9/a;

.field public r:Li9/a;

.field public s:Lf1/r;

.field public t:Li9/c;

.field public u:Lb3/c;

.field public v:Li9/c;

.field public w:Landroidx/lifecycle/v;

.field public x:Ln4/g;

.field public final y:[I

.field public z:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr0/p;ILx1/d;Landroid/view/View;Le2/q1;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Le3/k;->l:Lx1/d;

    iput-object p5, p0, Le3/k;->m:Landroid/view/View;

    iput-object p6, p0, Le3/k;->n:Le2/q1;

    sget-object p1, Lf2/d3;->a:Ljava/util/LinkedHashMap;

    const p1, 0x7f08002c

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p2, Le3/b;

    move-object p3, p0

    check-cast p3, Le3/z;

    invoke-direct {p2, p3, p1}, Le3/b;-><init>(Landroid/view/ViewGroup;I)V

    invoke-static {p0, p2}, Lq3/q;->d(Landroid/view/View;Lja/c;)V

    invoke-static {p0, p0}, Lq3/m;->b(Landroid/view/View;Lq3/f;)V

    sget-object p2, Le3/i;->o:Le3/i;

    iput-object p2, p0, Le3/k;->o:Li9/a;

    sget-object p2, Le3/i;->n:Le3/i;

    iput-object p2, p0, Le3/k;->q:Li9/a;

    sget-object p2, Le3/i;->m:Le3/i;

    iput-object p2, p0, Le3/k;->r:Li9/a;

    sget-object p2, Lf1/o;->a:Lf1/o;

    iput-object p2, p0, Le3/k;->s:Lf1/r;

    invoke-static {}, Lpc/h;->b()Lb3/d;

    move-result-object p2

    iput-object p2, p0, Le3/k;->u:Lb3/c;

    const/4 p2, 0x2

    new-array p5, p2, [I

    iput-object p5, p0, Le3/k;->y:[I

    const-wide/16 p5, 0x0

    iput-wide p5, p0, Le3/k;->z:J

    new-instance p5, Le3/j;

    const/4 p6, 0x1

    invoke-direct {p5, p3, p6}, Le3/j;-><init>(Le3/z;I)V

    iput-object p5, p0, Le3/k;->C:Le3/j;

    new-instance p5, Le3/j;

    invoke-direct {p5, p3, p1}, Le3/j;-><init>(Le3/z;I)V

    iput-object p5, p0, Le3/k;->D:Le3/j;

    new-array p5, p2, [I

    iput-object p5, p0, Le3/k;->F:[I

    const/high16 p5, -0x80000000

    iput p5, p0, Le3/k;->G:I

    iput p5, p0, Le3/k;->H:I

    new-instance p5, Lmb/q;

    const/16 v0, 0xf

    invoke-direct {p5, v0}, Lmb/q;-><init>(I)V

    iput-object p5, p0, Le3/k;->I:Lmb/q;

    new-instance p5, Le2/g0;

    const/4 v0, 0x3

    invoke-direct {p5, v0}, Le2/g0;-><init>(I)V

    iput-object p3, p5, Le2/g0;->A:Le3/z;

    invoke-static {p4}, Lx1/f;->a(Lx1/d;)Lf1/r;

    move-result-object p4

    sget-object v1, Le3/c;->o:Le3/c;

    invoke-static {p4, p6, v1}, Lm2/n;->a(Lf1/r;ZLi9/c;)Lf1/r;

    move-result-object p4

    new-instance v1, Ly1/a0;

    invoke-direct {v1}, Ly1/a0;-><init>()V

    new-instance v2, Le3/e;

    invoke-direct {v2, p3, p2}, Le3/e;-><init>(Le3/z;I)V

    iput-object v2, v1, Ly1/a0;->a:Le3/e;

    new-instance v2, Lb0/g2;

    invoke-direct {v2}, Lb0/g2;-><init>()V

    iget-object v3, v1, Ly1/a0;->b:Lb0/g2;

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    iput-object v4, v3, Lb0/g2;->m:Ljava/lang/Object;

    :cond_0
    iput-object v2, v1, Ly1/a0;->b:Lb0/g2;

    iput-object v1, v2, Lb0/g2;->m:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Le3/k;->setOnRequestDisallowInterceptTouchEvent$ui(Li9/c;)V

    invoke-interface {p4, v1}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p4

    new-instance v1, Le2/i0;

    invoke-direct {v1, p3, p5, p3, p6}, Le2/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p4, v1}, Lj1/g;->d(Lf1/r;Li9/c;)Lf1/r;

    move-result-object p4

    new-instance v1, Le3/d;

    invoke-direct {v1, p3, p5, p2}, Le3/d;-><init>(Le3/z;Le2/g0;I)V

    invoke-static {p4, v1}, Lc2/x;->m(Lf1/r;Li9/c;)Lf1/r;

    move-result-object p2

    new-instance p4, Le3/p;

    new-instance v1, Le3/e;

    invoke-direct {v1, p3, p6}, Le3/e;-><init>(Le3/z;I)V

    invoke-direct {p4, v1}, Le3/p;-><init>(Le3/e;)V

    invoke-interface {p2, p4}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p2

    iget-object p4, p0, Le3/k;->s:Lf1/r;

    invoke-interface {p4, p2}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p4

    invoke-virtual {p5, p4}, Le2/g0;->f0(Lf1/r;)V

    new-instance p4, Lc5/f;

    invoke-direct {p4, p6, p5, p2}, Lc5/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p4, p0, Le3/k;->t:Li9/c;

    iget-object p2, p0, Le3/k;->u:Lb3/c;

    invoke-virtual {p5, p2}, Le2/g0;->b0(Lb3/c;)V

    new-instance p2, Landroidx/fragment/app/t;

    invoke-direct {p2, v0, p5}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, Le3/k;->v:Li9/c;

    new-instance p2, Le3/d;

    invoke-direct {p2, p3, p5, p1}, Le3/d;-><init>(Le3/z;Le2/g0;I)V

    iput-object p2, p5, Le2/g0;->Y:Le3/d;

    new-instance p2, Le3/e;

    invoke-direct {p2, p3, p1}, Le3/e;-><init>(Le3/z;I)V

    iput-object p2, p5, Le2/g0;->Z:Le3/e;

    new-instance p1, Le3/f;

    invoke-direct {p1, p3, p5}, Le3/f;-><init>(Le3/z;Le2/g0;)V

    invoke-virtual {p5, p1}, Le2/g0;->e0(Lc2/r0;)V

    iput-object p5, p0, Le3/k;->K:Le2/g0;

    return-void
.end method

.method public static final synthetic d(Le3/z;)Le2/s1;
    .locals 0

    invoke-direct {p0}, Le3/k;->getSnapshotObserver()Le2/s1;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Le3/z;III)I
    .locals 1

    const/high16 p0, 0x40000000    # 2.0f

    if-gez p3, :cond_3

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    const v0, 0x7fffffff

    if-ne p3, p1, :cond_1

    if-eq p2, v0, :cond_1

    const/high16 p0, -0x80000000

    invoke-static {p2, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    :cond_1
    const/4 p1, -0x1

    if-ne p3, p1, :cond_2

    if-eq p2, v0, :cond_2

    invoke-static {p2, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    invoke-static {p0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    :cond_3
    :goto_0
    invoke-static {p3, p1, p2}, Lg6/c1;->f(III)I

    move-result p1

    invoke-static {p1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method public static f(Ll3/b;IIII)Ll3/b;
    .locals 2

    iget v0, p0, Ll3/b;->a:I

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    if-gez v0, :cond_0

    move v0, p1

    :cond_0
    iget v1, p0, Ll3/b;->b:I

    sub-int/2addr v1, p2

    if-gez v1, :cond_1

    move v1, p1

    :cond_1
    iget p2, p0, Ll3/b;->c:I

    sub-int/2addr p2, p3

    if-gez p2, :cond_2

    move p2, p1

    :cond_2
    iget p0, p0, Ll3/b;->d:I

    sub-int/2addr p0, p4

    if-gez p0, :cond_3

    goto :goto_0

    :cond_3
    move p1, p0

    :goto_0
    invoke-static {v0, v1, p2, p1}, Ll3/b;->b(IIII)Ll3/b;

    move-result-object p0

    return-object p0
.end method

.method private final getSnapshotObserver()Le2/s1;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Expected AndroidViewHolder to be attached when observing reads."

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Le3/k;->n:Le2/q1;

    check-cast p0, Lf2/y;

    invoke-virtual {p0}, Lf2/y;->getSnapshotObserver()Le2/s1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Le3/k;->r:Li9/a;

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Le3/k;->q:Li9/a;

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    return-void
.end method

.method public final c(Landroid/view/View;Lq3/x0;)Lq3/x0;
    .locals 0

    new-instance p1, Lq3/x0;

    invoke-direct {p1, p2}, Lq3/x0;-><init>(Lq3/x0;)V

    iput-object p1, p0, Le3/k;->A:Lq3/x0;

    invoke-virtual {p0, p2}, Le3/k;->g(Lq3/x0;)Lq3/x0;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lq3/x0;)Lq3/x0;
    .locals 13

    iget-object v0, p1, Lq3/x0;->a:Lq3/u0;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lq3/u0;->i(I)Ll3/b;

    move-result-object v1

    sget-object v2, Ll3/b;->e:Ll3/b;

    invoke-virtual {v1, v2}, Ll3/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, -0x9

    invoke-virtual {v0, v1}, Lq3/u0;->j(I)Ll3/b;

    move-result-object v1

    invoke-virtual {v1, v2}, Ll3/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lq3/u0;->h()Lq3/c;

    move-result-object v0

    if-eqz v0, :cond_6

    :cond_0
    iget-object p0, p0, Le3/k;->K:Le2/g0;

    iget-object p0, p0, Le2/g0;->R:Le2/c1;

    iget-object p0, p0, Le2/c1;->c:Le2/s;

    iget-object v0, p0, Le2/s;->c0:Le2/b2;

    iget-boolean v0, v0, Lf1/q;->y:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Le2/h1;->R(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lr5/h1;->D(J)J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long v3, v0, v2

    long-to-int v3, v3

    const/4 v4, 0x0

    if-gez v3, :cond_2

    move v3, v4

    :cond_2
    const-wide v5, 0xffffffffL

    and-long/2addr v0, v5

    long-to-int v0, v0

    if-gez v0, :cond_3

    move v0, v4

    :cond_3
    invoke-static {p0}, Lc2/x;->h(Lc2/u;)Lc2/u;

    move-result-object v1

    invoke-interface {v1}, Lc2/u;->o()J

    move-result-wide v7

    shr-long v9, v7, v2

    long-to-int v1, v9

    and-long/2addr v7, v5

    long-to-int v7, v7

    iget-wide v8, p0, Lc2/f1;->n:J

    shr-long v10, v8, v2

    long-to-int v10, v10

    and-long/2addr v8, v5

    long-to-int v8, v8

    int-to-float v9, v10

    int-to-float v8, v8

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    int-to-long v9, v9

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v11, v8

    shl-long v8, v9, v2

    and-long v10, v11, v5

    or-long/2addr v8, v10

    invoke-virtual {p0, v8, v9}, Le2/h1;->R(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lr5/h1;->D(J)J

    move-result-wide v8

    shr-long v10, v8, v2

    long-to-int p0, v10

    sub-int/2addr v1, p0

    if-gez v1, :cond_4

    move v1, v4

    :cond_4
    and-long/2addr v5, v8

    long-to-int p0, v5

    sub-int/2addr v7, p0

    if-gez v7, :cond_5

    goto :goto_0

    :cond_5
    move v4, v7

    :goto_0
    if-nez v3, :cond_7

    if-nez v0, :cond_7

    if-nez v1, :cond_7

    if-nez v4, :cond_7

    :cond_6
    :goto_1
    return-object p1

    :cond_7
    iget-object p0, p1, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {p0, v3, v0, v1, v4}, Lq3/u0;->r(IIII)Lq3/x0;

    move-result-object p0

    return-object p0
.end method

.method public final gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Le3/k;->F:[I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x0

    aget v4, v1, v2

    aget v5, v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int v6, v2, v4

    aget v1, v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int v7, p0, v1

    sget-object v8, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDensity()Lb3/c;
    .locals 0

    iget-object p0, p0, Le3/k;->u:Lb3/c;

    return-object p0
.end method

.method public final getInteropView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Le3/k;->m:Landroid/view/View;

    return-object p0
.end method

.method public final getLayoutNode()Le2/g0;
    .locals 0

    iget-object p0, p0, Le3/k;->K:Le2/g0;

    return-object p0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    iget-object p0, p0, Le3/k;->m:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    return-object p0
.end method

.method public final getLifecycleOwner()Landroidx/lifecycle/v;
    .locals 0

    iget-object p0, p0, Le3/k;->w:Landroidx/lifecycle/v;

    return-object p0
.end method

.method public final getModifier()Lf1/r;
    .locals 0

    iget-object p0, p0, Le3/k;->s:Lf1/r;

    return-object p0
.end method

.method public getNestedScrollAxes()I
    .locals 0

    iget-object p0, p0, Le3/k;->I:Lmb/q;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public final getOnDensityChanged$ui()Li9/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li9/c;"
        }
    .end annotation

    iget-object p0, p0, Le3/k;->v:Li9/c;

    return-object p0
.end method

.method public final getOnModifierChanged$ui()Li9/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li9/c;"
        }
    .end annotation

    iget-object p0, p0, Le3/k;->t:Li9/c;

    return-object p0
.end method

.method public final getOnRequestDisallowInterceptTouchEvent$ui()Li9/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li9/c;"
        }
    .end annotation

    iget-object p0, p0, Le3/k;->E:Li9/c;

    return-object p0
.end method

.method public final getRelease()Li9/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li9/a;"
        }
    .end annotation

    iget-object p0, p0, Le3/k;->r:Li9/a;

    return-object p0
.end method

.method public final getReset()Li9/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li9/a;"
        }
    .end annotation

    iget-object p0, p0, Le3/k;->q:Li9/a;

    return-object p0
.end method

.method public final getSavedStateRegistryOwner()Ln4/g;
    .locals 0

    iget-object p0, p0, Le3/k;->x:Ln4/g;

    return-object p0
.end method

.method public final getUpdate()Li9/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li9/a;"
        }
    .end annotation

    iget-object p0, p0, Le3/k;->o:Li9/a;

    return-object p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Le3/k;->m:Landroid/view/View;

    return-object p0
.end method

.method public final invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    iget-boolean p1, p0, Le3/k;->J:Z

    if-eqz p1, :cond_0

    new-instance p1, Le3/a;

    const/4 p2, 0x0

    iget-object v0, p0, Le3/k;->D:Le3/j;

    invoke-direct {p1, v0, p2}, Le3/a;-><init>(Li9/a;I)V

    iget-object p0, p0, Le3/k;->m:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Le3/k;->K:Le2/g0;

    invoke-virtual {p0}, Le2/g0;->C()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isNestedScrollingEnabled()Z
    .locals 0

    iget-object p0, p0, Le3/k;->m:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result p0

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object p0, p0, Le3/k;->C:Le3/j;

    invoke-virtual {p0}, Le3/j;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    iget-boolean p1, p0, Le3/k;->J:Z

    if-eqz p1, :cond_0

    new-instance p1, Le3/a;

    const/4 p2, 0x0

    iget-object v0, p0, Le3/k;->D:Le3/j;

    invoke-direct {p1, v0, p2}, Le3/a;-><init>(Li9/a;I)V

    iget-object p0, p0, Le3/k;->m:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object p0, p0, Le3/k;->K:Le2/g0;

    invoke-virtual {p0}, Le2/g0;->C()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 22

    move-object/from16 v0, p0

    invoke-super {v0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-direct {v0}, Le3/k;->getSnapshotObserver()Le2/s1;

    move-result-object v1

    iget-object v1, v1, Le2/s1;->a:Ld1/b0;

    iget-object v2, v1, Ld1/b0;->g:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, v1, Ld1/b0;->f:Lt0/b;

    iget v3, v1, Lt0/b;->n:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_8

    iget-object v7, v1, Lt0/b;->l:[Ljava/lang/Object;

    aget-object v7, v7, v5

    check-cast v7, Ld1/a0;

    iget-object v8, v7, Ld1/a0;->f:Lk/m0;

    invoke-virtual {v8, v0}, Lk/m0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lk/d0;

    if-nez v8, :cond_1

    :cond_0
    move/from16 v16, v5

    goto :goto_4

    :cond_1
    iget-object v9, v8, Lk/d0;->b:[Ljava/lang/Object;

    iget-object v10, v8, Lk/d0;->c:[I

    iget-object v8, v8, Lk/d0;->a:[J

    array-length v11, v8

    add-int/lit8 v11, v11, -0x2

    if-ltz v11, :cond_0

    const/4 v12, 0x0

    :goto_1
    aget-wide v13, v8, v12

    move/from16 v16, v5

    not-long v4, v13

    const/16 v17, 0x7

    shl-long v4, v4, v17

    and-long/2addr v4, v13

    const-wide v17, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v4, v4, v17

    cmp-long v4, v4, v17

    if-eqz v4, :cond_4

    sub-int v4, v12, v11

    not-int v4, v4

    ushr-int/lit8 v4, v4, 0x1f

    const/16 v5, 0x8

    rsub-int/lit8 v4, v4, 0x8

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v4, :cond_3

    const-wide/16 v18, 0xff

    and-long v18, v13, v18

    const-wide/16 v20, 0x80

    cmp-long v18, v18, v20

    if-gez v18, :cond_2

    shl-int/lit8 v18, v12, 0x3

    add-int v18, v18, v15

    move/from16 v19, v5

    aget-object v5, v9, v18

    aget v18, v10, v18

    invoke-virtual {v7, v0, v5}, Ld1/a0;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    move/from16 v19, v5

    :goto_3
    shr-long v13, v13, v19

    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v19

    goto :goto_2

    :cond_3
    if-ne v4, v5, :cond_5

    :cond_4
    if-eq v12, v11, :cond_5

    add-int/lit8 v12, v12, 0x1

    move/from16 v5, v16

    goto :goto_1

    :cond_5
    :goto_4
    iget-object v4, v7, Ld1/a0;->f:Lk/m0;

    invoke-virtual {v4}, Lk/m0;->j()Z

    move-result v4

    if-nez v4, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    if-lez v6, :cond_7

    iget-object v4, v1, Lt0/b;->l:[Ljava/lang/Object;

    sub-int v5, v16, v6

    aget-object v7, v4, v16

    aput-object v7, v4, v5

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_7
    :goto_5
    add-int/lit8 v5, v16, 0x1

    goto/16 :goto_0

    :cond_8
    iget-object v0, v1, Lt0/b;->l:[Ljava/lang/Object;

    sub-int v4, v3, v6

    const/4 v5, 0x0

    invoke-static {v4, v3, v5, v0}, Lu8/l;->p0(IILjava/lang/Object;[Ljava/lang/Object;)V

    iput v4, v1, Lt0/b;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :goto_6
    monitor-exit v2

    throw v0
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget-object p0, p0, Le3/k;->m:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    iget-object v0, p0, Le3/k;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    iput p1, p0, Le3/k;->G:I

    iput p2, p0, Le3/k;->H:I

    return-void
.end method

.method public final onNestedFling(Landroid/view/View;FFZ)Z
    .locals 7

    iget-object p1, p0, Le3/k;->m:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    mul-float/2addr p2, p1

    mul-float/2addr p3, p1

    invoke-static {p2, p3}, Lb6/g;->e(FF)J

    move-result-wide v4

    iget-object p1, p0, Le3/k;->l:Lx1/d;

    invoke-virtual {p1}, Lx1/d;->c()Lu9/t;

    move-result-object p1

    new-instance v1, Le3/g;

    const/4 v6, 0x0

    move-object v3, p0

    move v2, p4

    invoke-direct/range {v1 .. v6}, Le3/g;-><init>(ZLe3/k;JLy8/c;)V

    const/4 p0, 0x3

    const/4 p2, 0x0

    invoke-static {p1, p2, p2, v1, p0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    return v0
.end method

.method public final onNestedPreFling(Landroid/view/View;FF)Z
    .locals 7

    iget-object p1, p0, Le3/k;->m:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    mul-float/2addr p2, p1

    mul-float/2addr p3, p1

    invoke-static {p2, p3}, Lb6/g;->e(FF)J

    move-result-wide v3

    iget-object p1, p0, Le3/k;->l:Lx1/d;

    invoke-virtual {p1}, Lx1/d;->c()Lu9/t;

    move-result-object p1

    new-instance v1, Le3/h;

    const/4 v6, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Le3/h;-><init>(Ljava/lang/Object;JLy8/c;I)V

    const/4 p0, 0x3

    invoke-static {p1, v5, v5, v1, p0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    return v0
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public final p()Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    return p0
.end method

.method public final requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 0

    iget-object p0, p0, Le3/k;->B:Li9/c;

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    invoke-static {p2}, Lm1/v;->A(Landroid/graphics/Rect;)Ll1/c;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 2

    iget-object v0, p0, Le3/k;->E:Li9/c;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public final setDensity(Lb3/c;)V
    .locals 1

    iget-object v0, p0, Le3/k;->u:Lb3/c;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Le3/k;->u:Lb3/c;

    iget-object p0, p0, Le3/k;->v:Li9/c;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final setLifecycleOwner(Landroidx/lifecycle/v;)V
    .locals 1

    iget-object v0, p0, Le3/k;->w:Landroidx/lifecycle/v;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Le3/k;->w:Landroidx/lifecycle/v;

    invoke-static {p0, p1}, Landroidx/lifecycle/t0;->i(Landroid/view/View;Landroidx/lifecycle/v;)V

    :cond_0
    return-void
.end method

.method public final setModifier(Lf1/r;)V
    .locals 1

    iget-object v0, p0, Le3/k;->s:Lf1/r;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Le3/k;->s:Lf1/r;

    iget-object p0, p0, Le3/k;->t:Li9/c;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final setOnDensityChanged$ui(Li9/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li9/c;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Le3/k;->v:Li9/c;

    return-void
.end method

.method public final setOnModifierChanged$ui(Li9/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li9/c;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Le3/k;->t:Li9/c;

    return-void
.end method

.method public final setOnRequestDisallowInterceptTouchEvent$ui(Li9/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li9/c;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Le3/k;->E:Li9/c;

    return-void
.end method

.method public final setRelease(Li9/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li9/a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Le3/k;->r:Li9/a;

    return-void
.end method

.method public final setReset(Li9/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li9/a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Le3/k;->q:Li9/a;

    return-void
.end method

.method public final setSavedStateRegistryOwner(Ln4/g;)V
    .locals 1

    iget-object v0, p0, Le3/k;->x:Ln4/g;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Le3/k;->x:Ln4/g;

    invoke-static {p0, p1}, Ll9/a;->B(Landroid/view/View;Ln4/g;)V

    :cond_0
    return-void
.end method

.method public final setUpdate(Li9/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li9/a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Le3/k;->o:Li9/a;

    const/4 p1, 0x1

    iput-boolean p1, p0, Le3/k;->p:Z

    iget-object p0, p0, Le3/k;->C:Le3/j;

    invoke-virtual {p0}, Le3/j;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
