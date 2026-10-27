.class public final Lf3/h;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lf3/x;


# direct methods
.method public synthetic constructor <init>(Lf3/x;I)V
    .locals 0

    iput p2, p0, Lf3/h;->l:I

    iput-object p1, p0, Lf3/h;->m:Lf3/x;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lf3/h;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Li9/a;

    iget-object p0, p0, Lf3/h;->m:Lf3/x;

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Li9/a;->invoke()Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v0, Le3/a;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Le3/a;-><init>(Li9/a;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Lb3/l;

    iget-wide v0, p1, Lb3/l;->a:J

    new-instance p1, Lb3/l;

    invoke-direct {p1, v0, v1}, Lb3/l;-><init>(J)V

    iget-object p0, p0, Lf3/h;->m:Lf3/x;

    invoke-virtual {p0, p1}, Lf3/x;->setPopupContentSize-fhxjrPA(Lb3/l;)V

    invoke-virtual {p0}, Lf3/x;->m()V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    check-cast p1, Lc2/u;

    invoke-interface {p1}, Lc2/u;->I()Lc2/u;

    move-result-object p1

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object p0, p0, Lf3/h;->m:Lf3/x;

    invoke-virtual {p0, p1}, Lf3/x;->l(Lc2/u;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
