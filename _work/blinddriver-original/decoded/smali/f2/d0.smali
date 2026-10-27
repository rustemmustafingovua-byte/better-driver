.class public final Lf2/d0;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lf2/e0;


# direct methods
.method public synthetic constructor <init>(Lf2/e0;I)V
    .locals 0

    iput p2, p0, Lf2/d0;->l:I

    iput-object p1, p0, Lf2/d0;->m:Lf2/e0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lf2/d0;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lf2/i2;

    iget-object v0, p1, Lf2/i2;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lf2/d0;->m:Lf2/e0;

    iget-object v0, p0, Lf2/e0;->o:Lf2/y;

    invoke-virtual {v0}, Lf2/y;->getSnapshotObserver()Le2/s1;

    move-result-object v0

    iget-object v1, p0, Lf2/e0;->Y:Lf2/d0;

    new-instance v2, Ld5/a;

    const/4 v3, 0x6

    invoke-direct {v2, v3, p1, p0}, Ld5/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, v0, Le2/s1;->a:Ld1/b0;

    invoke-virtual {p0, p1, v1, v2}, Ld1/b0;->c(Ljava/lang/Object;Li9/c;Li9/a;)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/accessibility/AccessibilityEvent;

    iget-object p0, p0, Lf2/d0;->m:Lf2/e0;

    iget-object v0, p0, Lf2/e0;->o:Lf2/y;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object p0, p0, Lf2/e0;->o:Lf2/y;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
