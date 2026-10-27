.class public final Lf3/a;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lf3/v;


# direct methods
.method public synthetic constructor <init>(Lf3/v;I)V
    .locals 0

    iput p2, p0, Lf3/a;->l:I

    iput-object p1, p0, Lf3/a;->m:Lf3/v;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lf3/a;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lb/b0;

    iget-object p0, p0, Lf3/a;->m:Lf3/v;

    iget-object p1, p0, Lf3/v;->q:Lf3/u;

    iget-boolean p1, p1, Lf3/u;->a:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lf3/v;->p:Li9/a;

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Lr0/g0;

    iget-object p0, p0, Lf3/a;->m:Lf3/v;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    new-instance p1, Lb0/u0;

    const/4 v0, 0x3

    invoke-direct {p1, v0, p0}, Lb0/u0;-><init>(ILjava/lang/Object;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
