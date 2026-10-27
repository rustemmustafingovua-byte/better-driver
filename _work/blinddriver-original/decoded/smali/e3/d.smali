.class public final Le3/d;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Le3/z;

.field public final synthetic n:Le2/g0;


# direct methods
.method public synthetic constructor <init>(Le3/z;Le2/g0;I)V
    .locals 0

    iput p3, p0, Le3/d;->l:I

    iput-object p1, p0, Le3/d;->m:Le3/z;

    iput-object p2, p0, Le3/d;->n:Le2/g0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Le3/d;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lc2/u;

    iget-object v0, p0, Le3/d;->n:Le2/g0;

    iget-object p0, p0, Le3/d;->m:Le3/z;

    invoke-static {p0, v0}, Le3/l;->d(Le3/z;Le2/g0;)V

    iget-object v0, p0, Le3/k;->n:Le2/q1;

    check-cast v0, Lf2/y;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lf2/y;->R:Z

    iget-object v0, p0, Le3/k;->y:[I

    const/4 v2, 0x0

    aget v3, v0, v2

    aget v4, v0, v1

    invoke-virtual {p0}, Le3/k;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-wide v5, p0, Le3/k;->z:J

    invoke-interface {p1}, Lc2/u;->o()J

    move-result-wide v7

    iput-wide v7, p0, Le3/k;->z:J

    iget-object p1, p0, Le3/k;->A:Lq3/x0;

    if-eqz p1, :cond_1

    aget v2, v0, v2

    if-ne v3, v2, :cond_0

    aget v0, v0, v1

    if-ne v4, v0, :cond_0

    invoke-static {v5, v6, v7, v8}, Lb3/l;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Le3/k;->g(Lq3/x0;)Lq3/x0;

    move-result-object p1

    invoke-virtual {p1}, Lq3/x0;->b()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Le3/k;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    :cond_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Lc2/e1;

    iget-object p1, p0, Le3/d;->m:Le3/z;

    iget-object p0, p0, Le3/d;->n:Le2/g0;

    invoke-static {p1, p0}, Le3/l;->d(Le3/z;Le2/g0;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    check-cast p1, Le2/q1;

    instance-of v0, p1, Lf2/y;

    if-eqz v0, :cond_2

    check-cast p1, Lf2/y;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Le3/d;->m:Le3/z;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lf2/y;->getAndroidViewsHandler$ui()Lf2/a1;

    move-result-object v1

    invoke-virtual {v1}, Lf2/a1;->getHolderToLayoutNode()Ljava/util/HashMap;

    move-result-object v1

    iget-object p0, p0, Le3/d;->n:Le2/g0;

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lf2/y;->getAndroidViewsHandler$ui()Lf2/a1;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Lf2/y;->getAndroidViewsHandler$ui()Lf2/a1;

    move-result-object v1

    invoke-virtual {v1}, Lf2/a1;->getLayoutNodeToHolder()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    new-instance v1, Lf2/o;

    invoke-direct {v1, p1, p0, p1}, Lf2/o;-><init>(Lf2/y;Le2/g0;Lf2/y;)V

    invoke-static {v0, v1}, Lq3/q;->c(Landroid/view/ViewGroup;Lq3/b;)V

    :cond_3
    invoke-virtual {v0}, Le3/k;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eq p0, v0, :cond_4

    invoke-virtual {v0}, Le3/k;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
