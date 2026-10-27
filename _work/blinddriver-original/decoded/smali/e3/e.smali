.class public final Le3/e;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Le3/z;


# direct methods
.method public synthetic constructor <init>(Le3/z;I)V
    .locals 0

    iput p2, p0, Le3/e;->l:I

    iput-object p1, p0, Le3/e;->m:Le3/z;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Le3/e;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object p0, p0, Le3/e;->m:Le3/z;

    packed-switch v0, :pswitch_data_1

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Li9/c;

    iget-object p0, p0, Le3/e;->m:Le3/z;

    iput-object p1, p0, Le3/k;->B:Li9/c;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    check-cast p1, Le2/q1;

    instance-of v0, p1, Lf2/y;

    if-eqz v0, :cond_0

    check-cast p1, Lf2/y;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    iget-object p0, p0, Le3/e;->m:Le3/z;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lf2/y;->getAndroidViewsHandler$ui()Lf2/a1;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    invoke-virtual {p1}, Lf2/y;->getAndroidViewsHandler$ui()Lf2/a1;

    move-result-object v0

    invoke-virtual {v0}, Lf2/a1;->getLayoutNodeToHolder()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lf2/y;->getAndroidViewsHandler$ui()Lf2/a1;

    move-result-object p1

    invoke-virtual {p1}, Lf2/a1;->getHolderToLayoutNode()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0}, Lj9/b0;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
