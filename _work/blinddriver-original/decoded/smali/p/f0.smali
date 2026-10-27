.class public final synthetic Lp/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lp/h0;


# direct methods
.method public synthetic constructor <init>(Lp/h0;I)V
    .locals 0

    iput p2, p0, Lp/f0;->l:I

    iput-object p1, p0, Lp/f0;->m:Lp/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lp/f0;->l:I

    check-cast p1, Ll1/b;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lp/f0;->m:Lp/h0;

    iget-boolean p1, p0, Lp/g;->G:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lp/g;->H:Li9/a;

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lp/f0;->m:Lp/h0;

    iget-object p1, p0, Lp/h0;->X:Li9/a;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Li9/a;->invoke()Ljava/lang/Object;

    :cond_1
    iget-boolean p1, p0, Lp/h0;->Y:Z

    if-eqz p1, :cond_2

    sget-object p1, Lf2/l1;->l:Lr0/s2;

    invoke-static {p0, p1}, Le2/l;->h(Le2/i;Lr0/m1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lt1/a;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lt1/a;->a(I)V

    :cond_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
