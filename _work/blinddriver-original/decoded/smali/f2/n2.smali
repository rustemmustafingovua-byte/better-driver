.class public final Lf2/n2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lf2/n2;->l:I

    iput-object p2, p0, Lf2/n2;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private final b(Landroid/view/View;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lf2/n2;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lf2/n2;->m:Ljava/lang/Object;

    check-cast p0, Lm1/d;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-boolean v0, p0, Lm1/d;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lm1/d;->d:Lm1/c;

    invoke-virtual {p1, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lm1/d;->c:Z

    :cond_0
    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 4

    iget v0, p0, Lf2/n2;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lf2/n2;->m:Ljava/lang/Object;

    check-cast p0, Lm1/d;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-boolean v0, p0, Lm1/d;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lm1/d;->d:Lm1/c;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lm1/d;->c:Z

    :cond_0
    return-void

    :pswitch_0
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p0, p0, Lf2/n2;->m:Ljava/lang/Object;

    check-cast p0, Lu9/j1;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lu9/c1;->c(Ljava/util/concurrent/CancellationException;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lf2/n2;->m:Ljava/lang/Object;

    check-cast p0, Lf2/a;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    sget-object v0, Lq3/s;->s:Lq3/s;

    invoke-static {v0, p1}, Lq9/j;->C(Li9/c;Ljava/lang/Object;)Lq9/h;

    move-result-object p1

    invoke-interface {p1}, Lq9/h;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewParent;

    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/view/View;

    const-string v3, "<this>"

    invoke-static {v0, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f080055

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_3
    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_4
    if-nez v2, :cond_6

    iget-object p1, p0, Lf2/a;->n:Lf2/g3;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lf2/g3;->a()V

    :cond_5
    iput-object v1, p0, Lf2/a;->n:Lf2/g3;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
