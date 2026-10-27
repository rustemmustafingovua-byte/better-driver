.class public final Ll2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ScrollCaptureCallback;


# instance fields
.field public final a:Lm2/p;

.field public final b:Lb3/k;

.field public final c:Lb0/l1;

.field public final d:Lf2/y;

.field public final e:Lz9/d;

.field public final f:Ll2/f;


# direct methods
.method public constructor <init>(Lm2/p;Lb3/k;Lz9/d;Lb0/l1;Lf2/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll2/c;->a:Lm2/p;

    iput-object p2, p0, Ll2/c;->b:Lb3/k;

    iput-object p4, p0, Ll2/c;->c:Lb0/l1;

    iput-object p5, p0, Ll2/c;->d:Lf2/y;

    new-instance p1, Lz9/d;

    iget-object p3, p3, Lz9/d;->l:Ly8/h;

    sget-object p4, Ll2/d;->l:Ll2/d;

    invoke-interface {p3, p4}, Ly8/h;->y(Ly8/h;)Ly8/h;

    move-result-object p3

    invoke-direct {p1, p3}, Lz9/d;-><init>(Ly8/h;)V

    iput-object p1, p0, Ll2/c;->e:Lz9/d;

    new-instance p1, Ll2/f;

    invoke-virtual {p2}, Lb3/k;->b()I

    move-result p2

    new-instance p3, Lo0/f5;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lo0/f5;-><init>(Ll2/c;Ly8/c;)V

    invoke-direct {p1, p2, p3}, Ll2/f;-><init>(ILo0/f5;)V

    iput-object p1, p0, Ll2/c;->f:Ll2/f;

    return-void
.end method

.method public static final a(Ll2/c;Landroid/view/ScrollCaptureSession;Lb3/k;La9/c;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p3, Ll2/a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Ll2/a;

    iget v1, v0, Ll2/a;->r:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ll2/a;->r:I

    goto :goto_0

    :cond_0
    new-instance v0, Ll2/a;

    invoke-direct {v0, p0, p3}, Ll2/a;-><init>(Ll2/c;La9/c;)V

    :goto_0
    iget-object p3, v0, Ll2/a;->p:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Ll2/a;->r:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Ll2/a;->o:I

    iget p2, v0, Ll2/a;->n:I

    iget-object v1, v0, Ll2/a;->m:Lb3/k;

    iget-object v0, v0, Ll2/a;->l:Ljava/lang/Object;

    invoke-static {v0}, Lb5/c;->f(Ljava/lang/Object;)Landroid/view/ScrollCaptureSession;

    move-result-object v0

    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget p1, v0, Ll2/a;->o:I

    iget p2, v0, Ll2/a;->n:I

    iget-object v2, v0, Ll2/a;->m:Lb3/k;

    iget-object v4, v0, Ll2/a;->l:Ljava/lang/Object;

    invoke-static {v4}, Lb5/c;->f(Ljava/lang/Object;)Landroid/view/ScrollCaptureSession;

    move-result-object v4

    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    iget p1, v0, Ll2/a;->o:I

    iget p2, v0, Ll2/a;->n:I

    iget-object v2, v0, Ll2/a;->m:Lb3/k;

    iget-object v4, v0, Ll2/a;->l:Ljava/lang/Object;

    invoke-static {v4}, Lb5/c;->f(Ljava/lang/Object;)Landroid/view/ScrollCaptureSession;

    move-result-object v4

    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    move p3, p2

    move-object p2, v2

    move v2, p1

    move-object p1, v4

    goto :goto_3

    :cond_4
    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    iget p3, p2, Lb3/k;->b:I

    iget v2, p2, Lb3/k;->d:I

    iget-object v6, p0, Ll2/c;->f:Ll2/f;

    iput-object p1, v0, Ll2/a;->l:Ljava/lang/Object;

    iput-object p2, v0, Ll2/a;->m:Lb3/k;

    iput p3, v0, Ll2/a;->n:I

    iput v2, v0, Ll2/a;->o:I

    iput v5, v0, Ll2/a;->r:I

    iget v5, v6, Ll2/f;->a:I

    if-gt p3, v2, :cond_c

    sub-int v7, v2, p3

    if-gt v7, v5, :cond_b

    int-to-float v8, p3

    iget v9, v6, Ll2/f;->b:F

    cmpl-float v8, v8, v9

    sget-object v10, Lt8/z;->a:Lt8/z;

    if-ltz v8, :cond_5

    int-to-float v8, v2

    int-to-float v11, v5

    add-float/2addr v11, v9

    cmpg-float v8, v8, v11

    if-gtz v8, :cond_5

    goto :goto_2

    :cond_5
    div-int/2addr v7, v4

    add-int/2addr v7, p3

    div-int/2addr v5, v4

    sub-int/2addr v7, v5

    int-to-float v4, v7

    sub-float/2addr v4, v9

    invoke-virtual {v6, v4, v0}, Ll2/f;->b(FLa9/c;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_6

    goto :goto_1

    :cond_6
    move-object v4, v10

    :goto_1
    if-ne v4, v1, :cond_7

    move-object v10, v4

    :cond_7
    :goto_2
    if-ne v10, v1, :cond_8

    goto :goto_5

    :cond_8
    :goto_3
    move-object v4, p1

    move p1, v2

    move-object v2, p2

    move p2, p3

    :goto_4
    sget-object p3, Ll2/b;->m:Ll2/b;

    iput-object v4, v0, Ll2/a;->l:Ljava/lang/Object;

    iput-object v2, v0, Ll2/a;->m:Lb3/k;

    iput p2, v0, Ll2/a;->n:I

    iput p1, v0, Ll2/a;->o:I

    iput v3, v0, Ll2/a;->r:I

    invoke-interface {v0}, Ly8/c;->getContext()Ly8/h;

    move-result-object v3

    invoke-static {v3}, Lr0/r;->v(Ly8/h;)Lf2/x0;

    move-result-object v3

    invoke-virtual {v3, p3, v0}, Lf2/x0;->a(Li9/c;Ly8/c;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_9

    :goto_5
    return-object v1

    :cond_9
    move-object v1, v2

    move-object v0, v4

    :goto_6
    iget-object p3, p0, Ll2/c;->f:Ll2/f;

    iget v2, p3, Ll2/f;->b:F

    invoke-static {v2}, Ll9/a;->z(F)I

    move-result v2

    sub-int/2addr p2, v2

    iget p3, p3, Ll2/f;->a:I

    const/4 v2, 0x0

    invoke-static {p2, v2, p3}, Lg6/c1;->f(III)I

    move-result p2

    iget-object p3, p0, Ll2/c;->f:Ll2/f;

    iget v3, p3, Ll2/f;->b:F

    invoke-static {v3}, Ll9/a;->z(F)I

    move-result v3

    sub-int/2addr p1, v3

    iget p3, p3, Ll2/f;->a:I

    invoke-static {p1, v2, p3}, Lg6/c1;->f(III)I

    move-result p1

    iget p3, v1, Lb3/k;->a:I

    iget v1, v1, Lb3/k;->c:I

    if-ne p2, p1, :cond_a

    sget-object p0, Lb3/k;->e:Lb3/k;

    return-object p0

    :cond_a
    invoke-static {v0}, Lb5/c;->h(Landroid/view/ScrollCaptureSession;)Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    int-to-float v3, p3

    neg-float v3, v3

    int-to-float v4, p2

    neg-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Ll2/c;->b:Lb3/k;

    iget v4, v3, Lb3/k;->a:I

    int-to-float v4, v4

    neg-float v4, v4

    iget v3, v3, Lb3/k;->b:I

    int-to-float v3, v3

    neg-float v3, v3

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Ll2/c;->d:Lf2/y;

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lb5/c;->h(Landroid/view/ScrollCaptureSession;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Ll2/c;->f:Ll2/f;

    iget p0, p0, Ll2/f;->b:F

    invoke-static {p0}, Ll9/a;->z(F)I

    move-result p0

    new-instance v0, Lb3/k;

    add-int/2addr p2, p0

    add-int/2addr p1, p0

    invoke-direct {v0, p3, p2, v1, p1}, Lb3/k;-><init>(IIII)V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lb5/c;->h(Landroid/view/ScrollCaptureSession;)Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw p0

    :cond_b
    const-string p0, "Expected range ("

    const-string p1, ") to be \u2264 viewportSize="

    invoke-static {p0, v7, p1, v5}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    const-string p0, "Expected min="

    const-string p1, " \u2264 max="

    invoke-static {p0, p3, p1, v2}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final onScrollCaptureEnd(Ljava/lang/Runnable;)V
    .locals 4

    sget-object v0, Lu9/f1;->m:Lu9/f1;

    new-instance v1, Landroidx/lifecycle/i0;

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v3, v2}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    const/4 p1, 0x2

    iget-object p0, p0, Ll2/c;->e:Lz9/d;

    invoke-static {p0, v0, v3, v1, p1}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    return-void
.end method

.method public final onScrollCaptureImageRequest(Landroid/view/ScrollCaptureSession;Landroid/os/CancellationSignal;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .locals 7

    new-instance v0, Landroidx/lifecycle/j0;

    const/4 v5, 0x0

    const/4 v6, 0x6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    const/4 p0, 0x0

    const/4 p1, 0x3

    iget-object p3, v1, Ll2/c;->e:Lz9/d;

    invoke-static {p3, p0, p0, v0, p1}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object p0

    new-instance p1, Landroidx/fragment/app/t;

    const/16 p3, 0x14

    invoke-direct {p1, p3, p2}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lu9/c1;->P(Li9/c;)Lu9/g0;

    new-instance p1, Lk0/j;

    const/4 p3, 0x1

    invoke-direct {p1, p3, p0}, Lk0/j;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    return-void
.end method

.method public final onScrollCaptureSearch(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 0

    iget-object p0, p0, Ll2/c;->b:Lb3/k;

    invoke-static {p0}, Lm1/v;->w(Lb3/k;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final onScrollCaptureStart(Landroid/view/ScrollCaptureSession;Landroid/os/CancellationSignal;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p1, p0, Ll2/c;->f:Ll2/f;

    const/4 p2, 0x0

    iput p2, p1, Ll2/f;->b:F

    iget-object p0, p0, Ll2/c;->c:Lb0/l1;

    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Lr0/e1;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method
