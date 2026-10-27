.class public final Lf2/e0;
.super Lq3/b;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# static fields
.field public static final Z:Lk/w;


# instance fields
.field public A:Z

.field public final B:Lk/x;

.field public final C:Lk/x;

.field public final D:Lk/w0;

.field public final E:Lk/w0;

.field public F:I

.field public G:Ljava/lang/Integer;

.field public final H:Lk/f;

.field public final I:Lw9/e;

.field public J:Z

.field public K:Lf2/a0;

.field public L:Lk/x;

.field public final M:Lk/y;

.field public final N:Lk/v;

.field public final O:Lk/v;

.field public final P:Ljava/lang/String;

.field public final Q:Ljava/lang/String;

.field public final R:Lx2/k;

.field public final S:Lk/x;

.field public T:Lf2/j2;

.field public U:Z

.field public final V:Lk/v;

.field public final W:Landroidx/lifecycle/f0;

.field public final X:Ljava/util/ArrayList;

.field public final Y:Lf2/d0;

.field public final o:Lf2/y;

.field public p:I

.field public final q:Lf2/d0;

.field public final r:Landroid/view/accessibility/AccessibilityManager;

.field public s:J

.field public t:Ljava/util/List;

.field public final u:Landroid/os/Handler;

.field public final v:Lf2/z;

.field public w:I

.field public x:I

.field public y:Lr3/g;

.field public z:Lr3/g;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x20

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sget-object v2, Lk/j;->a:Lk/w;

    new-instance v2, Lk/w;

    invoke-direct {v2, v0}, Lk/w;-><init>(I)V

    iget v3, v2, Lk/w;->b:I

    if-ltz v3, :cond_1

    add-int/lit8 v4, v3, 0x20

    invoke-virtual {v2, v4}, Lk/w;->b(I)V

    iget-object v5, v2, Lk/w;->a:[I

    iget v6, v2, Lk/w;->b:I

    if-eq v3, v6, :cond_0

    invoke-static {v5, v5, v4, v3, v6}, Lu8/l;->i0([I[IIII)V

    :cond_0
    const/4 v4, 0x0

    const/16 v6, 0xc

    invoke-static {v1, v5, v3, v4, v6}, Lu8/l;->l0([I[IIII)V

    iget v1, v2, Lk/w;->b:I

    add-int/2addr v1, v0

    iput v1, v2, Lk/w;->b:I

    sput-object v2, Lf2/e0;->Z:Lk/w;

    return-void

    :cond_1
    const-string v0, ""

    invoke-static {v0}, Ll/a;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    nop

    :array_0
    .array-data 4
        0x7f080001
        0x7f080002
        0x7f08000d
        0x7f080018
        0x7f08001b
        0x7f08001c
        0x7f08001d
        0x7f08001e
        0x7f08001f
        0x7f080020
        0x7f080003
        0x7f080004
        0x7f080005
        0x7f080006
        0x7f080007
        0x7f080008
        0x7f080009
        0x7f08000a
        0x7f08000b
        0x7f08000c
        0x7f08000e
        0x7f08000f
        0x7f080010
        0x7f080011
        0x7f080012
        0x7f080013
        0x7f080014
        0x7f080015
        0x7f080016
        0x7f080017
        0x7f080019
        0x7f08001a
    .end array-data
.end method

.method public constructor <init>(Lf2/y;)V
    .locals 5

    invoke-direct {p0}, Lq3/b;-><init>()V

    iput-object p1, p0, Lf2/e0;->o:Lf2/y;

    const/high16 v0, -0x80000000

    iput v0, p0, Lf2/e0;->p:I

    new-instance v1, Lf2/d0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lf2/d0;-><init>(Lf2/e0;I)V

    iput-object v1, p0, Lf2/e0;->q:Lf2/d0;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "accessibility"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager"

    invoke-static {v1, v3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lf2/e0;->r:Landroid/view/accessibility/AccessibilityManager;

    const-wide/16 v3, 0x64

    iput-wide v3, p0, Lf2/e0;->s:J

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lf2/e0;->u:Landroid/os/Handler;

    new-instance v1, Lf2/z;

    invoke-direct {v1, p0}, Lf2/z;-><init>(Lf2/e0;)V

    iput-object v1, p0, Lf2/e0;->v:Lf2/z;

    iput v0, p0, Lf2/e0;->w:I

    iput v0, p0, Lf2/e0;->x:I

    new-instance v0, Lk/x;

    invoke-direct {v0}, Lk/x;-><init>()V

    iput-object v0, p0, Lf2/e0;->B:Lk/x;

    new-instance v0, Lk/x;

    invoke-direct {v0}, Lk/x;-><init>()V

    iput-object v0, p0, Lf2/e0;->C:Lk/x;

    new-instance v0, Lk/w0;

    invoke-direct {v0}, Lk/w0;-><init>()V

    iput-object v0, p0, Lf2/e0;->D:Lk/w0;

    new-instance v0, Lk/w0;

    invoke-direct {v0}, Lk/w0;-><init>()V

    iput-object v0, p0, Lf2/e0;->E:Lk/w0;

    const/4 v0, -0x1

    iput v0, p0, Lf2/e0;->F:I

    new-instance v0, Lk/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lk/f;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lf2/e0;->H:Lk/f;

    const/4 v0, 0x6

    const/4 v3, 0x1

    invoke-static {v3, v0, v1}, Lpc/h;->a(IILw9/a;)Lw9/e;

    move-result-object v0

    iput-object v0, p0, Lf2/e0;->I:Lw9/e;

    iput-boolean v3, p0, Lf2/e0;->J:Z

    sget-object v0, Lk/l;->a:Lk/x;

    const-string v1, "null cannot be cast to non-null type androidx.collection.IntObjectMap<V of androidx.collection.IntObjectMapKt.intObjectMapOf>"

    invoke-static {v0, v1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lf2/e0;->L:Lk/x;

    new-instance v4, Lk/y;

    invoke-direct {v4}, Lk/y;-><init>()V

    iput-object v4, p0, Lf2/e0;->M:Lk/y;

    new-instance v4, Lk/v;

    invoke-direct {v4}, Lk/v;-><init>()V

    iput-object v4, p0, Lf2/e0;->N:Lk/v;

    new-instance v4, Lk/v;

    invoke-direct {v4}, Lk/v;-><init>()V

    iput-object v4, p0, Lf2/e0;->O:Lk/v;

    const-string v4, "android.view.accessibility.extra.EXTRA_DATA_TEST_TRAVERSALBEFORE_VAL"

    iput-object v4, p0, Lf2/e0;->P:Ljava/lang/String;

    const-string v4, "android.view.accessibility.extra.EXTRA_DATA_TEST_TRAVERSALAFTER_VAL"

    iput-object v4, p0, Lf2/e0;->Q:Ljava/lang/String;

    new-instance v4, Lx2/k;

    invoke-direct {v4, v2}, Lx2/k;-><init>(I)V

    iput-object v4, p0, Lf2/e0;->R:Lx2/k;

    new-instance v2, Lk/x;

    invoke-direct {v2}, Lk/x;-><init>()V

    iput-object v2, p0, Lf2/e0;->S:Lk/x;

    new-instance v2, Lf2/j2;

    invoke-virtual {p1}, Lf2/y;->getSemanticsOwner()Lm2/r;

    move-result-object v4

    invoke-virtual {v4}, Lm2/r;->a()Lm2/p;

    move-result-object v4

    invoke-static {v0, v1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v4, v0}, Lf2/j2;-><init>(Lm2/p;Lk/k;)V

    iput-object v2, p0, Lf2/e0;->T:Lf2/j2;

    sget v0, Lk/i;->a:I

    new-instance v0, Lk/v;

    invoke-direct {v0}, Lk/v;-><init>()V

    iput-object v0, p0, Lf2/e0;->V:Lk/v;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    new-instance p1, Landroidx/lifecycle/f0;

    const/4 v0, 0x5

    invoke-direct {p1, v0, p0}, Landroidx/lifecycle/f0;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lf2/e0;->W:Landroidx/lifecycle/f0;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lf2/e0;->X:Ljava/util/ArrayList;

    new-instance p1, Lf2/d0;

    invoke-direct {p1, p0, v3}, Lf2/d0;-><init>(Lf2/e0;I)V

    iput-object p1, p0, Lf2/e0;->Y:Lf2/d0;

    return-void
.end method

.method public static E(Lm1/v;FF)Landroid/graphics/Rect;
    .locals 4

    instance-of v0, p0, Lm1/b0;

    if-nez v0, :cond_1

    instance-of v0, p0, Lm1/c0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lm1/v;->m()Ll1/c;

    move-result-object p0

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Ll1/c;->a:F

    add-float/2addr v1, p1

    float-to-int v1, v1

    iget v2, p0, Ll1/c;->b:F

    add-float/2addr v2, p2

    float-to-int v2, v2

    iget v3, p0, Ll1/c;->c:F

    add-float/2addr v3, p1

    float-to-int p1, v3

    iget p0, p0, Ll1/c;->d:F

    add-float/2addr p0, p2

    float-to-int p0, p0

    invoke-direct {v0, v1, v2, p1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static G(Lm1/v;)[F
    .locals 13

    instance-of v0, p0, Lm1/c0;

    if-eqz v0, :cond_0

    check-cast p0, Lm1/c0;

    iget-object p0, p0, Lm1/c0;->c:Ll1/d;

    iget-wide v0, p0, Ll1/d;->h:J

    iget-wide v2, p0, Ll1/d;->g:J

    iget-wide v4, p0, Ll1/d;->f:J

    iget-wide v6, p0, Ll1/d;->e:J

    const/16 p0, 0x20

    shr-long v8, v6, p0

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    const-wide v9, 0xffffffffL

    and-long/2addr v6, v9

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    shr-long v11, v4, p0

    long-to-int v7, v11

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    and-long/2addr v4, v9

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    shr-long v11, v2, p0

    long-to-int v5, v11

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    and-long/2addr v2, v9

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    shr-long v11, v0, p0

    long-to-int p0, v11

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    and-long/2addr v0, v9

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const/16 v1, 0x8

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v8, v1, v3

    const/4 v3, 0x1

    aput v6, v1, v3

    const/4 v3, 0x2

    aput v7, v1, v3

    const/4 v3, 0x3

    aput v4, v1, v3

    const/4 v3, 0x4

    aput v5, v1, v3

    const/4 v3, 0x5

    aput v2, v1, v3

    const/4 v2, 0x6

    aput p0, v1, v2

    const/4 p0, 0x7

    aput v0, v1, p0

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static H(Lm1/v;FF)Landroid/graphics/Region;
    .locals 7

    instance-of v0, p0, Lm1/a0;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/Region;

    check-cast p0, Lm1/a0;

    invoke-virtual {p0}, Lm1/a0;->m()Ll1/c;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ll1/c;->i(FF)Ll1/c;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    iget v3, v1, Ll1/c;->a:F

    const/4 v4, 0x0

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget v5, v1, Ll1/c;->b:F

    add-float/2addr v5, v4

    float-to-int v5, v5

    iget v6, v1, Ll1/c;->c:F

    add-float/2addr v6, v4

    float-to-int v6, v6

    iget v1, v1, Ll1/c;->d:F

    add-float/2addr v1, v4

    float-to-int v1, v1

    invoke-direct {v2, v3, v5, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v0, v2}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iget-object p0, p0, Lm1/a0;->c:Lm1/g;

    instance-of v2, p0, Lm1/g;

    if-eqz v2, :cond_0

    iget-object p0, p0, Lm1/g;->a:Landroid/graphics/Path;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Path;->offset(FF)V

    invoke-virtual {v1, p0, v0}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Unable to obtain android.graphics.Path"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static I(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const v1, 0x186a0

    if-gt v0, v1, :cond_1

    :goto_0
    return-object p0

    :cond_1
    const v0, 0x1869f

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v0

    :cond_2
    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type T of androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat.trimToSize"

    invoke-static {p0, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static m(Lm2/p;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lm2/p;->d:Lm2/m;

    iget-object v1, p0, Lm2/m;->l:Lk/m0;

    sget-object v2, Lm2/t;->a:Lm2/w;

    invoke-virtual {v1, v2}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Lm2/m;->c(Lm2/w;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const-string v1, ","

    const/16 v2, 0x3e

    invoke-static {p0, v1, v0, v2}, Ld3/a;->a(Ljava/util/List;Ljava/lang/String;Lp0/e;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lm2/t;->F:Lm2/w;

    invoke-virtual {v1, p0}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, p0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    move-object p0, v0

    :cond_2
    check-cast p0, Lp2/g;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lp2/g;->m:Ljava/lang/String;

    return-object p0

    :cond_3
    sget-object p0, Lm2/t;->B:Lm2/w;

    invoke-virtual {v1, p0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_4

    move-object p0, v0

    :cond_4
    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_5

    invoke-static {p0}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp2/g;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lp2/g;->m:Ljava/lang/String;

    return-object p0

    :cond_5
    :goto_0
    return-object v0
.end method

.method public static final q(Lm2/i;F)Z
    .locals 3

    iget-object v0, p0, Lm2/i;->a:Li9/a;

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    cmpl-float v2, v2, v1

    if-gtz v2, :cond_1

    :cond_0
    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget-object p0, p0, Lm2/i;->b:Li9/a;

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static final r(Lm2/i;)Z
    .locals 3

    iget-object v0, p0, Lm2/i;->a:Li9/a;

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    iget-object p0, p0, Lm2/i;->b:Li9/a;

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    const/4 p0, 0x0

    return p0
.end method

.method public static final s(Lm2/i;)Z
    .locals 2

    iget-object v0, p0, Lm2/i;->a:Li9/a;

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-object p0, p0, Lm2/i;->b:Li9/a;

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    cmpg-float p0, v1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic x(Lf2/e0;IILjava/lang/Integer;I)V
    .locals 1

    and-int/lit8 p4, p4, 0x4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p3, v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lf2/e0;->w(IILjava/lang/Integer;Ljava/util/List;)Z

    return-void
.end method


# virtual methods
.method public final A(Lk/k;)V
    .locals 58

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, v0, Lf2/e0;->X:Ljava/util/ArrayList;

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v10, v6, Lk/k;->b:[I

    iget-object v11, v6, Lk/k;->a:[J

    array-length v1, v11

    const/4 v12, 0x2

    add-int/lit8 v13, v1, -0x2

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-ltz v13, :cond_57

    move v15, v14

    :goto_0
    aget-wide v3, v11, v15

    move/from16 v16, v12

    move/from16 v17, v13

    not-long v12, v3

    const/16 v18, 0x7

    shl-long v12, v12, v18

    and-long/2addr v12, v3

    const-wide v19, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v12, v12, v19

    cmp-long v1, v12, v19

    if-eqz v1, :cond_56

    sub-int v1, v15, v17

    not-int v1, v1

    ushr-int/lit8 v1, v1, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v13, v1, 0x8

    move-wide/from16 v21, v3

    move v1, v14

    :goto_1
    if-ge v1, v13, :cond_55

    const-wide/16 v23, 0xff

    and-long v3, v21, v23

    const-wide/16 v25, 0x80

    cmp-long v3, v3, v25

    if-gez v3, :cond_54

    shl-int/lit8 v3, v15, 0x3

    add-int/2addr v3, v1

    aget v3, v10, v3

    iget-object v4, v0, Lf2/e0;->S:Lk/x;

    invoke-virtual {v4, v3}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf2/j2;

    if-nez v4, :cond_0

    goto/16 :goto_2f

    :cond_0
    iget-object v4, v4, Lf2/j2;->a:Lm2/m;

    iget-object v5, v4, Lm2/m;->l:Lk/m0;

    invoke-virtual {v6, v3}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v14, v27

    check-cast v14, Lm2/q;

    move/from16 v27, v12

    if-eqz v14, :cond_1

    iget-object v14, v14, Lm2/q;->a:Lm2/p;

    goto :goto_2

    :cond_1
    const/4 v14, 0x0

    :goto_2
    if-eqz v14, :cond_53

    iget-object v12, v14, Lm2/p;->c:Le2/g0;

    iget-object v6, v14, Lm2/p;->d:Lm2/m;

    move-object/from16 v29, v10

    iget v10, v14, Lm2/p;->g:I

    move-object/from16 v30, v11

    iget-object v11, v6, Lm2/m;->l:Lk/m0;

    move/from16 v31, v15

    iget-object v15, v11, Lk/m0;->b:[Ljava/lang/Object;

    move-object/from16 v32, v15

    iget-object v15, v11, Lk/m0;->c:[Ljava/lang/Object;

    move-object/from16 v33, v15

    iget-object v15, v11, Lk/m0;->a:[J

    move/from16 v34, v1

    array-length v1, v15

    add-int/lit8 v1, v1, -0x2

    move-object/from16 v35, v15

    if-ltz v1, :cond_4d

    move-object/from16 v40, v12

    move/from16 v39, v13

    const/4 v15, 0x0

    const/16 v38, 0x0

    :goto_3
    aget-wide v12, v35, v15

    move-object/from16 v41, v14

    move/from16 v42, v15

    not-long v14, v12

    shl-long v14, v14, v18

    and-long/2addr v14, v12

    and-long v14, v14, v19

    cmp-long v14, v14, v19

    if-eqz v14, :cond_4c

    sub-int v15, v42, v1

    not-int v14, v15

    ushr-int/lit8 v14, v14, 0x1f

    rsub-int/lit8 v14, v14, 0x8

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v14, :cond_4b

    and-long v43, v12, v23

    cmp-long v43, v43, v25

    if-gez v43, :cond_4a

    shl-int/lit8 v43, v42, 0x3

    add-int v43, v43, v15

    aget-object v44, v32, v43

    move/from16 v45, v1

    aget-object v1, v33, v43

    move-object/from16 v43, v4

    move-object/from16 v4, v44

    check-cast v4, Lm2/w;

    move-wide/from16 v46, v12

    sget-object v12, Lm2/t;->u:Lm2/w;

    invoke-static {v4, v12}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    sget-object v13, Lm2/t;->v:Lm2/w;

    invoke-static {v4, v13}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    goto :goto_5

    :cond_2
    move/from16 v44, v15

    const/4 v15, 0x0

    goto :goto_9

    :cond_3
    :goto_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    move/from16 v44, v15

    const/4 v15, 0x0

    :goto_6
    if-ge v15, v13, :cond_5

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    move/from16 v49, v13

    move-object/from16 v13, v48

    check-cast v13, Lf2/i2;

    iget v13, v13, Lf2/i2;->l:I

    if-ne v13, v3, :cond_4

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lf2/i2;

    goto :goto_7

    :cond_4
    add-int/lit8 v15, v15, 0x1

    move/from16 v13, v49

    goto :goto_6

    :cond_5
    const/4 v13, 0x0

    :goto_7
    if-eqz v13, :cond_6

    const/4 v15, 0x0

    goto :goto_8

    :cond_6
    new-instance v13, Lf2/i2;

    invoke-direct {v13, v3, v9}, Lf2/i2;-><init>(ILjava/util/ArrayList;)V

    const/4 v15, 0x1

    :goto_8
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    if-nez v15, :cond_8

    invoke-virtual {v5, v4}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_7

    const/4 v13, 0x0

    :cond_7
    invoke-static {v1, v13}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    move v13, v3

    move-object/from16 v48, v8

    move/from16 v28, v14

    move/from16 v12, v27

    goto/16 :goto_c

    :cond_8
    sget-object v13, Lm2/t;->d:Lm2/w;

    invoke-static {v4, v13}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    const-string v4, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v1, v4}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v13}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move/from16 v4, v27

    invoke-virtual {v0, v3, v4, v1}, Lf2/e0;->y(IILjava/lang/String;)V

    :cond_9
    move v13, v3

    move-object/from16 v48, v8

    move/from16 v28, v14

    move-object/from16 v15, v40

    const/16 v12, 0x8

    :goto_a
    const/16 v37, 0x1

    move-object v8, v2

    move-object v14, v5

    move/from16 v2, v45

    :goto_b
    const/4 v5, 0x0

    goto/16 :goto_2b

    :cond_a
    sget-object v13, Lm2/t;->b:Lm2/w;

    invoke-static {v4, v13}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    sget-object v13, Lm2/t;->J:Lm2/w;

    invoke-static {v4, v13}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    :cond_b
    move v13, v3

    move-object/from16 v48, v8

    move/from16 v28, v14

    move-object/from16 v15, v40

    const/16 v37, 0x1

    move-object v8, v2

    move-object v14, v5

    move/from16 v2, v45

    const/4 v5, 0x0

    goto/16 :goto_2a

    :cond_c
    sget-object v13, Lm2/t;->c:Lm2/w;

    invoke-static {v4, v13}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-virtual {v0, v3}, Lf2/e0;->t(I)I

    move-result v1

    const/16 v4, 0x800

    const/16 v12, 0x8

    invoke-static {v0, v1, v4, v7, v12}, Lf2/e0;->x(Lf2/e0;IILjava/lang/Integer;I)V

    invoke-virtual {v0, v3}, Lf2/e0;->t(I)I

    move-result v1

    invoke-static {v0, v1, v4, v2, v12}, Lf2/e0;->x(Lf2/e0;IILjava/lang/Integer;I)V

    move v13, v3

    move-object/from16 v48, v8

    move/from16 v28, v14

    :goto_c
    move-object/from16 v15, v40

    goto :goto_a

    :cond_d
    sget-object v13, Lm2/t;->I:Lm2/w;

    invoke-static {v4, v13}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    move-object/from16 v48, v8

    const/4 v8, 0x4

    if-eqz v15, :cond_1a

    sget-object v1, Lm2/t;->y:Lm2/w;

    invoke-virtual {v11, v1}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_e

    const/4 v1, 0x0

    :cond_e
    check-cast v1, Lm2/h;

    if-nez v1, :cond_10

    :cond_f
    const/4 v1, 0x0

    goto :goto_d

    :cond_10
    iget v1, v1, Lm2/h;->a:I

    if-ne v1, v8, :cond_f

    const/4 v1, 0x1

    :goto_d
    if-eqz v1, :cond_19

    invoke-virtual {v11, v13}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_11

    const/4 v1, 0x0

    :cond_11
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0, v3}, Lf2/e0;->t(I)I

    move-result v1

    invoke-virtual {v0, v1, v8}, Lf2/e0;->h(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    new-instance v4, Lm2/p;

    move-object/from16 v13, v41

    iget-object v8, v13, Lm2/p;->a:Lf1/q;

    move-object/from16 v15, v40

    const/4 v12, 0x1

    invoke-direct {v4, v8, v12, v15, v6}, Lm2/p;-><init>(Lf1/q;ZLe2/g0;Lm2/m;)V

    invoke-virtual {v4}, Lm2/p;->k()Lm2/m;

    move-result-object v8

    sget-object v12, Lm2/t;->a:Lm2/w;

    iget-object v8, v8, Lm2/m;->l:Lk/m0;

    invoke-virtual {v8, v12}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_12

    const/4 v8, 0x0

    :cond_12
    check-cast v8, Ljava/util/List;

    const/16 v12, 0x3e

    move-object/from16 v40, v4

    const-string v4, ","

    move-object/from16 v41, v13

    const/4 v13, 0x0

    if-eqz v8, :cond_13

    invoke-static {v8, v4, v13, v12}, Ld3/a;->a(Ljava/util/List;Ljava/lang/String;Lp0/e;I)Ljava/lang/String;

    move-result-object v8

    move-object v13, v8

    :cond_13
    invoke-virtual/range {v40 .. v40}, Lm2/p;->k()Lm2/m;

    move-result-object v8

    sget-object v12, Lm2/t;->B:Lm2/w;

    iget-object v8, v8, Lm2/m;->l:Lk/m0;

    invoke-virtual {v8, v12}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_14

    const/4 v8, 0x0

    :cond_14
    check-cast v8, Ljava/util/List;

    move/from16 v28, v14

    const/4 v12, 0x0

    if-eqz v8, :cond_15

    const/16 v14, 0x3e

    invoke-static {v8, v4, v12, v14}, Ld3/a;->a(Ljava/util/List;Ljava/lang/String;Lp0/e;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    :cond_15
    move-object v4, v12

    :goto_e
    if-eqz v13, :cond_16

    invoke-virtual {v1, v13}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_16
    if-eqz v4, :cond_17

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    invoke-virtual {v0, v1}, Lf2/e0;->v(Landroid/view/accessibility/AccessibilityEvent;)Z

    const/16 v13, 0x800

    goto :goto_f

    :cond_18
    move/from16 v28, v14

    move-object/from16 v15, v40

    const/4 v12, 0x0

    invoke-virtual {v0, v3}, Lf2/e0;->t(I)I

    move-result v1

    const/16 v4, 0x8

    const/16 v13, 0x800

    invoke-static {v0, v1, v13, v2, v4}, Lf2/e0;->x(Lf2/e0;IILjava/lang/Integer;I)V

    goto :goto_f

    :cond_19
    move/from16 v28, v14

    move-object/from16 v15, v40

    const/16 v4, 0x8

    const/4 v12, 0x0

    const/16 v13, 0x800

    invoke-virtual {v0, v3}, Lf2/e0;->t(I)I

    move-result v1

    invoke-static {v0, v1, v13, v7, v4}, Lf2/e0;->x(Lf2/e0;IILjava/lang/Integer;I)V

    invoke-virtual {v0, v3}, Lf2/e0;->t(I)I

    move-result v1

    invoke-static {v0, v1, v13, v2, v4}, Lf2/e0;->x(Lf2/e0;IILjava/lang/Integer;I)V

    :goto_f
    move-object v8, v2

    move v13, v3

    move-object v14, v5

    move/from16 v2, v45

    const/4 v5, 0x0

    const/16 v12, 0x8

    const/16 v37, 0x1

    goto/16 :goto_2b

    :cond_1a
    move/from16 v36, v8

    move/from16 v28, v14

    move-object/from16 v15, v40

    const/16 v13, 0x800

    const/4 v14, 0x0

    const/16 v37, 0x1

    sget-object v8, Lm2/t;->a:Lm2/w;

    invoke-static {v4, v8}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-virtual {v0, v3}, Lf2/e0;->t(I)I

    move-result v4

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v12, "null cannot be cast to non-null type kotlin.collections.List<kotlin.String>"

    invoke-static {v1, v12}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v4, v13, v8, v1}, Lf2/e0;->w(IILjava/lang/Integer;Ljava/util/List;)Z

    move-object v8, v2

    move v13, v3

    move-object v14, v5

    :goto_10
    move/from16 v2, v45

    :goto_11
    const/4 v5, 0x0

    :cond_1b
    :goto_12
    const/16 v12, 0x8

    goto/16 :goto_2b

    :cond_1c
    sget-object v8, Lm2/t;->F:Lm2/w;

    invoke-static {v4, v8}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    const-wide v49, 0xffffffffL

    const/16 v40, 0x20

    const-string v51, ""

    if-eqz v13, :cond_2d

    sget-object v1, Lm2/l;->k:Lm2/w;

    invoke-virtual {v11, v1}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {v5, v8}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_1d

    move-object v13, v14

    :cond_1d
    check-cast v13, Lp2/g;

    if-eqz v13, :cond_1e

    goto :goto_13

    :cond_1e
    move-object/from16 v13, v51

    :goto_13
    invoke-virtual {v11, v8}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1f

    move-object v1, v14

    :cond_1f
    check-cast v1, Lp2/g;

    if-eqz v1, :cond_20

    goto :goto_14

    :cond_20
    move-object/from16 v1, v51

    :goto_14
    invoke-static {v1}, Lf2/e0;->I(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-le v8, v12, :cond_21

    move v14, v12

    goto :goto_15

    :cond_21
    move v14, v8

    :goto_15
    move-object/from16 v52, v2

    const/4 v2, 0x0

    :goto_16
    move/from16 v51, v8

    if-ge v2, v14, :cond_23

    invoke-interface {v13, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    move/from16 v53, v12

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-eq v8, v12, :cond_22

    goto :goto_17

    :cond_22
    add-int/lit8 v2, v2, 0x1

    move/from16 v8, v51

    move/from16 v12, v53

    goto :goto_16

    :cond_23
    move/from16 v53, v12

    :goto_17
    const/4 v8, 0x0

    :goto_18
    sub-int v12, v14, v2

    if-ge v8, v12, :cond_25

    add-int/lit8 v12, v51, -0x1

    sub-int/2addr v12, v8

    invoke-interface {v13, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    add-int/lit8 v54, v53, -0x1

    move/from16 v55, v8

    sub-int v8, v54, v55

    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-eq v12, v8, :cond_24

    goto :goto_19

    :cond_24
    add-int/lit8 v8, v55, 0x1

    goto :goto_18

    :cond_25
    move/from16 v55, v8

    :goto_19
    sub-int v8, v51, v55

    sub-int/2addr v8, v2

    sub-int v12, v53, v55

    sub-int/2addr v12, v2

    sget-object v1, Lm2/t;->K:Lm2/w;

    invoke-virtual {v5, v1}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v14

    invoke-virtual {v11, v1}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v1

    move/from16 v51, v1

    sget-object v1, Lm2/t;->F:Lm2/w;

    invoke-virtual {v5, v1}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    if-nez v14, :cond_26

    if-eqz v51, :cond_26

    move/from16 v54, v37

    goto :goto_1a

    :cond_26
    const/16 v54, 0x0

    :goto_1a
    if-eqz v1, :cond_27

    if-eqz v14, :cond_27

    if-nez v51, :cond_27

    move/from16 v14, v37

    goto :goto_1b

    :cond_27
    const/4 v14, 0x0

    :goto_1b
    if-nez v54, :cond_28

    if-eqz v14, :cond_29

    :cond_28
    move-object/from16 v55, v5

    goto :goto_1c

    :cond_29
    invoke-virtual {v0, v3}, Lf2/e0;->t(I)I

    move-result v1

    move-object/from16 v55, v5

    const/16 v5, 0x10

    invoke-virtual {v0, v1, v5}, Lf2/e0;->h(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {v1, v8}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    invoke-virtual {v1, v12}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    invoke-virtual {v1, v13}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v13, v3

    move-object/from16 v2, v52

    goto :goto_1d

    :goto_1c
    invoke-virtual {v0, v3}, Lf2/e0;->t(I)I

    move-result v1

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move v5, v3

    move-object/from16 v3, v52

    move v13, v5

    move-object v5, v4

    move-object v4, v2

    move-object/from16 v2, v52

    invoke-virtual/range {v0 .. v5}, Lf2/e0;->i(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/CharSequence;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    :goto_1d
    const-string v3, "android.widget.EditText"

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lf2/e0;->v(Landroid/view/accessibility/AccessibilityEvent;)Z

    if-nez v54, :cond_2b

    if-eqz v14, :cond_2a

    goto :goto_1e

    :cond_2a
    move-object/from16 v52, v2

    goto :goto_1f

    :cond_2b
    :goto_1e
    sget-object v3, Lm2/t;->G:Lm2/w;

    invoke-virtual {v6, v3}, Lm2/m;->c(Lm2/w;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp2/l0;

    iget-wide v3, v3, Lp2/l0;->a:J

    move-object/from16 v52, v2

    move-wide/from16 v53, v3

    shr-long v2, v53, v40

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    and-long v2, v53, v49

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    invoke-virtual {v0, v1}, Lf2/e0;->v(Landroid/view/accessibility/AccessibilityEvent;)Z

    :goto_1f
    move/from16 v2, v45

    move-object/from16 v8, v52

    move-object/from16 v14, v55

    goto/16 :goto_11

    :cond_2c
    move-object/from16 v52, v2

    move v13, v3

    move-object/from16 v55, v5

    invoke-virtual {v0, v13}, Lf2/e0;->t(I)I

    move-result v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x800

    const/16 v12, 0x8

    invoke-static {v0, v1, v4, v2, v12}, Lf2/e0;->x(Lf2/e0;IILjava/lang/Integer;I)V

    move/from16 v2, v45

    move-object/from16 v8, v52

    move-object/from16 v14, v55

    goto/16 :goto_b

    :cond_2d
    move-object/from16 v52, v2

    move v13, v3

    move-object v14, v5

    sget-object v2, Lm2/t;->G:Lm2/w;

    invoke-static {v4, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-virtual {v11, v8}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2e

    const/4 v1, 0x0

    :cond_2e
    check-cast v1, Lp2/g;

    if-eqz v1, :cond_30

    iget-object v1, v1, Lp2/g;->m:Ljava/lang/String;

    if-nez v1, :cond_2f

    goto :goto_20

    :cond_2f
    move-object/from16 v51, v1

    :cond_30
    :goto_20
    invoke-virtual {v6, v2}, Lm2/m;->c(Lm2/w;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp2/l0;

    iget-wide v1, v1, Lp2/l0;->a:J

    move-wide v2, v1

    invoke-virtual {v0, v13}, Lf2/e0;->t(I)I

    move-result v1

    shr-long v4, v2, v40

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    and-long v2, v2, v49

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual/range {v51 .. v51}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v51 .. v51}, Lf2/e0;->I(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v8, v4

    move-object v4, v2

    move-object v2, v8

    move-object/from16 v8, v52

    invoke-virtual/range {v0 .. v5}, Lf2/e0;->i(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/CharSequence;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf2/e0;->v(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {v0, v10}, Lf2/e0;->z(I)V

    goto/16 :goto_10

    :cond_31
    move/from16 v2, v45

    move-object/from16 v8, v52

    invoke-static {v4, v12}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    sget-object v3, Lm2/t;->v:Lm2/w;

    invoke-static {v4, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    :cond_32
    const/4 v5, 0x0

    goto/16 :goto_27

    :cond_33
    sget-object v3, Lm2/t;->k:Lm2/w;

    invoke-static {v4, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    const-string v3, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v1, v3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual {v0, v10}, Lf2/e0;->t(I)I

    move-result v1

    const/16 v4, 0x8

    invoke-virtual {v0, v1, v4}, Lf2/e0;->h(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf2/e0;->v(Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_21

    :cond_34
    const/16 v4, 0x8

    :goto_21
    invoke-virtual {v0, v10}, Lf2/e0;->t(I)I

    move-result v1

    const/16 v3, 0x800

    invoke-static {v0, v1, v3, v8, v4}, Lf2/e0;->x(Lf2/e0;IILjava/lang/Integer;I)V

    move v12, v4

    goto/16 :goto_b

    :cond_35
    sget-object v3, Lm2/l;->x:Lm2/w;

    invoke-static {v4, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-virtual {v6, v3}, Lm2/m;->c(Lm2/w;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v14, v3}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_36

    const/4 v3, 0x0

    :cond_36
    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_3b

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v5

    if-gtz v5, :cond_3a

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    if-gtz v5, :cond_39

    invoke-interface {v4, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v1, v4}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_37

    goto :goto_22

    :cond_37
    const/16 v38, 0x0

    goto/16 :goto_11

    :cond_38
    :goto_22
    move/from16 v38, v37

    goto/16 :goto_11

    :cond_39
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_3a
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_3b
    const/4 v5, 0x0

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    :cond_3c
    :goto_23
    move/from16 v38, v37

    goto/16 :goto_12

    :cond_3d
    const/4 v5, 0x0

    instance-of v3, v1, Lm2/a;

    if-eqz v3, :cond_3c

    check-cast v1, Lm2/a;

    invoke-virtual {v14, v4}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3e

    const/4 v3, 0x0

    :cond_3e
    if-ne v1, v3, :cond_3f

    goto :goto_25

    :cond_3f
    instance-of v4, v3, Lm2/a;

    if-nez v4, :cond_40

    goto :goto_24

    :cond_40
    iget-object v4, v1, Lm2/a;->a:Ljava/lang/String;

    check-cast v3, Lm2/a;

    iget-object v12, v3, Lm2/a;->b:Lt8/e;

    iget-object v3, v3, Lm2/a;->a:Ljava/lang/String;

    invoke-static {v4, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    goto :goto_24

    :cond_41
    iget-object v1, v1, Lm2/a;->b:Lt8/e;

    if-nez v1, :cond_42

    if-eqz v12, :cond_42

    goto :goto_24

    :cond_42
    if-eqz v1, :cond_43

    if-nez v12, :cond_43

    :goto_24
    move v12, v5

    goto :goto_26

    :cond_43
    :goto_25
    move/from16 v12, v37

    :goto_26
    if-nez v12, :cond_44

    goto :goto_23

    :cond_44
    move/from16 v38, v5

    goto/16 :goto_12

    :goto_27
    invoke-virtual {v0, v15}, Lf2/e0;->p(Le2/g0;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v5

    :goto_28
    if-ge v3, v1, :cond_46

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf2/i2;

    iget v4, v4, Lf2/i2;->l:I

    if-ne v4, v13, :cond_45

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf2/i2;

    goto :goto_29

    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_46
    const/4 v1, 0x0

    :goto_29
    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v11, v12}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_47

    const/4 v3, 0x0

    :cond_47
    check-cast v3, Lm2/i;

    iput-object v3, v1, Lf2/i2;->p:Lm2/i;

    sget-object v3, Lm2/t;->v:Lm2/w;

    invoke-virtual {v11, v3}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_48

    const/4 v3, 0x0

    :cond_48
    check-cast v3, Lm2/i;

    iput-object v3, v1, Lf2/i2;->q:Lm2/i;

    iget-object v3, v1, Lf2/i2;->m:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    goto/16 :goto_12

    :cond_49
    iget-object v3, v0, Lf2/e0;->o:Lf2/y;

    invoke-virtual {v3}, Lf2/y;->getSnapshotObserver()Le2/s1;

    move-result-object v3

    new-instance v4, Ld5/a;

    const/4 v12, 0x6

    invoke-direct {v4, v12, v1, v0}, Ld5/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v3, Le2/s1;->a:Ld1/b0;

    iget-object v12, v0, Lf2/e0;->Y:Lf2/d0;

    invoke-virtual {v3, v1, v12, v4}, Ld1/b0;->c(Ljava/lang/Object;Li9/c;Li9/a;)V

    goto/16 :goto_12

    :goto_2a
    invoke-virtual {v0, v13}, Lf2/e0;->t(I)I

    move-result v1

    const/16 v4, 0x800

    const/16 v12, 0x8

    invoke-static {v0, v1, v4, v7, v12}, Lf2/e0;->x(Lf2/e0;IILjava/lang/Integer;I)V

    invoke-virtual {v0, v13}, Lf2/e0;->t(I)I

    move-result v1

    invoke-static {v0, v1, v4, v8, v12}, Lf2/e0;->x(Lf2/e0;IILjava/lang/Integer;I)V

    goto :goto_2b

    :cond_4a
    move-object/from16 v43, v4

    move-object/from16 v48, v8

    move-wide/from16 v46, v12

    move/from16 v28, v14

    move/from16 v44, v15

    move/from16 v12, v27

    move-object/from16 v15, v40

    const/16 v37, 0x1

    move-object v8, v2

    move v13, v3

    move-object v14, v5

    const/4 v5, 0x0

    move v2, v1

    :goto_2b
    shr-long v3, v46, v12

    add-int/lit8 v1, v44, 0x1

    move/from16 v27, v12

    move-object v5, v14

    move-object/from16 v40, v15

    move/from16 v14, v28

    move v15, v1

    move v1, v2

    move-object v2, v8

    move-object/from16 v8, v48

    move-wide/from16 v56, v3

    move v3, v13

    move-wide/from16 v12, v56

    move-object/from16 v4, v43

    goto/16 :goto_4

    :cond_4b
    move v13, v3

    move-object/from16 v43, v4

    move-object/from16 v48, v8

    move/from16 v12, v27

    move-object/from16 v15, v40

    const/16 v37, 0x1

    move-object v8, v2

    move v2, v1

    move v1, v14

    move-object v14, v5

    const/4 v5, 0x0

    if-ne v1, v12, :cond_4e

    :goto_2c
    move/from16 v1, v42

    goto :goto_2d

    :cond_4c
    move v13, v3

    move-object/from16 v43, v4

    move-object v14, v5

    move-object/from16 v48, v8

    move-object/from16 v15, v40

    const/4 v5, 0x0

    const/16 v37, 0x1

    move-object v8, v2

    move v2, v1

    goto :goto_2c

    :goto_2d
    if-eq v1, v2, :cond_4e

    add-int/lit8 v1, v1, 0x1

    move v3, v13

    move-object v5, v14

    move-object/from16 v40, v15

    move-object/from16 v14, v41

    move-object/from16 v4, v43

    const/16 v27, 0x8

    move v15, v1

    move v1, v2

    move-object v2, v8

    move-object/from16 v8, v48

    goto/16 :goto_3

    :cond_4d
    move-object/from16 v43, v4

    move-object/from16 v48, v8

    move/from16 v39, v13

    move-object/from16 v41, v14

    const/4 v5, 0x0

    const/16 v37, 0x1

    move-object v8, v2

    move v13, v3

    move/from16 v38, v5

    :cond_4e
    if-nez v38, :cond_51

    invoke-virtual/range {v43 .. v43}, Lm2/m;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual/range {v41 .. v41}, Lm2/p;->k()Lm2/m;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm2/w;

    iget-object v3, v3, Lm2/m;->l:Lk/m0;

    invoke-virtual {v3, v2}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    move/from16 v15, v37

    goto :goto_2e

    :cond_50
    move v15, v5

    :goto_2e
    move/from16 v38, v15

    :cond_51
    if-eqz v38, :cond_52

    invoke-virtual {v0, v13}, Lf2/e0;->t(I)I

    move-result v1

    const/16 v4, 0x800

    const/16 v12, 0x8

    invoke-static {v0, v1, v4, v8, v12}, Lf2/e0;->x(Lf2/e0;IILjava/lang/Integer;I)V

    goto :goto_30

    :cond_52
    const/16 v12, 0x8

    goto :goto_30

    :cond_53
    const-string v0, "no value for specified key"

    invoke-static {v0}, La6/q;->e(Ljava/lang/String;)Landroidx/fragment/app/i0;

    move-result-object v0

    throw v0

    :cond_54
    :goto_2f
    move/from16 v34, v1

    move-object/from16 v48, v8

    move-object/from16 v29, v10

    move-object/from16 v30, v11

    move/from16 v39, v13

    move v5, v14

    move/from16 v31, v15

    move-object v8, v2

    :goto_30
    shr-long v21, v21, v12

    add-int/lit8 v1, v34, 0x1

    move-object/from16 v6, p1

    move v14, v5

    move-object v2, v8

    move-object/from16 v10, v29

    move-object/from16 v11, v30

    move/from16 v15, v31

    move/from16 v13, v39

    move-object/from16 v8, v48

    goto/16 :goto_1

    :cond_55
    move-object/from16 v48, v8

    move-object/from16 v29, v10

    move-object/from16 v30, v11

    move v1, v13

    move v5, v14

    move/from16 v31, v15

    move-object v8, v2

    if-ne v1, v12, :cond_57

    move/from16 v14, v31

    :goto_31
    move/from16 v1, v17

    goto :goto_32

    :cond_56
    move-object/from16 v48, v8

    move-object/from16 v29, v10

    move-object/from16 v30, v11

    move v5, v14

    move-object v8, v2

    move v14, v15

    goto :goto_31

    :goto_32
    if-eq v14, v1, :cond_57

    add-int/lit8 v15, v14, 0x1

    move-object/from16 v6, p1

    move v13, v1

    move v14, v5

    move-object v2, v8

    move/from16 v12, v16

    move-object/from16 v10, v29

    move-object/from16 v11, v30

    move-object/from16 v8, v48

    goto/16 :goto_0

    :cond_57
    return-void
.end method

.method public final B(Le2/g0;Lk/y;)V
    .locals 5

    invoke-virtual {p1}, Le2/g0;->H()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lf2/e0;->o:Lf2/y;

    invoke-virtual {v0}, Lf2/y;->getAndroidViewsHandler$ui()Lf2/a1;

    move-result-object v0

    invoke-virtual {v0}, Lf2/a1;->getLayoutNodeToHolder()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v0, p1, Le2/g0;->R:Le2/c1;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Le2/c1;->d(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Le2/g0;->v()Le2/g0;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_4

    iget-object v0, p1, Le2/g0;->R:Le2/c1;

    invoke-virtual {v0, v1}, Le2/c1;->d(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Le2/g0;->v()Le2/g0;

    move-result-object p1

    goto :goto_0

    :cond_4
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Le2/g0;->x()Lm2/m;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    iget-boolean v0, v0, Lm2/m;->n:Z

    const/4 v3, 0x1

    if-nez v0, :cond_8

    invoke-virtual {p1}, Le2/g0;->v()Le2/g0;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Le2/g0;->x()Lm2/m;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-boolean v4, v4, Lm2/m;->n:Z

    if-ne v4, v3, :cond_6

    move-object v2, v0

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Le2/g0;->v()Le2/g0;

    move-result-object v0

    goto :goto_2

    :cond_7
    :goto_3
    if-eqz v2, :cond_8

    move-object p1, v2

    :cond_8
    iget p1, p1, Le2/g0;->m:I

    invoke-virtual {p2, p1}, Lk/y;->a(I)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {p0, p1}, Lf2/e0;->t(I)I

    move-result p1

    const/16 p2, 0x800

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, p2, v0, v1}, Lf2/e0;->x(Lf2/e0;IILjava/lang/Integer;I)V

    :cond_a
    :goto_4
    return-void
.end method

.method public final C(Le2/g0;)V
    .locals 3

    invoke-virtual {p1}, Le2/g0;->H()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf2/e0;->o:Lf2/y;

    invoke-virtual {v0}, Lf2/y;->getAndroidViewsHandler$ui()Lf2/a1;

    move-result-object v0

    invoke-virtual {v0}, Lf2/a1;->getLayoutNodeToHolder()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p1, Le2/g0;->m:I

    iget-object v0, p0, Lf2/e0;->B:Lk/x;

    invoke-virtual {v0, p1}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm2/i;

    iget-object v1, p0, Lf2/e0;->C:Lk/x;

    invoke-virtual {v1, p1}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm2/i;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    :goto_0
    return-void

    :cond_2
    const/16 v2, 0x1000

    invoke-virtual {p0, p1, v2}, Lf2/e0;->h(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    if-eqz v0, :cond_3

    iget-object v2, v0, Lm2/i;->a:Li9/a;

    invoke-interface {v2}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setScrollX(I)V

    iget-object v0, v0, Lm2/i;->b:Li9/a;

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V

    :cond_3
    if-eqz v1, :cond_4

    iget-object v0, v1, Lm2/i;->a:Li9/a;

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    iget-object v0, v1, Lm2/i;->b:Li9/a;

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    :cond_4
    invoke-virtual {p0, p1}, Lf2/e0;->v(Landroid/view/accessibility/AccessibilityEvent;)Z

    return-void
.end method

.method public final D(Lm2/p;IIZ)Z
    .locals 10

    iget-object v0, p1, Lm2/p;->d:Lm2/m;

    iget v1, p1, Lm2/p;->g:I

    sget-object v2, Lm2/l;->j:Lm2/w;

    iget-object v0, v0, Lm2/m;->l:Lk/m0;

    invoke-virtual {v0, v2}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lf2/k0;->b(Lm2/p;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p1, Lm2/p;->d:Lm2/m;

    invoke-virtual {p0, v2}, Lm2/m;->c(Lm2/w;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm2/a;

    iget-object p0, p0, Lm2/a;->b:Lt8/e;

    check-cast p0, Li9/f;

    if-eqz p0, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Li9/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    if-ne p2, p3, :cond_1

    iget p4, p0, Lf2/e0;->F:I

    if-ne p3, p4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lf2/e0;->m(Lm2/p;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3

    :cond_2
    :goto_0
    return v3

    :cond_3
    if-ltz p2, :cond_4

    if-ne p2, p3, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result p1

    if-gt p3, p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p2, -0x1

    :goto_1
    iput p2, p0, Lf2/e0;->F:I

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x1

    if-lez p1, :cond_5

    move v3, p2

    :cond_5
    invoke-virtual {p0, v1}, Lf2/e0;->t(I)I

    move-result v5

    const/4 p1, 0x0

    if-eqz v3, :cond_6

    iget p3, p0, Lf2/e0;->F:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    move-object v6, p3

    goto :goto_2

    :cond_6
    move-object v6, p1

    :goto_2
    if-eqz v3, :cond_7

    iget p3, p0, Lf2/e0;->F:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    move-object v7, p3

    goto :goto_3

    :cond_7
    move-object v7, p1

    :goto_3
    if-eqz v3, :cond_8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_8
    move-object v4, p0

    move-object v8, p1

    invoke-virtual/range {v4 .. v9}, Lf2/e0;->i(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/CharSequence;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p0

    invoke-virtual {v4, p0}, Lf2/e0;->v(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {v4, v1}, Lf2/e0;->z(I)V

    return p2
.end method

.method public final F(FFFF)Landroid/graphics/Rect;
    .locals 7

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v0, p1

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide v3, 0xffffffffL

    and-long/2addr p1, v3

    or-long/2addr p1, v0

    iget-object p0, p0, Lf2/e0;->o:Lf2/y;

    invoke-virtual {p0, p1, p2}, Lf2/y;->t(J)J

    move-result-wide p1

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    int-to-long v0, p3

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    int-to-long p3, p3

    shl-long/2addr v0, v2

    and-long/2addr p3, v3

    or-long/2addr p3, v0

    invoke-virtual {p0, p3, p4}, Lf2/y;->t(J)J

    move-result-wide p3

    new-instance p0, Landroid/graphics/Rect;

    shr-long v0, p1, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    shr-long v5, p3, v2

    long-to-int v2, v5

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-float v1, v5

    float-to-int v1, v1

    and-long/2addr p1, v3

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    and-long/2addr p3, v3

    long-to-int p3, p3

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p4

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float p2, v3

    float-to-int p2, p2

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p4

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->max(FF)F

    move-result p4

    float-to-double v2, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float p4, v2

    float-to-int p4, p4

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float p1, v2

    float-to-int p1, p1

    invoke-direct {p0, v1, p2, p4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public final J()V
    .locals 32

    move-object/from16 v0, p0

    new-instance v1, Lk/y;

    invoke-direct {v1}, Lk/y;-><init>()V

    iget-object v2, v0, Lf2/e0;->M:Lk/y;

    iget-object v3, v2, Lk/y;->b:[I

    iget-object v4, v2, Lk/y;->a:[J

    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    iget-object v6, v0, Lf2/e0;->S:Lk/x;

    const/16 v14, 0x8

    if-ltz v5, :cond_8

    const/4 v7, 0x0

    const-wide/16 v16, 0x80

    const-wide/16 v18, 0xff

    :goto_0
    aget-wide v9, v4, v7

    const/4 v8, 0x7

    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    not-long v11, v9

    shl-long/2addr v11, v8

    and-long/2addr v11, v9

    and-long v11, v11, v20

    cmp-long v11, v11, v20

    if-eqz v11, :cond_7

    sub-int v11, v7, v5

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    rsub-int/lit8 v11, v11, 0x8

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_6

    and-long v22, v9, v18

    cmp-long v13, v22, v16

    if-gez v13, :cond_4

    shl-int/lit8 v13, v7, 0x3

    add-int/2addr v13, v12

    aget v13, v3, v13

    move/from16 v22, v8

    invoke-virtual {v0}, Lf2/e0;->l()Lk/k;

    move-result-object v8

    invoke-virtual {v8, v13}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lm2/q;

    const/16 v23, 0x0

    if-eqz v8, :cond_0

    iget-object v8, v8, Lm2/q;->a:Lm2/p;

    goto :goto_2

    :cond_0
    move-object/from16 v8, v23

    :goto_2
    if-eqz v8, :cond_1

    iget-object v8, v8, Lm2/p;->d:Lm2/m;

    sget-object v15, Lm2/t;->d:Lm2/w;

    iget-object v8, v8, Lm2/m;->l:Lk/m0;

    invoke-virtual {v8, v15}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    :cond_1
    invoke-virtual {v1, v13}, Lk/y;->a(I)Z

    invoke-virtual {v6, v13}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lf2/j2;

    if-eqz v8, :cond_3

    iget-object v8, v8, Lf2/j2;->a:Lm2/m;

    sget-object v15, Lm2/t;->d:Lm2/w;

    iget-object v8, v8, Lm2/m;->l:Lk/m0;

    invoke-virtual {v8, v15}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    goto :goto_3

    :cond_2
    move-object/from16 v23, v8

    :goto_3
    check-cast v23, Ljava/lang/String;

    :cond_3
    move-object/from16 v8, v23

    const/16 v15, 0x20

    invoke-virtual {v0, v13, v15, v8}, Lf2/e0;->y(IILjava/lang/String;)V

    goto :goto_4

    :cond_4
    move/from16 v22, v8

    :cond_5
    :goto_4
    shr-long/2addr v9, v14

    add-int/lit8 v12, v12, 0x1

    move/from16 v8, v22

    goto :goto_1

    :cond_6
    move/from16 v22, v8

    if-ne v11, v14, :cond_9

    goto :goto_5

    :cond_7
    move/from16 v22, v8

    :goto_5
    if-eq v7, v5, :cond_9

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_8
    const-wide/16 v16, 0x80

    const-wide/16 v18, 0xff

    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v22, 0x7

    :cond_9
    iget-object v3, v1, Lk/y;->b:[I

    iget-object v1, v1, Lk/y;->a:[J

    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_11

    const/4 v5, 0x0

    :goto_6
    aget-wide v7, v1, v5

    not-long v9, v7

    shl-long v9, v9, v22

    and-long/2addr v9, v7

    and-long v9, v9, v20

    cmp-long v9, v9, v20

    if-eqz v9, :cond_10

    sub-int v9, v5, v4

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    rsub-int/lit8 v9, v9, 0x8

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v9, :cond_f

    and-long v11, v7, v18

    cmp-long v11, v11, v16

    if-gez v11, :cond_d

    shl-int/lit8 v11, v5, 0x3

    add-int/2addr v11, v10

    aget v11, v3, v11

    invoke-static {v11}, Ljava/lang/Integer;->hashCode(I)I

    move-result v12

    const v13, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v12, v13

    shl-int/lit8 v13, v12, 0x10

    xor-int/2addr v12, v13

    and-int/lit8 v13, v12, 0x7f

    iget v15, v2, Lk/y;->c:I

    ushr-int/lit8 v12, v12, 0x7

    and-int/2addr v12, v15

    move/from16 v24, v14

    const/16 v23, 0x0

    :goto_8
    iget-object v14, v2, Lk/y;->a:[J

    shr-int/lit8 v25, v12, 0x3

    and-int/lit8 v26, v12, 0x7

    move-object/from16 v27, v1

    shl-int/lit8 v1, v26, 0x3

    aget-wide v28, v14, v25

    ushr-long v28, v28, v1

    add-int/lit8 v25, v25, 0x1

    aget-wide v25, v14, v25

    rsub-int/lit8 v14, v1, 0x40

    shl-long v25, v25, v14

    move-wide/from16 v30, v7

    int-to-long v7, v1

    neg-long v7, v7

    const/16 v1, 0x3f

    shr-long/2addr v7, v1

    and-long v7, v25, v7

    or-long v7, v28, v7

    move v1, v15

    int-to-long v14, v13

    const-wide v25, 0x101010101010101L

    mul-long v14, v14, v25

    xor-long/2addr v14, v7

    sub-long v25, v14, v25

    not-long v14, v14

    and-long v14, v25, v14

    and-long v14, v14, v20

    :goto_9
    const-wide/16 v25, 0x0

    cmp-long v28, v14, v25

    if-eqz v28, :cond_b

    invoke-static {v14, v15}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v25

    shr-int/lit8 v25, v25, 0x3

    add-int v25, v12, v25

    and-int v25, v25, v1

    move/from16 v28, v1

    iget-object v1, v2, Lk/y;->b:[I

    aget v1, v1, v25

    if-ne v1, v11, :cond_a

    :goto_a
    move/from16 v1, v25

    goto :goto_b

    :cond_a
    const-wide/16 v25, 0x1

    sub-long v25, v14, v25

    and-long v14, v14, v25

    move/from16 v1, v28

    goto :goto_9

    :cond_b
    move/from16 v28, v1

    not-long v14, v7

    const/4 v1, 0x6

    shl-long/2addr v14, v1

    and-long/2addr v7, v14

    and-long v7, v7, v20

    cmp-long v1, v7, v25

    if-eqz v1, :cond_c

    const/16 v25, -0x1

    goto :goto_a

    :goto_b
    if-ltz v1, :cond_e

    invoke-virtual {v2, v1}, Lk/y;->f(I)V

    goto :goto_c

    :cond_c
    add-int/lit8 v23, v23, 0x8

    add-int v12, v12, v23

    and-int v12, v12, v28

    move-object/from16 v1, v27

    move/from16 v15, v28

    move-wide/from16 v7, v30

    goto :goto_8

    :cond_d
    move-object/from16 v27, v1

    move-wide/from16 v30, v7

    move/from16 v24, v14

    :cond_e
    :goto_c
    shr-long v7, v30, v24

    add-int/lit8 v10, v10, 0x1

    move/from16 v14, v24

    move-object/from16 v1, v27

    goto/16 :goto_7

    :cond_f
    move-object/from16 v27, v1

    move v1, v14

    if-ne v9, v1, :cond_11

    goto :goto_d

    :cond_10
    move-object/from16 v27, v1

    :goto_d
    if-eq v5, v4, :cond_11

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v27

    const/16 v14, 0x8

    goto/16 :goto_6

    :cond_11
    invoke-virtual {v6}, Lk/x;->c()V

    invoke-virtual {v0}, Lf2/e0;->l()Lk/k;

    move-result-object v1

    iget-object v3, v1, Lk/k;->b:[I

    iget-object v4, v1, Lk/k;->c:[Ljava/lang/Object;

    iget-object v1, v1, Lk/k;->a:[J

    array-length v5, v1

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_16

    const/4 v7, 0x0

    :goto_e
    aget-wide v8, v1, v7

    not-long v10, v8

    shl-long v10, v10, v22

    and-long/2addr v10, v8

    and-long v10, v10, v20

    cmp-long v10, v10, v20

    if-eqz v10, :cond_15

    sub-int v10, v7, v5

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v24, 0x8

    rsub-int/lit8 v14, v10, 0x8

    const/4 v10, 0x0

    :goto_f
    if-ge v10, v14, :cond_14

    and-long v11, v8, v18

    cmp-long v11, v11, v16

    if-gez v11, :cond_13

    shl-int/lit8 v11, v7, 0x3

    add-int/2addr v11, v10

    aget v12, v3, v11

    aget-object v11, v4, v11

    check-cast v11, Lm2/q;

    iget-object v11, v11, Lm2/q;->a:Lm2/p;

    iget-object v13, v11, Lm2/p;->d:Lm2/m;

    sget-object v15, Lm2/t;->d:Lm2/w;

    iget-object v13, v13, Lm2/m;->l:Lk/m0;

    invoke-virtual {v13, v15}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-virtual {v2, v12}, Lk/y;->a(I)Z

    move-result v13

    if-eqz v13, :cond_12

    iget-object v13, v11, Lm2/p;->d:Lm2/m;

    invoke-virtual {v13, v15}, Lm2/m;->c(Lm2/w;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const/16 v15, 0x10

    invoke-virtual {v0, v12, v15, v13}, Lf2/e0;->y(IILjava/lang/String;)V

    :cond_12
    new-instance v13, Lf2/j2;

    invoke-virtual {v0}, Lf2/e0;->l()Lk/k;

    move-result-object v15

    invoke-direct {v13, v11, v15}, Lf2/j2;-><init>(Lm2/p;Lk/k;)V

    invoke-virtual {v6, v12, v13}, Lk/x;->h(ILjava/lang/Object;)V

    :cond_13
    const/16 v11, 0x8

    shr-long/2addr v8, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :cond_14
    const/16 v11, 0x8

    if-ne v14, v11, :cond_16

    goto :goto_10

    :cond_15
    const/16 v11, 0x8

    :goto_10
    if-eq v7, v5, :cond_16

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_16
    new-instance v1, Lf2/j2;

    iget-object v2, v0, Lf2/e0;->o:Lf2/y;

    invoke-virtual {v2}, Lf2/y;->getSemanticsOwner()Lm2/r;

    move-result-object v2

    invoke-virtual {v2}, Lm2/r;->a()Lm2/p;

    move-result-object v2

    invoke-virtual {v0}, Lf2/e0;->l()Lk/k;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lf2/j2;-><init>(Lm2/p;Lk/k;)V

    iput-object v1, v0, Lf2/e0;->T:Lf2/j2;

    return-void
.end method

.method public final a(Landroid/view/View;)Lq3/k;
    .locals 0

    iget-object p0, p0, Lf2/e0;->v:Lf2/z;

    return-object p0
.end method

.method public final c(ILr3/g;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    iget-object v3, v3, Lr3/g;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Lf2/e0;->l()Lk/k;

    move-result-object v5

    invoke-virtual {v5, v1}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm2/q;

    if-eqz v5, :cond_1b

    iget-object v5, v5, Lm2/q;->a:Lm2/p;

    if-nez v5, :cond_0

    goto/16 :goto_c

    :cond_0
    iget-object v6, v5, Lm2/p;->c:Le2/g0;

    iget-object v7, v5, Lm2/p;->d:Lm2/m;

    iget-object v8, v7, Lm2/m;->l:Lk/m0;

    invoke-static {v5}, Lf2/e0;->m(Lm2/p;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lf2/e0;->P:Ljava/lang/String;

    invoke-static {v2, v10}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, -0x1

    if-eqz v10, :cond_1

    iget-object v0, v0, Lf2/e0;->N:Lk/v;

    invoke-virtual {v0, v1}, Lk/v;->d(I)I

    move-result v0

    if-eq v0, v11, :cond_1b

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_1
    iget-object v10, v0, Lf2/e0;->Q:Ljava/lang/String;

    invoke-static {v2, v10}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v0, v0, Lf2/e0;->O:Lk/v;

    invoke-virtual {v0, v1}, Lk/v;->d(I)I

    move-result v0

    if-eq v0, v11, :cond_1b

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_2
    sget-object v1, Lm2/l;->a:Lm2/w;

    invoke-virtual {v8, v1}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v1

    iget-object v10, v0, Lf2/e0;->o:Lf2/y;

    const/4 v12, 0x0

    if-eqz v1, :cond_d

    if-eqz v4, :cond_d

    const-string v1, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    invoke-static {v2, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v0, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX"

    invoke-virtual {v4, v0, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH"

    invoke-virtual {v4, v1, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_c

    if-ltz v0, :cond_c

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_0

    :cond_3
    const v4, 0x7fffffff

    :goto_0
    if-lt v0, v4, :cond_4

    goto/16 :goto_6

    :cond_4
    invoke-static {v7}, Lf2/k0;->k(Lm2/m;)Lp2/j0;

    move-result-object v4

    if-nez v4, :cond_5

    goto/16 :goto_c

    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v1, :cond_b

    add-int v8, v0, v7

    iget-object v9, v4, Lp2/j0;->a:Lp2/i0;

    iget-object v9, v9, Lp2/i0;->a:Lp2/g;

    iget-object v9, v9, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v8, v9, :cond_6

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v18, v0

    move/from16 p4, v1

    move-object v15, v10

    goto/16 :goto_5

    :cond_6
    invoke-virtual {v4, v8}, Lp2/j0;->b(I)Ll1/c;

    move-result-object v8

    invoke-virtual {v5}, Lm2/p;->d()Le2/h1;

    move-result-object v9

    const-wide/16 v14, 0x0

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Le2/h1;->U0()Lf1/q;

    move-result-object v11

    iget-boolean v11, v11, Lf1/q;->y:Z

    if-eqz v11, :cond_7

    goto :goto_2

    :cond_7
    move-object v9, v12

    :goto_2
    if-eqz v9, :cond_8

    invoke-virtual {v9, v14, v15}, Le2/h1;->R(J)J

    move-result-wide v14

    :cond_8
    invoke-virtual {v8, v14, v15}, Ll1/c;->j(J)Ll1/c;

    move-result-object v8

    invoke-virtual {v5}, Lm2/p;->g()Ll1/c;

    move-result-object v9

    invoke-virtual {v8, v9}, Ll1/c;->h(Ll1/c;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v8, v9}, Ll1/c;->f(Ll1/c;)Ll1/c;

    move-result-object v8

    goto :goto_3

    :cond_9
    move-object v8, v12

    :goto_3
    if-eqz v8, :cond_a

    iget v9, v8, Ll1/c;->a:F

    iget v11, v8, Ll1/c;->b:F

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    int-to-long v14, v9

    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    int-to-long v12, v9

    const/16 v9, 0x20

    shl-long/2addr v14, v9

    const-wide v16, 0xffffffffL

    and-long v11, v12, v16

    or-long/2addr v11, v14

    invoke-virtual {v10, v11, v12}, Lf2/y;->t(J)J

    move-result-wide v11

    iget v13, v8, Ll1/c;->c:F

    iget v8, v8, Ll1/c;->d:F

    invoke-static {v13}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v13

    int-to-long v13, v13

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    move/from16 p0, v9

    move-object v15, v10

    int-to-long v9, v8

    shl-long v13, v13, p0

    and-long v8, v9, v16

    or-long/2addr v8, v13

    invoke-virtual {v15, v8, v9}, Lf2/y;->t(J)J

    move-result-wide v8

    new-instance v10, Landroid/graphics/RectF;

    shr-long v13, v11, p0

    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    move/from16 v18, v0

    move/from16 p4, v1

    shr-long v0, v8, p0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v14, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    and-long v11, v11, v16

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    and-long v8, v8, v16

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    invoke-static {v12, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v12, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    invoke-static {v11, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-direct {v10, v1, v9, v0, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_4

    :cond_a
    move/from16 v18, v0

    move/from16 p4, v1

    move-object v15, v10

    const/4 v10, 0x0

    :goto_4
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v7, v7, 0x1

    move/from16 v1, p4

    move-object v10, v15

    move/from16 v0, v18

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/graphics/RectF;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-void

    :cond_c
    :goto_6
    const-string v0, "AccessibilityDelegate"

    const-string v1, "Invalid arguments for accessibility character locations"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    move-object v15, v10

    sget-object v1, Lm2/t;->z:Lm2/w;

    invoke-virtual {v8, v1}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    if-eqz v4, :cond_f

    const-string v4, "androidx.compose.ui.semantics.testTag"

    invoke-static {v2, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v8, v1}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v12, 0x0

    goto :goto_7

    :cond_e
    move-object v12, v0

    :goto_7
    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_1b

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2, v12}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void

    :cond_f
    const-string v1, "androidx.compose.ui.semantics.id"

    invoke-static {v2, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iget v1, v5, Lm2/p;->g:I

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_10
    const-string v1, "androidx.compose.ui.semantics.shapeType"

    invoke-static {v2, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const-string v7, "androidx.compose.ui.semantics.shapeRegion"

    const-string v9, "androidx.compose.ui.semantics.shapeCorners"

    const-string v10, "androidx.compose.ui.semantics.shapeRect"

    if-eqz v4, :cond_15

    sget-object v2, Lm2/t;->P:Lm2/w;

    invoke-virtual {v8, v2}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_11

    const/4 v12, 0x0

    goto :goto_8

    :cond_11
    move-object v12, v2

    :goto_8
    check-cast v12, Lm1/h0;

    if-eqz v12, :cond_1b

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v5, v2, v12}, Lf2/e0;->n(Lm2/p;Landroid/graphics/Rect;Lm1/h0;)Ll1/c;

    move-result-object v0

    iget v2, v0, Ll1/c;->b:F

    iget v4, v0, Ll1/c;->a:F

    invoke-virtual {v0}, Ll1/c;->d()J

    move-result-wide v13

    iget-object v0, v6, Le2/g0;->L:Lb3/m;

    invoke-virtual {v15}, Lf2/y;->getDensity()Lb3/c;

    move-result-object v5

    invoke-interface {v12, v13, v14, v0, v5}, Lm1/h0;->a(JLb3/m;Lb3/c;)Lm1/v;

    move-result-object v0

    instance-of v5, v0, Lm1/b0;

    if-eqz v5, :cond_12

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v4, v2}, Lf2/e0;->E(Lm1/v;FF)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void

    :cond_12
    instance-of v5, v0, Lm1/c0;

    if-eqz v5, :cond_13

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v4, v2}, Lf2/e0;->E(Lm1/v;FF)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0}, Lf2/e0;->G(Lm1/v;)[F

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    return-void

    :cond_13
    instance-of v5, v0, Lm1/a0;

    if-eqz v5, :cond_14

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v1, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v4, v2}, Lf2/e0;->H(Lm1/v;FF)Landroid/graphics/Region;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void

    :cond_14
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_15
    invoke-static {v2, v10}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v1, Lm2/t;->P:Lm2/w;

    invoke-virtual {v8, v1}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_16

    const/4 v12, 0x0

    goto :goto_9

    :cond_16
    move-object v12, v1

    :goto_9
    check-cast v12, Lm1/h0;

    if-eqz v12, :cond_1b

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v5, v1, v12}, Lf2/e0;->n(Lm2/p;Landroid/graphics/Rect;Lm1/h0;)Ll1/c;

    move-result-object v0

    invoke-virtual {v0}, Ll1/c;->d()J

    move-result-wide v1

    iget-object v4, v6, Le2/g0;->L:Lb3/m;

    invoke-virtual {v15}, Lf2/y;->getDensity()Lb3/c;

    move-result-object v5

    invoke-interface {v12, v1, v2, v4, v5}, Lm1/h0;->a(JLb3/m;Lb3/c;)Lm1/v;

    move-result-object v1

    iget v2, v0, Ll1/c;->a:F

    iget v0, v0, Ll1/c;->b:F

    invoke-static {v1, v2, v0}, Lf2/e0;->E(Lm1/v;FF)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v10, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void

    :cond_17
    invoke-static {v2, v9}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object v1, Lm2/t;->P:Lm2/w;

    invoke-virtual {v8, v1}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_18

    const/4 v12, 0x0

    goto :goto_a

    :cond_18
    move-object v12, v1

    :goto_a
    check-cast v12, Lm1/h0;

    if-eqz v12, :cond_1b

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v5, v1, v12}, Lf2/e0;->n(Lm2/p;Landroid/graphics/Rect;Lm1/h0;)Ll1/c;

    move-result-object v0

    invoke-virtual {v0}, Ll1/c;->d()J

    move-result-wide v0

    iget-object v2, v6, Le2/g0;->L:Lb3/m;

    invoke-virtual {v15}, Lf2/y;->getDensity()Lb3/c;

    move-result-object v4

    invoke-interface {v12, v0, v1, v2, v4}, Lm1/h0;->a(JLb3/m;Lb3/c;)Lm1/v;

    move-result-object v0

    invoke-static {v0}, Lf2/e0;->G(Lm1/v;)[F

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v9, v0}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    return-void

    :cond_19
    invoke-static {v2, v7}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    sget-object v1, Lm2/t;->P:Lm2/w;

    invoke-virtual {v8, v1}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1a

    const/4 v12, 0x0

    goto :goto_b

    :cond_1a
    move-object v12, v1

    :goto_b
    check-cast v12, Lm1/h0;

    if-eqz v12, :cond_1b

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v5, v1, v12}, Lf2/e0;->n(Lm2/p;Landroid/graphics/Rect;Lm1/h0;)Ll1/c;

    move-result-object v0

    invoke-virtual {v0}, Ll1/c;->d()J

    move-result-wide v1

    iget-object v4, v6, Le2/g0;->L:Lb3/m;

    invoke-virtual {v15}, Lf2/y;->getDensity()Lb3/c;

    move-result-object v5

    invoke-interface {v12, v1, v2, v4, v5}, Lm1/h0;->a(JLb3/m;Lb3/c;)Lm1/v;

    move-result-object v1

    iget v2, v0, Ll1/c;->a:F

    iget v0, v0, Ll1/c;->b:F

    invoke-static {v1, v2, v0}, Lf2/e0;->H(Lm1/v;FF)Landroid/graphics/Region;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v7, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1b
    :goto_c
    return-void
.end method

.method public final d(Lm2/q;)Landroid/graphics/Rect;
    .locals 3

    iget-object p1, p1, Lm2/q;->b:Lb3/k;

    iget v0, p1, Lb3/k;->a:I

    int-to-float v0, v0

    iget v1, p1, Lb3/k;->b:I

    int-to-float v1, v1

    iget v2, p1, Lb3/k;->c:I

    int-to-float v2, v2

    iget p1, p1, Lb3/k;->d:I

    int-to-float p1, p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lf2/e0;->F(FFFF)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final e(La9/c;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lf2/b0;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lf2/b0;

    iget v3, v2, Lf2/b0;->p:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lf2/b0;->p:I

    goto :goto_0

    :cond_0
    new-instance v2, Lf2/b0;

    invoke-direct {v2, v0, v1}, Lf2/b0;-><init>(Lf2/e0;La9/c;)V

    :goto_0
    iget-object v1, v2, Lf2/b0;->n:Ljava/lang/Object;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v4, v2, Lf2/b0;->p:I

    const/4 v5, 0x2

    iget-object v6, v0, Lf2/e0;->H:Lk/f;

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v4, v2, Lf2/b0;->m:Lw9/b;

    iget-object v8, v2, Lf2/b0;->l:Lk/y;

    :try_start_0
    invoke-static {v1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v5

    move-object v9, v6

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    move-object v9, v6

    goto/16 :goto_8

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, v2, Lf2/b0;->m:Lw9/b;

    iget-object v8, v2, Lf2/b0;->l:Lk/y;

    :try_start_1
    invoke-static {v1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    invoke-static {v1}, La/a;->E(Ljava/lang/Object;)V

    :try_start_2
    new-instance v1, Lk/y;

    invoke-direct {v1}, Lk/y;-><init>()V

    iget-object v4, v0, Lf2/e0;->I:Lw9/e;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lw9/b;

    invoke-direct {v8, v4}, Lw9/b;-><init>(Lw9/e;)V

    :goto_1
    iput-object v1, v2, Lf2/b0;->l:Lk/y;

    iput-object v8, v2, Lf2/b0;->m:Lw9/b;

    iput v7, v2, Lf2/b0;->p:I

    invoke-virtual {v8, v2}, Lw9/b;->b(La9/c;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_4

    goto/16 :goto_6

    :cond_4
    move-object v15, v8

    move-object v8, v1

    move-object v1, v4

    move-object v4, v15

    :goto_2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v4}, Lw9/b;->c()Ljava/lang/Object;

    invoke-virtual {v0}, Lf2/e0;->o()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, v6, Lk/f;->n:I

    const/4 v9, 0x0

    move v10, v9

    :goto_3
    if-ge v10, v1, :cond_5

    iget-object v11, v6, Lk/f;->m:[Ljava/lang/Object;

    aget-object v11, v11, v10

    check-cast v11, Le2/g0;

    invoke-virtual {v0, v11, v8}, Lf2/e0;->B(Le2/g0;Lk/y;)V

    invoke-virtual {v0, v11}, Lf2/e0;->C(Le2/g0;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    iput v9, v8, Lk/y;->d:I

    iget-object v1, v8, Lk/y;->a:[J

    sget-object v9, Lk/t0;->a:[J

    if-eq v1, v9, :cond_6

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    invoke-static {v1, v9, v10}, Lu8/l;->q0([JJ)V

    iget-object v1, v8, Lk/y;->a:[J

    iget v9, v8, Lk/y;->c:I

    shr-int/lit8 v10, v9, 0x3

    and-int/lit8 v9, v9, 0x7

    shl-int/lit8 v9, v9, 0x3

    aget-wide v11, v1, v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v13, 0xff

    shl-long/2addr v13, v9

    move-object v9, v6

    not-long v5, v13

    and-long/2addr v5, v11

    or-long/2addr v5, v13

    :try_start_3
    aput-wide v5, v1, v10

    goto :goto_4

    :cond_6
    move-object v9, v6

    :goto_4
    iget v1, v8, Lk/y;->c:I

    invoke-static {v1}, Lk/t0;->a(I)I

    move-result v1

    iget v5, v8, Lk/y;->d:I

    sub-int/2addr v1, v5

    iput v1, v8, Lk/y;->e:I

    iget-boolean v1, v0, Lf2/e0;->U:Z

    if-nez v1, :cond_8

    iput-boolean v7, v0, Lf2/e0;->U:Z

    iget-object v1, v0, Lf2/e0;->u:Landroid/os/Handler;

    iget-object v5, v0, Lf2/e0;->W:Landroidx/lifecycle/f0;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_8

    :cond_7
    move-object v9, v6

    :cond_8
    :goto_5
    invoke-virtual {v9}, Lk/f;->clear()V

    iget-object v1, v0, Lf2/e0;->B:Lk/x;

    invoke-virtual {v1}, Lk/x;->c()V

    iget-object v1, v0, Lf2/e0;->C:Lk/x;

    invoke-virtual {v1}, Lk/x;->c()V

    iget-wide v5, v0, Lf2/e0;->s:J

    iput-object v8, v2, Lf2/b0;->l:Lk/y;

    iput-object v4, v2, Lf2/b0;->m:Lw9/b;

    const/4 v1, 0x2

    iput v1, v2, Lf2/b0;->p:I

    invoke-static {v5, v6, v2}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v5, v3, :cond_9

    :goto_6
    return-object v3

    :cond_9
    :goto_7
    move v5, v1

    move-object v1, v8

    move-object v6, v9

    move-object v8, v4

    goto/16 :goto_1

    :cond_a
    move-object v9, v6

    invoke-virtual {v9}, Lk/f;->clear()V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :goto_8
    invoke-virtual {v9}, Lk/f;->clear()V

    throw v0
.end method

.method public final f(IJZ)Z
    .locals 21

    move-wide/from16 v0, p2

    move/from16 v2, p4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-static {v3, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/16 v16, 0x0

    goto/16 :goto_a

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lf2/e0;->l()Lk/k;

    move-result-object v3

    const-wide v5, 0x7fc000007fc00000L    # 2.247117487993712E307

    invoke-static {v0, v1, v5, v6}, Ll1/b;->b(JJ)Z

    move-result v5

    if-nez v5, :cond_0

    const-wide v5, 0x7fffffff7fffffffL

    and-long/2addr v5, v0

    const-wide v7, 0x7fffff007fffffL

    add-long/2addr v5, v7

    const-wide v7, -0x7fffffff80000000L    # -1.0609978955E-314

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    sget-object v2, Lm2/t;->v:Lm2/w;

    goto :goto_0

    :cond_2
    if-nez v2, :cond_11

    sget-object v2, Lm2/t;->u:Lm2/w;

    :goto_0
    iget-object v6, v3, Lk/k;->c:[Ljava/lang/Object;

    iget-object v3, v3, Lk/k;->a:[J

    array-length v7, v3

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    aget-wide v10, v3, v8

    not-long v12, v10

    const/4 v14, 0x7

    shl-long/2addr v12, v14

    and-long/2addr v12, v10

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v12, v14

    cmp-long v12, v12, v14

    if-eqz v12, :cond_f

    sub-int v12, v8, v7

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v13, 0x8

    rsub-int/lit8 v12, v12, 0x8

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v12, :cond_d

    const-wide/16 v15, 0xff

    and-long/2addr v15, v10

    const-wide/16 v17, 0x80

    cmp-long v15, v15, v17

    if-gez v15, :cond_b

    shl-int/lit8 v15, v8, 0x3

    add-int/2addr v15, v14

    aget-object v15, v6, v15

    check-cast v15, Lm2/q;

    const/16 v16, 0x0

    iget-object v4, v15, Lm2/q;->b:Lb3/k;

    iget v5, v4, Lb3/k;->a:I

    int-to-float v5, v5

    move/from16 p4, v13

    iget v13, v4, Lb3/k;->b:I

    int-to-float v13, v13

    iget v0, v4, Lb3/k;->c:I

    int-to-float v0, v0

    iget v1, v4, Lb3/k;->d:I

    int-to-float v1, v1

    const/16 v4, 0x20

    move/from16 v17, v0

    move/from16 v18, v1

    shr-long v0, p2, v4

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const-wide v19, 0xffffffffL

    move v4, v0

    and-long v0, p2, v19

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    cmpl-float v1, v4, v5

    if-ltz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    move/from16 v1, v16

    :goto_3
    cmpg-float v4, v4, v17

    if-gez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    move/from16 v4, v16

    :goto_4
    and-int/2addr v1, v4

    cmpl-float v4, v0, v13

    if-ltz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_5

    :cond_5
    move/from16 v4, v16

    :goto_5
    and-int/2addr v1, v4

    cmpg-float v0, v0, v18

    if-gez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    move/from16 v0, v16

    :goto_6
    and-int/2addr v0, v1

    if-nez v0, :cond_7

    goto :goto_8

    :cond_7
    iget-object v0, v15, Lm2/q;->a:Lm2/p;

    iget-object v0, v0, Lm2/p;->d:Lm2/m;

    iget-object v0, v0, Lm2/m;->l:Lk/m0;

    invoke-virtual {v0, v2}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    check-cast v0, Lm2/i;

    if-nez v0, :cond_9

    goto :goto_8

    :cond_9
    iget-object v1, v0, Lm2/i;->a:Li9/a;

    if-gez p1, :cond_a

    invoke-interface {v1}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    :goto_7
    const/4 v9, 0x1

    goto :goto_8

    :cond_a
    invoke-interface {v1}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-object v0, v0, Lm2/i;->b:Li9/a;

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_c

    goto :goto_7

    :cond_b
    move/from16 p4, v13

    const/16 v16, 0x0

    :cond_c
    :goto_8
    shr-long v10, v10, p4

    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v0, p2

    move/from16 v13, p4

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_d
    move v0, v13

    const/16 v16, 0x0

    if-ne v12, v0, :cond_e

    goto :goto_9

    :cond_e
    return v9

    :cond_f
    const/16 v16, 0x0

    :goto_9
    if-eq v8, v7, :cond_10

    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v0, p2

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_10
    return v9

    :cond_11
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :goto_a
    return v16
.end method

.method public final g()V
    .locals 2

    const-string v0, "sendAccessibilitySemanticsStructureChangeEvents"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lf2/e0;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf2/e0;->o:Lf2/y;

    invoke-virtual {v0}, Lf2/y;->getSemanticsOwner()Lm2/r;

    move-result-object v0

    invoke-virtual {v0}, Lm2/r;->a()Lm2/p;

    move-result-object v0

    iget-object v1, p0, Lf2/e0;->T:Lf2/j2;

    invoke-virtual {p0, v0, v1}, Lf2/e0;->u(Lm2/p;Lf2/j2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v0, "sendSemanticsPropertyChangeEvents"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {p0}, Lf2/e0;->l()Lk/k;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf2/e0;->A(Lk/k;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v0, "updateSemanticsNodesCopyAndPanes"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_2
    invoke-virtual {p0}, Lf2/e0;->J()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :catchall_1
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :catchall_2
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final h(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 2

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    const-string v0, "android.view.View"

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lf2/e0;->o:Lf2/y;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    invoke-virtual {p0}, Lf2/e0;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lf2/e0;->l()Lk/k;

    move-result-object p0

    invoke-virtual {p0, p1}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm2/q;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lm2/q;->a:Lm2/p;

    iget-object p1, p0, Lm2/p;->d:Lm2/m;

    sget-object v0, Lm2/t;->K:Lm2/w;

    iget-object p1, p1, Lm2/m;->l:Lk/m0;

    invoke-virtual {p1, v0}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    iget-object p0, p0, Lm2/p;->d:Lm2/m;

    sget-object p1, Lm2/t;->n:Lm2/w;

    iget-object p0, p0, Lm2/m;->l:Lk/m0;

    invoke-virtual {p0, p1}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    if-lt p1, v0, :cond_1

    invoke-static {p2, p0}, Lr3/b;->f(Landroid/view/accessibility/AccessibilityEvent;Z)V

    :cond_1
    return-object p2
.end method

.method public final i(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/CharSequence;)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    const/16 v0, 0x2000

    invoke-virtual {p0, p1, v0}, Lf2/e0;->h(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    :cond_2
    if-eqz p5, :cond_3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object p0
.end method

.method public final j(Lm2/p;)I
    .locals 2

    iget-object v0, p1, Lm2/p;->d:Lm2/m;

    iget-object p1, p1, Lm2/p;->d:Lm2/m;

    sget-object v1, Lm2/t;->a:Lm2/w;

    sget-object v1, Lm2/t;->a:Lm2/w;

    iget-object v0, v0, Lm2/m;->l:Lk/m0;

    invoke-virtual {v0, v1}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lm2/t;->G:Lm2/w;

    iget-object v1, p1, Lm2/m;->l:Lk/m0;

    invoke-virtual {v1, v0}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lm2/m;->c(Lm2/w;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp2/l0;

    iget-wide p0, p0, Lp2/l0;->a:J

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0

    :cond_0
    iget p0, p0, Lf2/e0;->F:I

    return p0
.end method

.method public final k(Lm2/p;)I
    .locals 2

    iget-object v0, p1, Lm2/p;->d:Lm2/m;

    iget-object p1, p1, Lm2/p;->d:Lm2/m;

    sget-object v1, Lm2/t;->a:Lm2/w;

    sget-object v1, Lm2/t;->a:Lm2/w;

    iget-object v0, v0, Lm2/m;->l:Lk/m0;

    invoke-virtual {v0, v1}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lm2/t;->G:Lm2/w;

    iget-object v1, p1, Lm2/m;->l:Lk/m0;

    invoke-virtual {v1, v0}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lm2/m;->c(Lm2/w;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp2/l0;

    iget-wide p0, p0, Lp2/l0;->a:J

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0

    :cond_0
    iget p0, p0, Lf2/e0;->F:I

    return p0
.end method

.method public final l()Lk/k;
    .locals 7

    iget-boolean v0, p0, Lf2/e0;->J:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf2/e0;->J:Z

    iget-object v0, p0, Lf2/e0;->o:Lf2/y;

    invoke-virtual {v0}, Lf2/y;->getSemanticsOwner()Lm2/r;

    move-result-object v1

    sget-object v2, Lf2/r;->n:Lf2/r;

    invoke-static {v1, v2}, Lm2/s;->b(Lm2/r;Li9/c;)Lk/x;

    move-result-object v1

    iput-object v1, p0, Lf2/e0;->L:Lk/x;

    invoke-virtual {p0}, Lf2/e0;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lf2/e0;->L:Lk/x;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lf2/e0;->N:Lk/v;

    invoke-virtual {v2}, Lk/v;->a()V

    iget-object v3, p0, Lf2/e0;->O:Lk/v;

    invoke-virtual {v3}, Lk/v;->a()V

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm2/q;

    if-eqz v4, :cond_0

    iget-object v4, v4, Lm2/q;->a:Lm2/p;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Lj9/n;->d(Ljava/lang/Object;)V

    new-instance v5, Landroidx/fragment/app/t;

    const/4 v6, 0x7

    invoke-direct {v5, v6, v1}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    new-instance v1, Landroidx/fragment/app/t;

    const/16 v6, 0x8

    invoke-direct {v1, v6, v0}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    invoke-static {v4}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v5, v1, v0}, Lm2/y;->b(Lm2/p;Landroidx/fragment/app/t;Landroidx/fragment/app/t;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->A(Ljava/util/List;)I

    move-result v1

    const/4 v4, 0x1

    if-gt v4, v1, :cond_1

    :goto_1
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm2/p;

    iget v5, v5, Lm2/p;->g:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lm2/p;

    iget v6, v6, Lm2/p;->g:I

    invoke-virtual {v2, v5, v6}, Lk/v;->f(II)V

    invoke-virtual {v3, v6, v5}, Lk/v;->f(II)V

    if-eq v4, v1, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lf2/e0;->L:Lk/x;

    return-object p0
.end method

.method public final n(Lm2/p;Landroid/graphics/Rect;Lm1/h0;)Ll1/c;
    .locals 9

    new-instance v0, Lf2/c0;

    invoke-direct {v0, p3}, Lf2/c0;-><init>(Lm1/h0;)V

    iget-object p1, p1, Lm2/p;->c:Le2/g0;

    iget-object p3, p1, Le2/g0;->R:Le2/c1;

    iget-object p3, p3, Le2/c1;->f:Lf1/q;

    iget v1, p3, Lf1/q;->o:I

    and-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_8

    :goto_0
    if-eqz p3, :cond_8

    iget v1, p3, Lf1/q;->n:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    move-object v1, p3

    move-object v5, v4

    :goto_1
    if-eqz v1, :cond_7

    instance-of v6, v1, Le2/z1;

    if-eqz v6, :cond_0

    move-object v6, v1

    check-cast v6, Le2/z1;

    invoke-interface {v6, v0}, Le2/z1;->C(Lm2/x;)V

    iget-boolean v6, v0, Lf2/c0;->l:Z

    if-eqz v6, :cond_6

    move-object v4, v1

    goto :goto_4

    :cond_0
    iget v6, v1, Lf1/q;->n:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_6

    instance-of v6, v1, Le2/k;

    if-eqz v6, :cond_6

    move-object v6, v1

    check-cast v6, Le2/k;

    iget-object v6, v6, Le2/k;->A:Lf1/q;

    move v7, v3

    :goto_2
    if-eqz v6, :cond_5

    iget v8, v6, Lf1/q;->n:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_4

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v2, :cond_1

    move-object v1, v6

    goto :goto_3

    :cond_1
    if-nez v5, :cond_2

    new-instance v5, Lt0/b;

    const/16 v8, 0x10

    new-array v8, v8, [Lf1/q;

    invoke-direct {v5, v8}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v5, v1}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v1, v4

    :cond_3
    invoke-virtual {v5, v6}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_4
    :goto_3
    iget-object v6, v6, Lf1/q;->q:Lf1/q;

    goto :goto_2

    :cond_5
    if-ne v7, v2, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {v5}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v1

    goto :goto_1

    :cond_7
    iget v1, p3, Lf1/q;->o:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_8

    iget-object p3, p3, Lf1/q;->q:Lf1/q;

    goto :goto_0

    :cond_8
    :goto_4
    check-cast v4, Le2/z1;

    if-eqz v4, :cond_9

    move-object p3, v4

    check-cast p3, Lf1/q;

    iget-object p3, p3, Lf1/q;->l:Lf1/q;

    iget-boolean p3, p3, Lf1/q;->y:Z

    if-ne p3, v2, :cond_9

    invoke-static {v4}, Le2/l;->u(Le2/j;)Le2/h1;

    move-result-object p1

    invoke-static {p1}, Lc2/x;->h(Lc2/u;)Lc2/u;

    move-result-object p3

    invoke-interface {p3, p1, v2}, Lc2/u;->U(Lc2/u;Z)Ll1/c;

    move-result-object p1

    iget p3, p1, Ll1/c;->a:F

    iget v0, p1, Ll1/c;->b:F

    iget v1, p1, Ll1/c;->c:F

    iget p1, p1, Ll1/c;->d:F

    invoke-virtual {p0, p3, v0, v1, p1}, Lf2/e0;->F(FFFF)Landroid/graphics/Rect;

    move-result-object p0

    iget p1, p0, Landroid/graphics/Rect;->left:I

    iget p3, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p3

    int-to-float p1, p1

    iget p3, p0, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p2

    int-to-float p2, p3

    new-instance p3, Ll1/c;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p0, p2

    invoke-direct {p3, p1, p2, v0, p0}, Ll1/c;-><init>(FFFF)V

    return-object p3

    :cond_9
    iget-object p0, p1, Le2/g0;->R:Le2/c1;

    iget-object p0, p0, Le2/c1;->d:Le2/h1;

    invoke-static {p0, v3}, Lc2/x;->f(Lc2/u;Z)Ll1/c;

    move-result-object p0

    return-object p0
.end method

.method public final o()Z
    .locals 2

    iget-object v0, p0, Lf2/e0;->r:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lf2/e0;->t:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lf2/e0;->t:Ljava/util/List;

    :cond_0
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final onAccessibilityStateChanged(Z)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lf2/e0;->t:Ljava/util/List;

    return-void
.end method

.method public final onTouchExplorationStateChanged(Z)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lf2/e0;->t:Ljava/util/List;

    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lf2/e0;->r:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lf2/e0;->t:Ljava/util/List;

    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lf2/e0;->u:Landroid/os/Handler;

    iget-object v0, p0, Lf2/e0;->W:Landroidx/lifecycle/f0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lf2/e0;->r:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    return-void
.end method

.method public final p(Le2/g0;)V
    .locals 1

    iget-object v0, p0, Lf2/e0;->H:Lk/f;

    invoke-virtual {v0, p1}, Lk/f;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lf2/e0;->I:Lw9/e;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-interface {p0, p1}, Lw9/u;->l(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final t(I)I
    .locals 0

    iget-object p0, p0, Lf2/e0;->o:Lf2/y;

    invoke-virtual {p0}, Lf2/y;->getSemanticsOwner()Lm2/r;

    move-result-object p0

    invoke-virtual {p0}, Lm2/r;->a()Lm2/p;

    move-result-object p0

    iget p0, p0, Lm2/p;->g:I

    if-ne p1, p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return p1
.end method

.method public final u(Lm2/p;Lf2/j2;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Lk/m;->a:[I

    new-instance v3, Lk/y;

    invoke-direct {v3}, Lk/y;-><init>()V

    const/4 v4, 0x4

    invoke-static {v4, v1}, Lm2/p;->j(ILm2/p;)Ljava/util/List;

    move-result-object v5

    iget-object v6, v1, Lm2/p;->c:Le2/g0;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v7

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_2

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lm2/p;

    invoke-virtual {v0}, Lf2/e0;->l()Lk/k;

    move-result-object v11

    iget v10, v10, Lm2/p;->g:I

    invoke-virtual {v11, v10}, Lk/k;->a(I)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, v2, Lf2/j2;->b:Lk/y;

    invoke-virtual {v11, v10}, Lk/y;->b(I)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v0, v6}, Lf2/e0;->p(Le2/g0;)V

    return-void

    :cond_0
    invoke-virtual {v3, v10}, Lk/y;->a(I)Z

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, v2, Lf2/j2;->b:Lk/y;

    iget-object v5, v2, Lk/y;->b:[I

    iget-object v2, v2, Lk/y;->a:[J

    array-length v7, v2

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_6

    move v9, v8

    :goto_1
    aget-wide v10, v2, v9

    not-long v12, v10

    const/4 v14, 0x7

    shl-long/2addr v12, v14

    and-long/2addr v12, v10

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v12, v14

    cmp-long v12, v12, v14

    if-eqz v12, :cond_5

    sub-int v12, v9, v7

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v13, 0x8

    rsub-int/lit8 v12, v12, 0x8

    move v14, v8

    :goto_2
    if-ge v14, v12, :cond_4

    const-wide/16 v15, 0xff

    and-long/2addr v15, v10

    const-wide/16 v17, 0x80

    cmp-long v15, v15, v17

    if-gez v15, :cond_3

    shl-int/lit8 v15, v9, 0x3

    add-int/2addr v15, v14

    aget v15, v5, v15

    invoke-virtual {v3, v15}, Lk/y;->b(I)Z

    move-result v15

    if-nez v15, :cond_3

    invoke-virtual {v0, v6}, Lf2/e0;->p(Le2/g0;)V

    return-void

    :cond_3
    shr-long/2addr v10, v13

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_4
    if-ne v12, v13, :cond_6

    :cond_5
    if-eq v9, v7, :cond_6

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_6
    invoke-static {v4, v1}, Lm2/p;->j(ILm2/p;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_3
    if-ge v8, v2, :cond_8

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm2/p;

    iget-object v4, v0, Lf2/e0;->S:Lk/x;

    iget v5, v3, Lm2/p;->g:I

    invoke-virtual {v4, v5}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf2/j2;

    if-eqz v4, :cond_7

    invoke-virtual {v0}, Lf2/e0;->l()Lk/k;

    move-result-object v5

    iget v6, v3, Lm2/p;->g:I

    invoke-virtual {v5, v6}, Lk/k;->a(I)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v0, v3, v4}, Lf2/e0;->u(Lm2/p;Lf2/j2;)V

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method public final v(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    invoke-virtual {p0}, Lf2/e0;->o()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v2, 0x800

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v2, 0x8000

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf2/e0;->A:Z

    :cond_2
    :try_start_0
    iget-object v0, p0, Lf2/e0;->q:Lf2/d0;

    invoke-virtual {v0, p1}, Lf2/d0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lf2/e0;->A:Z

    return p1

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lf2/e0;->A:Z

    throw p1
.end method

.method public final w(IILjava/lang/Integer;Ljava/util/List;)Z
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Lf2/e0;->o()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lf2/e0;->h(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    :cond_1
    if-eqz p4, :cond_2

    const/4 p2, 0x0

    const/16 p3, 0x3e

    const-string v0, ","

    invoke-static {p4, v0, p2, p3}, Ld3/a;->a(Ljava/util/List;Ljava/lang/String;Lp0/e;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p0, p1}, Lf2/e0;->v(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final y(IILjava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lf2/e0;->t(I)I

    move-result p1

    const/16 v0, 0x20

    invoke-virtual {p0, p1, v0}, Lf2/e0;->h(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0, p1}, Lf2/e0;->v(Landroid/view/accessibility/AccessibilityEvent;)Z

    return-void
.end method

.method public final z(I)V
    .locals 6

    iget-object v0, p0, Lf2/e0;->K:Lf2/a0;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lf2/a0;->a:Lm2/p;

    iget v2, v1, Lm2/p;->g:I

    if-eq p1, v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lf2/a0;->f:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-gtz p1, :cond_1

    iget p1, v1, Lm2/p;->g:I

    invoke-virtual {p0, p1}, Lf2/e0;->t(I)I

    move-result p1

    const/high16 v2, 0x20000

    invoke-virtual {p0, p1, v2}, Lf2/e0;->h(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    iget v2, v0, Lf2/a0;->d:I

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    iget v2, v0, Lf2/a0;->e:I

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    iget v2, v0, Lf2/a0;->b:I

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    iget v0, v0, Lf2/a0;->c:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    invoke-static {v1}, Lf2/e0;->m(Lm2/p;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lf2/e0;->v(Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lf2/e0;->K:Lf2/a0;

    return-void
.end method
