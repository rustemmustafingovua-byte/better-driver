.class public final Lu/k1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final v:Ljava/util/WeakHashMap;


# instance fields
.field public final a:Lu/a;

.field public final b:Lu/a;

.field public final c:Lu/a;

.field public final d:Lu/a;

.field public final e:Lu/a;

.field public final f:Lu/a;

.field public final g:Lu/a;

.field public final h:Lu/a;

.field public final i:Lu/a;

.field public final j:Lu/i1;

.field public final k:Lr0/e1;

.field public final l:Lu/i1;

.field public final m:Lu/i1;

.field public final n:Lu/i1;

.field public final o:Lu/i1;

.field public final p:Lu/i1;

.field public final q:Lu/i1;

.field public final r:Lu/i1;

.field public final s:Z

.field public t:I

.field public final u:Lu/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lu/k1;->v:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "captionBar"

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lu/n;->c(ILjava/lang/String;)Lu/a;

    move-result-object v1

    iput-object v1, v0, Lu/k1;->a:Lu/a;

    const-string v3, "displayCutout"

    const/16 v4, 0x80

    invoke-static {v4, v3}, Lu/n;->c(ILjava/lang/String;)Lu/a;

    move-result-object v3

    iput-object v3, v0, Lu/k1;->b:Lu/a;

    const-string v5, "ime"

    const/16 v6, 0x8

    invoke-static {v6, v5}, Lu/n;->c(ILjava/lang/String;)Lu/a;

    move-result-object v5

    iput-object v5, v0, Lu/k1;->c:Lu/a;

    const-string v7, "mandatorySystemGestures"

    const/16 v8, 0x20

    invoke-static {v8, v7}, Lu/n;->c(ILjava/lang/String;)Lu/a;

    move-result-object v7

    iput-object v7, v0, Lu/k1;->d:Lu/a;

    const-string v9, "navigationBars"

    const/4 v10, 0x2

    invoke-static {v10, v9}, Lu/n;->c(ILjava/lang/String;)Lu/a;

    move-result-object v9

    iput-object v9, v0, Lu/k1;->e:Lu/a;

    const-string v11, "statusBars"

    const/4 v12, 0x1

    invoke-static {v12, v11}, Lu/n;->c(ILjava/lang/String;)Lu/a;

    move-result-object v11

    iput-object v11, v0, Lu/k1;->f:Lu/a;

    const-string v13, "systemBars"

    const/16 v14, 0x207

    invoke-static {v14, v13}, Lu/n;->c(ILjava/lang/String;)Lu/a;

    move-result-object v13

    iput-object v13, v0, Lu/k1;->g:Lu/a;

    const-string v15, "systemGestures"

    const/16 v8, 0x10

    invoke-static {v8, v15}, Lu/n;->c(ILjava/lang/String;)Lu/a;

    move-result-object v15

    iput-object v15, v0, Lu/k1;->h:Lu/a;

    const-string v8, "tappableElement"

    const/16 v6, 0x40

    invoke-static {v6, v8}, Lu/n;->c(ILjava/lang/String;)Lu/a;

    move-result-object v8

    iput-object v8, v0, Lu/k1;->i:Lu/a;

    new-instance v4, Lu/i1;

    new-instance v6, Lu/c0;

    const/4 v14, 0x0

    invoke-direct {v6, v14, v14, v14, v14}, Lu/c0;-><init>(IIII)V

    const-string v14, "waterfall"

    invoke-direct {v4, v6, v14}, Lu/i1;-><init>(Lu/c0;Ljava/lang/String;)V

    iput-object v4, v0, Lu/k1;->j:Lu/i1;

    const/4 v6, 0x0

    invoke-static {v6}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v14

    iput-object v14, v0, Lu/k1;->k:Lr0/e1;

    new-instance v14, Lu/f1;

    invoke-direct {v14, v13, v5}, Lu/f1;-><init>(Lu/j1;Lu/j1;)V

    new-instance v6, Lu/f1;

    invoke-direct {v6, v14, v3}, Lu/f1;-><init>(Lu/j1;Lu/j1;)V

    new-instance v6, Lu/f1;

    invoke-direct {v6, v8, v7}, Lu/f1;-><init>(Lu/j1;Lu/j1;)V

    new-instance v14, Lu/f1;

    invoke-direct {v14, v6, v15}, Lu/f1;-><init>(Lu/j1;Lu/j1;)V

    new-instance v6, Lu/f1;

    invoke-direct {v6, v14, v4}, Lu/f1;-><init>(Lu/j1;Lu/j1;)V

    const-string v4, "captionBarIgnoringVisibility"

    invoke-static {v2, v4}, Lu/n;->d(ILjava/lang/String;)Lu/i1;

    move-result-object v4

    iput-object v4, v0, Lu/k1;->l:Lu/i1;

    const-string v4, "navigationBarsIgnoringVisibility"

    invoke-static {v10, v4}, Lu/n;->d(ILjava/lang/String;)Lu/i1;

    move-result-object v4

    iput-object v4, v0, Lu/k1;->m:Lu/i1;

    const-string v4, "statusBarsIgnoringVisibility"

    invoke-static {v12, v4}, Lu/n;->d(ILjava/lang/String;)Lu/i1;

    move-result-object v4

    iput-object v4, v0, Lu/k1;->n:Lu/i1;

    const-string v4, "systemBarsIgnoringVisibility"

    const/16 v6, 0x207

    invoke-static {v6, v4}, Lu/n;->d(ILjava/lang/String;)Lu/i1;

    move-result-object v4

    iput-object v4, v0, Lu/k1;->o:Lu/i1;

    const-string v4, "tappableElementIgnoringVisibility"

    const/16 v6, 0x40

    invoke-static {v6, v4}, Lu/n;->d(ILjava/lang/String;)Lu/i1;

    move-result-object v4

    iput-object v4, v0, Lu/k1;->p:Lu/i1;

    new-instance v4, Lu/i1;

    new-instance v6, Lu/c0;

    const/4 v14, 0x0

    invoke-direct {v6, v14, v14, v14, v14}, Lu/c0;-><init>(IIII)V

    const-string v12, "imeAnimationTarget"

    invoke-direct {v4, v6, v12}, Lu/i1;-><init>(Lu/c0;Ljava/lang/String;)V

    iput-object v4, v0, Lu/k1;->q:Lu/i1;

    new-instance v4, Lu/i1;

    new-instance v6, Lu/c0;

    invoke-direct {v6, v14, v14, v14, v14}, Lu/c0;-><init>(IIII)V

    const-string v12, "imeAnimationSource"

    invoke-direct {v4, v6, v12}, Lu/i1;-><init>(Lu/c0;Ljava/lang/String;)V

    iput-object v4, v0, Lu/k1;->r:Lu/i1;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v6, v4, Landroid/view/View;

    if-eqz v6, :cond_0

    check-cast v4, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    const v6, 0x7f08003c

    invoke-virtual {v4, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    instance-of v6, v4, Ljava/lang/Boolean;

    if-eqz v6, :cond_2

    move-object v6, v4

    check-cast v6, Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    :cond_3
    iput-boolean v14, v0, Lu/k1;->s:Z

    new-instance v4, Lu/b0;

    invoke-direct {v4, v0}, Lu/b0;-><init>(Lu/k1;)V

    iput-object v4, v0, Lu/k1;->u:Lu/b0;

    sget-object v0, Lq3/q;->a:Ljava/util/WeakHashMap;

    invoke-static/range {p1 .. p1}, Lq3/n;->a(Landroid/view/View;)Lq3/x0;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {v0, v2}, Lq3/u0;->u(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lu/a;->f(Z)V

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lq3/u0;->u(I)Z

    move-result v1

    invoke-virtual {v3, v1}, Lu/a;->f(Z)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lq3/u0;->u(I)Z

    move-result v1

    invoke-virtual {v5, v1}, Lu/a;->f(Z)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lq3/u0;->u(I)Z

    move-result v1

    invoke-virtual {v7, v1}, Lu/a;->f(Z)V

    invoke-virtual {v0, v10}, Lq3/u0;->u(I)Z

    move-result v1

    invoke-virtual {v9, v1}, Lu/a;->f(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lq3/u0;->u(I)Z

    move-result v1

    invoke-virtual {v11, v1}, Lu/a;->f(Z)V

    const/16 v6, 0x207

    invoke-virtual {v0, v6}, Lq3/u0;->u(I)Z

    move-result v1

    invoke-virtual {v13, v1}, Lu/a;->f(Z)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lq3/u0;->u(I)Z

    move-result v1

    invoke-virtual {v15, v1}, Lu/a;->f(Z)V

    const/16 v6, 0x40

    invoke-virtual {v0, v6}, Lq3/u0;->u(I)Z

    move-result v0

    invoke-virtual {v8, v0}, Lu/a;->f(Z)V

    :cond_4
    return-void
.end method

.method public static b(Lu/k1;Lq3/x0;)V
    .locals 5

    iget-object v0, p0, Lu/k1;->a:Lu/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lu/a;->g(Lq3/x0;I)V

    iget-object v0, p0, Lu/k1;->c:Lu/a;

    invoke-virtual {v0, p1, v1}, Lu/a;->g(Lq3/x0;I)V

    iget-object v0, p0, Lu/k1;->b:Lu/a;

    invoke-virtual {v0, p1, v1}, Lu/a;->g(Lq3/x0;I)V

    iget-object v0, p0, Lu/k1;->e:Lu/a;

    invoke-virtual {v0, p1, v1}, Lu/a;->g(Lq3/x0;I)V

    iget-object v0, p0, Lu/k1;->f:Lu/a;

    invoke-virtual {v0, p1, v1}, Lu/a;->g(Lq3/x0;I)V

    iget-object v0, p0, Lu/k1;->g:Lu/a;

    invoke-virtual {v0, p1, v1}, Lu/a;->g(Lq3/x0;I)V

    iget-object v0, p0, Lu/k1;->h:Lu/a;

    invoke-virtual {v0, p1, v1}, Lu/a;->g(Lq3/x0;I)V

    iget-object v0, p0, Lu/k1;->i:Lu/a;

    invoke-virtual {v0, p1, v1}, Lu/a;->g(Lq3/x0;I)V

    iget-object v0, p0, Lu/k1;->d:Lu/a;

    invoke-virtual {v0, p1, v1}, Lu/a;->g(Lq3/x0;I)V

    iget-object v0, p0, Lu/k1;->l:Lu/i1;

    const/4 v2, 0x4

    iget-object v3, p1, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {v3, v2}, Lq3/u0;->j(I)Ll3/b;

    move-result-object v2

    invoke-static {v2}, Lu/b;->v(Ll3/b;)Lu/c0;

    move-result-object v2

    invoke-virtual {v0, v2}, Lu/i1;->f(Lu/c0;)V

    iget-object v0, p0, Lu/k1;->m:Lu/i1;

    iget-object v2, p1, Lq3/x0;->a:Lq3/u0;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lq3/u0;->j(I)Ll3/b;

    move-result-object v2

    invoke-static {v2}, Lu/b;->v(Ll3/b;)Lu/c0;

    move-result-object v2

    invoke-virtual {v0, v2}, Lu/i1;->f(Lu/c0;)V

    iget-object v0, p0, Lu/k1;->n:Lu/i1;

    iget-object v2, p1, Lq3/x0;->a:Lq3/u0;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lq3/u0;->j(I)Ll3/b;

    move-result-object v2

    invoke-static {v2}, Lu/b;->v(Ll3/b;)Lu/c0;

    move-result-object v2

    invoke-virtual {v0, v2}, Lu/i1;->f(Lu/c0;)V

    iget-object v0, p0, Lu/k1;->o:Lu/i1;

    const/16 v2, 0x207

    iget-object v4, p1, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {v4, v2}, Lq3/u0;->j(I)Ll3/b;

    move-result-object v2

    invoke-static {v2}, Lu/b;->v(Ll3/b;)Lu/c0;

    move-result-object v2

    invoke-virtual {v0, v2}, Lu/i1;->f(Lu/c0;)V

    iget-object v0, p0, Lu/k1;->p:Lu/i1;

    const/16 v2, 0x40

    iget-object v4, p1, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {v4, v2}, Lq3/u0;->j(I)Ll3/b;

    move-result-object v2

    invoke-static {v2}, Lu/b;->v(Ll3/b;)Lu/c0;

    move-result-object v2

    invoke-virtual {v0, v2}, Lu/i1;->f(Lu/c0;)V

    iget-object p1, p1, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {p1}, Lq3/u0;->h()Lq3/c;

    move-result-object p1

    iget-object v0, p0, Lu/k1;->j:Lu/i1;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lq3/c;->a()Ll3/b;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Ll3/b;->e:Ll3/b;

    :goto_0
    invoke-static {v2}, Lu/b;->v(Ll3/b;)Lu/c0;

    move-result-object v2

    invoke-virtual {v0, v2}, Lu/i1;->f(Lu/c0;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v2, v4, :cond_1

    iget-object p1, p1, Lq3/c;->a:Landroid/view/DisplayCutout;

    invoke-static {p1}, Lb5/g;->a(Landroid/view/DisplayCutout;)Landroid/graphics/Path;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_2

    new-instance v0, Lm1/g;

    invoke-direct {v0, p1}, Lm1/g;-><init>(Landroid/graphics/Path;)V

    :cond_2
    iget-object p0, p0, Lu/k1;->k:Lr0/e1;

    invoke-virtual {p0, v0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    sget-object p0, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object p1, Ld1/p;->j:Ld1/b;

    iget-object p1, p1, Ld1/c;->h:Lk/n0;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lk/n0;->h()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v3, :cond_3

    move v1, v3

    :cond_3
    monitor-exit p0

    if-eqz v1, :cond_4

    invoke-static {}, Ld1/p;->a()V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lu/k1;->t:I

    if-nez v0, :cond_1

    sget-object v0, Lq3/q;->a:Ljava/util/WeakHashMap;

    iget-object v0, p0, Lu/k1;->u:Lu/b0;

    invoke-static {p1, v0}, Lq3/m;->b(Landroid/view/View;Lq3/f;)V

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-static {p1, v0}, Lq3/q;->d(Landroid/view/View;Lja/c;)V

    :cond_1
    iget p1, p0, Lu/k1;->t:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lu/k1;->t:I

    return-void
.end method
