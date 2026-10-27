.class public final Lb0/g2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    iput v0, p0, Lb0/g2;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 2
    iput p1, p0, Lb0/g2;->l:I

    iput-object p2, p0, Lb0/g2;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lb0/g2;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lb0/g2;->m:Ljava/lang/Object;

    check-cast p0, Ly1/a0;

    if-eqz p0, :cond_0

    iput-boolean p1, p0, Ly1/a0;->c:Z

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, Lb0/g2;->m:Ljava/lang/Object;

    check-cast p0, Lr0/f;

    invoke-interface {p0}, Lr0/f;->cancel()V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    check-cast p1, Lw1/b;

    iget-object p1, p1, Lw1/b;->a:Landroid/view/KeyEvent;

    sget-object v0, Lb0/n1;->a:Lb0/j1;

    invoke-virtual {v0, p1}, Lb0/j1;->a(Landroid/view/KeyEvent;)Lb0/i1;

    move-result-object p1

    sget-object v0, Lb0/i1;->D:Lb0/i1;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lb0/g2;->m:Ljava/lang/Object;

    check-cast p0, Lm0/b1;

    invoke-virtual {p0}, Lm0/b1;->b()V

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lm1/z;

    iget-object p1, p1, Lm1/z;->a:[F

    iget-object p0, p0, Lb0/g2;->m:Ljava/lang/Object;

    check-cast p0, Lc2/u;

    invoke-interface {p0}, Lc2/u;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lc2/x;->h(Lc2/u;)Lc2/u;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lc2/u;->k(Lc2/u;[F)V

    :cond_2
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
