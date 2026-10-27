.class public final Le6/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu2/s;


# instance fields
.field public a:Z

.field public b:Ljava/util/ArrayList;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;

.field public l:Ljava/lang/Object;

.field public m:Ljava/lang/Object;

.field public n:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/View;Lf2/y;)V
    .locals 5

    .line 1
    new-instance v0, Lg5/m;

    invoke-direct {v0, p1}, Lg5/m;-><init>(Landroid/view/View;)V

    .line 2
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    .line 3
    new-instance v2, Ldd/c0;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v1}, Ldd/c0;-><init>(ILjava/lang/Object;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Le6/g;->c:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Le6/g;->d:Ljava/lang/Object;

    .line 7
    iput-object v2, p0, Le6/g;->e:Ljava/lang/Object;

    .line 8
    sget-object p1, Lu2/b;->o:Lu2/b;

    iput-object p1, p0, Le6/g;->f:Ljava/lang/Object;

    .line 9
    sget-object p1, Lu2/b;->p:Lu2/b;

    iput-object p1, p0, Le6/g;->g:Ljava/lang/Object;

    .line 10
    new-instance p1, Lu2/x;

    .line 11
    sget-wide v1, Lp2/l0;->b:J

    const/4 v3, 0x4

    .line 12
    const-string v4, ""

    invoke-direct {p1, v3, v1, v2, v4}, Lu2/x;-><init>(IJLjava/lang/String;)V

    iput-object p1, p0, Le6/g;->h:Ljava/lang/Object;

    .line 13
    sget-object p1, Lu2/k;->g:Lu2/k;

    .line 14
    iput-object p1, p0, Le6/g;->i:Ljava/lang/Object;

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le6/g;->b:Ljava/util/ArrayList;

    .line 16
    sget-object p1, Lt8/h;->m:Lt8/h;

    new-instance v1, Lc2/l0;

    const/16 v2, 0x12

    invoke-direct {v1, v2, p0}, Lc2/l0;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, v1}, Ly4/s;->x(Lt8/h;Li9/a;)Lt8/g;

    move-result-object p1

    iput-object p1, p0, Le6/g;->j:Ljava/lang/Object;

    .line 17
    new-instance p1, Lu2/c;

    invoke-direct {p1, p2, v0}, Lu2/c;-><init>(Lf2/y;Lg5/m;)V

    iput-object p1, p0, Le6/g;->l:Ljava/lang/Object;

    .line 18
    new-instance p1, Lt0/b;

    const/16 p2, 0x10

    new-array p2, p2, [Lu2/z;

    invoke-direct {p1, p2}, Lt0/b;-><init>([Ljava/lang/Object;)V

    .line 19
    iput-object p1, p0, Le6/g;->m:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lb6/i;Lj6/t;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Le6/g;->f:Ljava/lang/Object;

    .line 22
    iput-object p2, p0, Le6/g;->e:Ljava/lang/Object;

    .line 23
    iput-object p1, p0, Le6/g;->d:Ljava/lang/Object;

    .line 24
    iget-object p1, p1, Lb6/i;->q:Lb6/h;

    .line 25
    iput-object p1, p0, Le6/g;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    sget-object v0, Lu2/z;->l:Lu2/z;

    invoke-virtual {p0, v0}, Le6/g;->o(Lu2/z;)V

    return-void
.end method

.method public b(Ll1/c;)V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Ll1/c;->a:F

    invoke-static {v1}, Ll9/a;->z(F)I

    move-result v1

    iget v2, p1, Ll1/c;->b:F

    invoke-static {v2}, Ll9/a;->z(F)I

    move-result v2

    iget v3, p1, Ll1/c;->c:F

    invoke-static {v3}, Ll9/a;->z(F)I

    move-result v3

    iget p1, p1, Ll1/c;->d:F

    invoke-static {p1}, Ll9/a;->z(F)I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Le6/g;->k:Ljava/lang/Object;

    iget-object p1, p0, Le6/g;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le6/g;->k:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    iget-object p0, p0, Le6/g;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    sget-object v0, Lu2/z;->n:Lu2/z;

    invoke-virtual {p0, v0}, Le6/g;->o(Lu2/z;)V

    return-void
.end method

.method public d(Lu2/x;Lu2/q;Lp2/j0;Lb0/g2;Ll1/c;Ll1/c;)V
    .locals 1

    iget-object p0, p0, Le6/g;->l:Ljava/lang/Object;

    check-cast p0, Lu2/c;

    iget-object v0, p0, Lu2/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lu2/c;->j:Lu2/x;

    iput-object p2, p0, Lu2/c;->l:Lu2/q;

    iput-object p3, p0, Lu2/c;->k:Lp2/j0;

    iput-object p4, p0, Lu2/c;->m:Li9/c;

    iput-object p5, p0, Lu2/c;->n:Ll1/c;

    iput-object p6, p0, Lu2/c;->o:Ll1/c;

    iget-boolean p1, p0, Lu2/c;->e:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lu2/c;->d:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lu2/c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Le6/g;->a:Z

    sget-object v0, Lu2/b;->q:Lu2/b;

    iput-object v0, p0, Le6/g;->f:Ljava/lang/Object;

    sget-object v0, Lu2/b;->r:Lu2/b;

    iput-object v0, p0, Le6/g;->g:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Le6/g;->k:Ljava/lang/Object;

    sget-object v0, Lu2/z;->m:Lu2/z;

    invoke-virtual {p0, v0}, Le6/g;->o(Lu2/z;)V

    return-void
.end method

.method public f(Lu2/x;Lu2/x;)V
    .locals 12

    iget-object v0, p0, Le6/g;->h:Ljava/lang/Object;

    check-cast v0, Lu2/x;

    iget-wide v0, v0, Lu2/x;->b:J

    iget-wide v2, p2, Lu2/x;->b:J

    invoke-static {v0, v1, v2, v3}, Lp2/l0;->b(JJ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le6/g;->h:Ljava/lang/Object;

    check-cast v0, Lu2/x;

    iget-object v0, v0, Lu2/x;->c:Lp2/l0;

    iget-object v2, p2, Lu2/x;->c:Lp2/l0;

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-object p2, p0, Le6/g;->h:Ljava/lang/Object;

    iget-object v2, p0, Le6/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_3

    iget-object v4, p0, Le6/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu2/t;

    if-eqz v4, :cond_2

    iput-object p2, v4, Lu2/t;->d:Lu2/x;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget-object v2, p0, Le6/g;->l:Ljava/lang/Object;

    check-cast v2, Lu2/c;

    iget-object v3, v2, Lu2/c;->c:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x0

    :try_start_0
    iput-object v4, v2, Lu2/c;->j:Lu2/x;

    iput-object v4, v2, Lu2/c;->l:Lu2/q;

    iput-object v4, v2, Lu2/c;->k:Lp2/j0;

    sget-object v5, Lu2/b;->m:Lu2/b;

    iput-object v5, v2, Lu2/c;->m:Li9/c;

    iput-object v4, v2, Lu2/c;->n:Ll1/c;

    iput-object v4, v2, Lu2/c;->o:Ll1/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    invoke-static {p1, p2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_6

    if-eqz v0, :cond_e

    iget-object p1, p0, Le6/g;->d:Ljava/lang/Object;

    check-cast p1, Lg5/m;

    iget-wide v0, p2, Lu2/x;->b:J

    invoke-static {v0, v1}, Lp2/l0;->f(J)I

    move-result v6

    iget-wide v0, p2, Lu2/x;->b:J

    invoke-static {v0, v1}, Lp2/l0;->e(J)I

    move-result v7

    iget-object p2, p0, Le6/g;->h:Ljava/lang/Object;

    check-cast p2, Lu2/x;

    iget-object p2, p2, Lu2/x;->c:Lp2/l0;

    if-eqz p2, :cond_4

    iget-wide v0, p2, Lp2/l0;->a:J

    invoke-static {v0, v1}, Lp2/l0;->f(J)I

    move-result p2

    move v8, p2

    goto :goto_3

    :cond_4
    move v8, v3

    :goto_3
    iget-object p0, p0, Le6/g;->h:Ljava/lang/Object;

    check-cast p0, Lu2/x;

    iget-object p0, p0, Lu2/x;->c:Lp2/l0;

    if-eqz p0, :cond_5

    iget-wide v0, p0, Lp2/l0;->a:J

    invoke-static {v0, v1}, Lp2/l0;->e(J)I

    move-result v3

    :cond_5
    move v9, v3

    iget-object p0, p1, Lg5/m;->n:Ljava/lang/Object;

    invoke-interface {p0}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p1, Lg5/m;->m:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Landroid/view/View;

    invoke-virtual/range {v4 .. v9}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    return-void

    :cond_6
    if-eqz p1, :cond_8

    iget-object v0, p1, Lu2/x;->a:Lp2/g;

    iget-object v0, v0, Lp2/g;->m:Ljava/lang/String;

    iget-object v2, p2, Lu2/x;->a:Lp2/g;

    iget-object v2, v2, Lp2/g;->m:Ljava/lang/String;

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-wide v4, p1, Lu2/x;->b:J

    iget-wide v6, p2, Lu2/x;->b:J

    invoke-static {v4, v5, v6, v7}, Lp2/l0;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p1, Lu2/x;->c:Lp2/l0;

    iget-object p2, p2, Lu2/x;->c:Lp2/l0;

    invoke-static {p1, p2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    :cond_7
    iget-object p0, p0, Le6/g;->d:Ljava/lang/Object;

    check-cast p0, Lg5/m;

    iget-object p1, p0, Lg5/m;->n:Ljava/lang/Object;

    invoke-interface {p1}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lg5/m;->m:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    return-void

    :cond_8
    iget-object p1, p0, Le6/g;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_4
    if-ge v1, p1, :cond_e

    iget-object p2, p0, Le6/g;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lu2/t;

    if-eqz p2, :cond_d

    iget-object v0, p0, Le6/g;->h:Ljava/lang/Object;

    check-cast v0, Lu2/x;

    iget-object v2, p0, Le6/g;->d:Ljava/lang/Object;

    check-cast v2, Lg5/m;

    iget-boolean v4, p2, Lu2/t;->h:Z

    if-nez v4, :cond_9

    goto :goto_7

    :cond_9
    iput-object v0, p2, Lu2/t;->d:Lu2/x;

    iget-boolean v4, p2, Lu2/t;->f:Z

    if-eqz v4, :cond_a

    iget p2, p2, Lu2/t;->e:I

    invoke-static {v0}, Ll9/a;->C(Lu2/x;)Landroid/view/inputmethod/ExtractedText;

    move-result-object v4

    iget-object v5, v2, Lg5/m;->n:Ljava/lang/Object;

    invoke-interface {v5}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v2, Lg5/m;->m:Ljava/lang/Object;

    check-cast v6, Landroid/view/View;

    invoke-virtual {v5, v6, p2, v4}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    :cond_a
    iget-object p2, v0, Lu2/x;->c:Lp2/l0;

    iget-wide v4, v0, Lu2/x;->b:J

    if-eqz p2, :cond_b

    iget-wide v6, p2, Lp2/l0;->a:J

    invoke-static {v6, v7}, Lp2/l0;->f(J)I

    move-result p2

    move v10, p2

    goto :goto_5

    :cond_b
    move v10, v3

    :goto_5
    iget-object p2, v0, Lu2/x;->c:Lp2/l0;

    if-eqz p2, :cond_c

    iget-wide v6, p2, Lp2/l0;->a:J

    invoke-static {v6, v7}, Lp2/l0;->e(J)I

    move-result p2

    move v11, p2

    goto :goto_6

    :cond_c
    move v11, v3

    :goto_6
    invoke-static {v4, v5}, Lp2/l0;->f(J)I

    move-result v8

    invoke-static {v4, v5}, Lp2/l0;->e(J)I

    move-result v9

    iget-object p2, v2, Lg5/m;->n:Ljava/lang/Object;

    invoke-interface {p2}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    iget-object p2, v2, Lg5/m;->m:Ljava/lang/Object;

    move-object v7, p2

    check-cast v7, Landroid/view/View;

    invoke-virtual/range {v6 .. v11}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    :cond_d
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_e
    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v3

    throw p0
.end method

.method public g(Lu2/x;Lu2/k;Lb0/o;Lb0/h0;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Le6/g;->a:Z

    iput-object p1, p0, Le6/g;->h:Ljava/lang/Object;

    iput-object p2, p0, Le6/g;->i:Ljava/lang/Object;

    iput-object p3, p0, Le6/g;->f:Ljava/lang/Object;

    iput-object p4, p0, Le6/g;->g:Ljava/lang/Object;

    sget-object p1, Lu2/z;->l:Lu2/z;

    invoke-virtual {p0, p1}, Le6/g;->o(Lu2/z;)V

    return-void
.end method

.method public h()V
    .locals 1

    sget-object v0, Lu2/z;->o:Lu2/z;

    invoke-virtual {p0, v0}, Le6/g;->o(Lu2/z;)V

    return-void
.end method

.method public i(Ljava/util/Collection;)Ljava/util/Map;
    .locals 4

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le6/y;

    iget-object v2, p0, Le6/g;->c:Ljava/lang/Object;

    check-cast v2, Lb6/h;

    invoke-virtual {v1, v2}, Lj6/y;->a(Ld6/m;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_2
    iget-object v1, v1, Le6/y;->n:Lb6/i0;

    iget-object v1, v1, Lb6/i0;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    :cond_4
    return-object v0
.end method

.method public j(Ljava/util/Collection;)V
    .locals 3

    iget-object v0, p0, Le6/g;->c:Ljava/lang/Object;

    check-cast v0, Lb6/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lb6/x;->A:Lb6/x;

    invoke-virtual {v0, v1}, Ld6/m;->m(Lb6/x;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le6/y;

    :try_start_0
    invoke-virtual {v1, v0}, Le6/y;->n(Lb6/h;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Le6/g;->k(Ljava/lang/IllegalArgumentException;)V

    throw v2

    :cond_0
    iget-object p1, p0, Le6/g;->m:Ljava/lang/Object;

    check-cast p1, Le6/w;

    if-eqz p1, :cond_1

    :try_start_1
    iget-object p1, p1, Le6/w;->m:Lj6/h;

    sget-object v1, Lb6/x;->B:Lb6/x;

    invoke-virtual {v0, v1}, Ld6/m;->m(Lb6/x;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lj6/h;->j(Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p0, p1}, Le6/g;->k(Ljava/lang/IllegalArgumentException;)V

    throw v2

    :cond_1
    :goto_1
    iget-object p1, p0, Le6/g;->n:Ljava/lang/Object;

    check-cast p1, Lj6/i;

    if-eqz p1, :cond_2

    :try_start_2
    sget-object v1, Lb6/x;->B:Lb6/x;

    invoke-virtual {v0, v1}, Ld6/m;->m(Lb6/x;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lj6/h;->j(Z)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    invoke-virtual {p0, p1}, Le6/g;->k(Ljava/lang/IllegalArgumentException;)V

    throw v2

    :cond_2
    return-void
.end method

.method public k(Ljava/lang/IllegalArgumentException;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Le6/g;->d:Ljava/lang/Object;

    check-cast v0, Lb6/i;

    iget-object p0, p0, Le6/g;->e:Ljava/lang/Object;

    check-cast p0, Lj6/t;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2}, Lb6/i;->t0(Lj6/t;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
    :try_end_0
    .catch Lb6/p; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    throw p0
.end method

.method public l(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Le6/g;->i:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Le6/g;->i:Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Le6/g;->i:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public m(Le6/y;)V
    .locals 3

    iget-object v0, p0, Le6/g;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    iget-object v1, p1, Le6/y;->n:Lb6/i0;

    iget-object v2, v1, Lb6/i0;->l:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le6/y;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Duplicate property \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lb6/i0;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Le6/g;->e:Ljava/lang/Object;

    check-cast p0, Lj6/t;

    iget-object p0, p0, Lj6/t;->a:Lb6/l;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public n()Le6/e;
    .locals 14

    iget-object v0, p0, Le6/g;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Le6/g;->j(Ljava/util/Collection;)V

    iget-object v1, p0, Le6/g;->c:Ljava/lang/Object;

    check-cast v1, Lb6/h;

    invoke-virtual {p0, v0}, Le6/g;->i(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Le6/g;->e:Ljava/lang/Object;

    check-cast v3, Lj6/t;

    invoke-virtual {v3}, Lj6/t;->d()Lr5/q;

    move-result-object v3

    sget-object v4, Lr5/n;->m:Lr5/n;

    invoke-virtual {v3, v4}, Lr5/q;->b(Lr5/n;)Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v3, Lb6/x;->L:Lb6/x;

    invoke-virtual {v1, v3}, Ld6/m;->m(Lb6/x;)Z

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_0
    new-instance v4, Lf6/c;

    iget-object v5, v1, Ld6/m;->m:Ld6/a;

    iget-object v5, v5, Ld6/a;->r:Ljava/util/Locale;

    invoke-direct {v4, v3, v0, v2, v5}, Lf6/c;-><init>(ZLjava/util/Collection;Ljava/util/Map;Ljava/util/Locale;)V

    iget-object v2, v4, Lf6/c;->p:[Ljava/lang/Object;

    array-length v2, v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    move v6, v3

    :goto_1
    if-ge v6, v2, :cond_2

    iget-object v7, v4, Lf6/c;->p:[Ljava/lang/Object;

    aget-object v7, v7, v6

    check-cast v7, Le6/y;

    if-eqz v7, :cond_1

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v5}, Le6/y;->i(I)V

    move v5, v8

    :cond_1
    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    :cond_2
    sget-object v2, Lb6/x;->H:Lb6/x;

    invoke-virtual {v1, v2}, Ld6/m;->m(Lb6/x;)Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le6/y;

    invoke-virtual {v1}, Le6/y;->w()Z

    move-result v1

    if-eqz v1, :cond_3

    move v13, v3

    goto :goto_2

    :cond_4
    move v13, v2

    :goto_2
    iget-object v0, p0, Le6/g;->l:Ljava/lang/Object;

    check-cast v0, Lf6/r;

    if-eqz v0, :cond_5

    new-instance v0, Lf6/t;

    iget-object v1, p0, Le6/g;->l:Ljava/lang/Object;

    check-cast v1, Lf6/r;

    sget-object v2, Lb6/h0;->s:Lb6/h0;

    invoke-direct {v0, v1, v2}, Lf6/t;-><init>(Lf6/r;Lb6/h0;)V

    invoke-virtual {v4, v0}, Lf6/c;->k(Lf6/t;)Lf6/c;

    move-result-object v4

    :cond_5
    move-object v8, v4

    new-instance v5, Le6/e;

    iget-object v0, p0, Le6/g;->e:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lj6/t;

    iget-object v0, p0, Le6/g;->h:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Ljava/util/HashMap;

    iget-object v0, p0, Le6/g;->i:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Ljava/util/HashSet;

    iget-boolean v11, p0, Le6/g;->a:Z

    iget-object v0, p0, Le6/g;->j:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Ljava/util/HashSet;

    move-object v6, p0

    invoke-direct/range {v5 .. v13}, Le6/f;-><init>(Le6/g;Lj6/t;Lf6/c;Ljava/util/Map;Ljava/util/Set;ZLjava/util/Set;Z)V

    return-object v5
.end method

.method public o(Lu2/z;)V
    .locals 1

    iget-object v0, p0, Le6/g;->m:Ljava/lang/Object;

    check-cast v0, Lt0/b;

    invoke-virtual {v0, p1}, Lt0/b;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Le6/g;->n:Ljava/lang/Object;

    check-cast p1, Landroidx/lifecycle/f0;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/lifecycle/f0;

    const/16 v0, 0xb

    invoke-direct {p1, v0, p0}, Landroidx/lifecycle/f0;-><init>(ILjava/lang/Object;)V

    iget-object v0, p0, Le6/g;->e:Ljava/lang/Object;

    check-cast v0, Ldd/c0;

    invoke-virtual {v0, p1}, Ldd/c0;->execute(Ljava/lang/Runnable;)V

    iput-object p1, p0, Le6/g;->n:Ljava/lang/Object;

    :cond_0
    return-void
.end method
