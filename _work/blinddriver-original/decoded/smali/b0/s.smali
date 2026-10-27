.class public final synthetic Lb0/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lb0/e3;

.field public final synthetic n:Li9/c;


# direct methods
.method public synthetic constructor <init>(Lb0/e3;Li9/c;I)V
    .locals 0

    iput p3, p0, Lb0/s;->l:I

    iput-object p1, p0, Lb0/s;->m:Lb0/e3;

    iput-object p2, p0, Lb0/s;->n:Li9/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lb0/s;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lr0/g0;

    iget-object p1, p0, Lb0/s;->m:Lb0/e3;

    iget-object v0, p1, Lb0/e3;->c:Ld1/v;

    iget-object p0, p0, Lb0/s;->n:Li9/c;

    invoke-virtual {v0, p0}, Ld1/v;->add(Ljava/lang/Object;)Z

    new-instance v0, Lb0/q2;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p0}, Lb0/q2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :pswitch_0
    check-cast p1, Lp2/j0;

    iget-object v0, p0, Lb0/s;->m:Lb0/e3;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lb0/e3;->a:Lr0/e1;

    invoke-virtual {v0, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lb0/s;->n:Li9/c;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
