.class public final Lf2/o;
.super Lq3/b;
.source "SourceFile"


# instance fields
.field public final synthetic o:Lf2/y;

.field public final synthetic p:Le2/g0;

.field public final synthetic q:Lf2/y;


# direct methods
.method public constructor <init>(Lf2/y;Le2/g0;Lf2/y;)V
    .locals 0

    iput-object p1, p0, Lf2/o;->o:Lf2/y;

    iput-object p2, p0, Lf2/o;->p:Le2/g0;

    iput-object p3, p0, Lf2/o;->q:Lf2/y;

    invoke-direct {p0}, Lq3/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;Lr3/g;)V
    .locals 7

    iget-object v0, p2, Lr3/g;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v1, p0, Lq3/b;->l:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v1, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p1, p0, Lf2/o;->o:Lf2/y;

    iget-object v1, p1, Lf2/y;->J:Lf2/e0;

    invoke-virtual {v1}, Lf2/e0;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    :cond_0
    iget-object v2, p0, Lf2/o;->p:Le2/g0;

    invoke-virtual {v2}, Le2/g0;->v()Le2/g0;

    move-result-object v3

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v5, v3, Le2/g0;->R:Le2/c1;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Le2/c1;->d(I)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Le2/g0;->v()Le2/g0;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_3

    iget v3, v3, Le2/g0;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_3
    const/4 v3, -0x1

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lf2/y;->getSemanticsOwner()Lm2/r;

    move-result-object v5

    invoke-virtual {v5}, Lm2/r;->a()Lm2/p;

    move-result-object v5

    iget v5, v5, Lm2/p;->g:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_5

    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_5
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p2, Lr3/g;->b:I

    iget-object p0, p0, Lf2/o;->q:Lf2/y;

    invoke-virtual {v0, p0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    iget p2, v2, Le2/g0;->m:I

    iget-object v2, v1, Lf2/e0;->N:Lk/v;

    invoke-virtual {v2, p2}, Lk/v;->d(I)I

    move-result v2

    if-eq v2, v3, :cond_7

    invoke-virtual {p1}, Lf2/y;->getAndroidViewsHandler$ui()Lf2/a1;

    move-result-object v4

    invoke-static {v4, v2}, Lf2/k0;->o(Lf2/a1;I)Le3/k;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v0, p0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;I)V

    :goto_2
    iget-object v2, v1, Lf2/e0;->P:Ljava/lang/String;

    invoke-static {p1, p2, v0, v2}, Lf2/y;->f(Lf2/y;ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V

    :cond_7
    iget-object v2, v1, Lf2/e0;->O:Lk/v;

    invoke-virtual {v2, p2}, Lk/v;->d(I)I

    move-result v2

    if-eq v2, v3, :cond_9

    invoke-virtual {p1}, Lf2/y;->getAndroidViewsHandler$ui()Lf2/a1;

    move-result-object v3

    invoke-static {v3, v2}, Lf2/k0;->o(Lf2/a1;I)Le3/k;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v0, p0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;I)V

    :goto_3
    iget-object p0, v1, Lf2/e0;->Q:Ljava/lang/String;

    invoke-static {p1, p2, v0, p0}, Lf2/y;->f(Lf2/y;ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V

    :cond_9
    return-void
.end method
