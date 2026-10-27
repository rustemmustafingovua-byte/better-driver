.class public final Lf2/y2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx9/h;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lf2/y2;->l:I

    iput-object p2, p0, Lf2/y2;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;
    .locals 1

    iget p2, p0, Lf2/y2;->l:I

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lf2/y2;->m:Ljava/lang/Object;

    check-cast p0, Landroid/app/Application;

    new-instance p1, Li3/f;

    invoke-direct {p1, p0}, Li3/f;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x1005

    iget-object p1, p1, Li3/f;->a:Landroid/app/NotificationManager;

    invoke-virtual {p1, v0, p0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Lt8/z;

    sget-object p1, Lsc/i0;->a:Lsc/i0;

    const/4 p1, 0x0

    sput-boolean p1, Lsc/i0;->T:Z

    iget-object p0, p0, Lf2/y2;->m:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    check-cast p1, Ls/h;

    iget-object p0, p0, Lf2/y2;->m:Ljava/lang/Object;

    check-cast p0, Lr0/b1;

    instance-of p2, p1, Ls/k;

    if-nez p2, :cond_5

    instance-of p2, p1, Ls/d;

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    instance-of p2, p1, Ls/l;

    if-nez p2, :cond_4

    instance-of p2, p1, Ls/e;

    if-nez p2, :cond_4

    instance-of p1, p1, Ls/j;

    if-eqz p1, :cond_6

    :cond_4
    invoke-virtual {p0}, Lr0/b1;->g()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lr0/b1;->h(I)V

    goto :goto_1

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lr0/b1;->g()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lr0/b1;->h(I)V

    :cond_6
    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    check-cast p1, Lt8/z;

    iget-object p0, p0, Lf2/y2;->m:Ljava/lang/Object;

    check-cast p0, Lk0/l;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x22

    if-lt p1, p2, :cond_7

    invoke-virtual {p0}, Lk0/l;->g()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    iget-object p0, p0, Lk0/l;->m:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {p1, p0}, Lb/b;->t(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    :cond_7
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_3
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget-object p0, p0, Lf2/y2;->m:Ljava/lang/Object;

    check-cast p0, Lf2/b2;

    iget-object p0, p0, Lf2/b2;->l:Lr0/a1;

    invoke-virtual {p0, p1}, Lr0/a1;->h(F)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
