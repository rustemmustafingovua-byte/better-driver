.class public final synthetic Lg0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lg0/g;


# direct methods
.method public synthetic constructor <init>(Lg0/g;I)V
    .locals 0

    iput p2, p0, Lg0/a;->l:I

    iput-object p1, p0, Lg0/a;->m:Lg0/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lg0/a;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lr0/g0;

    iget-object p0, p0, Lg0/a;->m:Lg0/g;

    iget-object p1, p0, Lg0/g;->e:Ld1/b0;

    invoke-virtual {p1}, Ld1/b0;->d()V

    new-instance p1, Lb0/u0;

    const/4 v0, 0x5

    invoke-direct {p1, v0, p0}, Lb0/u0;-><init>(ILjava/lang/Object;)V

    return-object p1

    :pswitch_0
    iget-object p0, p0, Lg0/a;->m:Lg0/g;

    iget-object p0, p0, Lg0/g;->h:Landroid/view/ActionMode;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ActionMode;->invalidateContentRect()V

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lg0/a;->m:Lg0/g;

    iget-object p0, p0, Lg0/g;->h:Landroid/view/ActionMode;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/ActionMode;->invalidate()V

    :cond_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    check-cast p1, Li9/a;

    iget-object p0, p0, Lg0/a;->m:Lg0/g;

    iget-object p0, p0, Lg0/g;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3

    invoke-interface {p1}, Li9/a;->invoke()Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_4

    new-instance v0, Le3/a;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Le3/a;-><init>(Li9/a;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
