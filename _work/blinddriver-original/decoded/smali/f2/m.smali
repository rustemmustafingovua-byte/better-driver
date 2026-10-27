.class public final Lf2/m;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Lj2/a;
.implements Le2/z1;
.implements Lw1/e;
.implements Le2/x;
.implements Le2/e2;
.implements Le2/j;


# instance fields
.field public final synthetic A:Lf2/y;

.field public final z:Landroidx/fragment/app/t;


# direct methods
.method public constructor <init>(Lf2/y;)V
    .locals 1

    iput-object p1, p0, Lf2/m;->A:Lf2/y;

    invoke-direct {p0}, Lf1/q;-><init>()V

    new-instance p1, Landroidx/fragment/app/t;

    const/4 v0, 0x6

    invoke-direct {p1, v0, p0}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lf2/m;->z:Landroidx/fragment/app/t;

    return-void
.end method


# virtual methods
.method public final A(Landroid/view/KeyEvent;)Z
    .locals 8

    sget-object v0, Lk1/h;->a:[I

    invoke-static {p1}, Lw1/c;->b(Landroid/view/KeyEvent;)J

    move-result-wide v0

    sget-wide v2, Lw1/a;->b:J

    invoke-static {v0, v1, v2, v3}, Lw1/a;->a(JJ)Z

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v2, :cond_0

    new-instance v0, Lk1/f;

    invoke-direct {v0, v5}, Lk1/f;-><init>(I)V

    goto/16 :goto_5

    :cond_0
    sget-wide v6, Lw1/a;->c:J

    invoke-static {v0, v1, v6, v7}, Lw1/a;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lk1/f;

    invoke-direct {v0, v4}, Lk1/f;-><init>(I)V

    goto/16 :goto_5

    :cond_1
    sget-wide v6, Lw1/a;->p:J

    invoke-static {v0, v1, v6, v7}, Lw1/a;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_0
    new-instance v1, Lk1/f;

    invoke-direct {v1, v0}, Lk1/f;-><init>(I)V

    move-object v0, v1

    goto/16 :goto_5

    :cond_3
    sget-wide v6, Lw1/a;->g:J

    invoke-static {v0, v1, v6, v7}, Lw1/a;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Lk1/f;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lk1/f;-><init>(I)V

    goto/16 :goto_5

    :cond_4
    sget-wide v6, Lw1/a;->f:J

    invoke-static {v0, v1, v6, v7}, Lw1/a;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v0, Lk1/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lk1/f;-><init>(I)V

    goto/16 :goto_5

    :cond_5
    sget-wide v6, Lw1/a;->d:J

    invoke-static {v0, v1, v6, v7}, Lw1/a;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_d

    sget-wide v6, Lw1/a;->C:J

    invoke-static {v0, v1, v6, v7}, Lw1/a;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    sget-wide v6, Lw1/a;->e:J

    invoke-static {v0, v1, v6, v7}, Lw1/a;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_c

    sget-wide v6, Lw1/a;->D:J

    invoke-static {v0, v1, v6, v7}, Lw1/a;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    sget-wide v6, Lw1/a;->h:J

    invoke-static {v0, v1, v6, v7}, Lw1/a;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_b

    sget-wide v6, Lw1/a;->r:J

    invoke-static {v0, v1, v6, v7}, Lw1/a;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_b

    sget-wide v6, Lw1/a;->E:J

    invoke-static {v0, v1, v6, v7}, Lw1/a;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_2

    :cond_8
    sget-wide v6, Lw1/a;->a:J

    invoke-static {v0, v1, v6, v7}, Lw1/a;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_a

    sget-wide v6, Lw1/a;->u:J

    invoke-static {v0, v1, v6, v7}, Lw1/a;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    goto :goto_5

    :cond_a
    :goto_1
    new-instance v0, Lk1/f;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lk1/f;-><init>(I)V

    goto :goto_5

    :cond_b
    :goto_2
    new-instance v0, Lk1/f;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lk1/f;-><init>(I)V

    goto :goto_5

    :cond_c
    :goto_3
    new-instance v0, Lk1/f;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lk1/f;-><init>(I)V

    goto :goto_5

    :cond_d
    :goto_4
    new-instance v0, Lk1/f;

    invoke-direct {v0, v3}, Lk1/f;-><init>(I)V

    :goto_5
    const/4 v1, 0x0

    if-eqz v0, :cond_15

    iget v2, v0, Lk1/f;->a:I

    invoke-static {p1}, Lw1/c;->c(Landroid/view/KeyEvent;)I

    move-result p1

    if-ne p1, v5, :cond_15

    iget-object p0, p0, Lf2/m;->A:Lf2/y;

    invoke-virtual {p0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object p1

    check-cast p1, Lk1/o;

    invoke-virtual {p1}, Lk1/o;->f()Lk1/b0;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-boolean p1, p1, Lk1/b0;->z:Z

    if-ne p1, v4, :cond_e

    invoke-virtual {p0, v2}, Lf2/y;->w(I)Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {p0}, Lf2/y;->getEmbeddedViewFocusRect()Ll1/c;

    move-result-object p1

    invoke-virtual {p0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v6

    new-instance v7, Landroidx/fragment/app/t;

    invoke-direct {v7, v3, v0}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    check-cast v6, Lk1/o;

    invoke-virtual {v6, v2, p1, v7}, Lk1/o;->e(ILl1/c;Li9/c;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_6

    :cond_f
    move p1, v4

    :goto_6
    if-eqz p1, :cond_10

    :goto_7
    return v4

    :cond_10
    if-ne v2, v4, :cond_11

    goto :goto_8

    :cond_11
    if-ne v2, v5, :cond_12

    goto :goto_8

    :cond_12
    move v4, v1

    :goto_8
    if-eqz v4, :cond_15

    invoke-static {v2}, Lk1/h;->c(I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_13
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lf2/y;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_14

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    :cond_14
    invoke-virtual {p0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object p0

    check-cast p0, Lk1/o;

    invoke-virtual {p0, v2}, Lk1/o;->h(I)Z

    move-result p0

    return p0

    :cond_15
    return v1
.end method

.method public final C(Lm2/x;)V
    .locals 0

    return-void
.end method

.method public final U(Le2/h1;Ld5/a;La9/c;)Ljava/lang/Object;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Le2/h1;->R(J)J

    move-result-wide v0

    invoke-virtual {p2}, Ld5/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll1/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, v1}, Ll1/c;->j(J)Ll1/c;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    new-instance p2, Landroid/graphics/Rect;

    iget p3, p1, Ll1/c;->a:F

    float-to-int p3, p3

    iget v0, p1, Ll1/c;->b:F

    float-to-int v0, v0

    iget v1, p1, Ll1/c;->c:F

    float-to-int v1, v1

    iget p1, p1, Ll1/c;->d:F

    float-to-int p1, p1

    invoke-direct {p2, p3, v0, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p1, 0x0

    iget-object p0, p0, Lf2/m;->A:Lf2/y;

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    :cond_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public final b(Lc2/t0;Lc2/q0;J)Lc2/s0;
    .locals 6

    invoke-interface {p2, p3, p4}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object p2

    iget v1, p2, Lc2/f1;->l:I

    iget v2, p2, Lc2/f1;->m:I

    new-instance v5, Lc2/i1;

    const/4 p3, 0x1

    invoke-direct {v5, p2, p3}, Lc2/i1;-><init>(Lc2/f1;I)V

    sget-object v3, Lu8/s;->l:Lu8/s;

    iget-object v4, p0, Lf2/m;->z:Landroidx/fragment/app/t;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lc2/t0;->y0(IILjava/util/Map;Li9/c;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0
.end method

.method public final f(Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final i()Ljava/lang/Object;
    .locals 0

    const-string p0, "androidx.compose.ui.layout.WindowInsetsRulers"

    return-object p0
.end method
