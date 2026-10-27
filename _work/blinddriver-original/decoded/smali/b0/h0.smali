.class public final synthetic Lb0/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lb0/r1;


# direct methods
.method public synthetic constructor <init>(Lb0/r1;I)V
    .locals 0

    iput p2, p0, Lb0/h0;->l:I

    iput-object p1, p0, Lb0/h0;->m:Lb0/r1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lb0/h0;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lu2/j;

    iget-object p0, p0, Lb0/h0;->m:Lb0/r1;

    iget-object p0, p0, Lb0/r1;->r:Lb0/o1;

    iget p1, p1, Lu2/j;->a:I

    invoke-virtual {p0, p1}, Lb0/o1;->b(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lu2/j;

    iget-object p0, p0, Lb0/h0;->m:Lb0/r1;

    iget-object p0, p0, Lb0/r1;->r:Lb0/o1;

    iget p1, p1, Lu2/j;->a:I

    invoke-virtual {p0, p1}, Lb0/o1;->b(I)Z

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lb0/h0;->m:Lb0/r1;

    iget-object v0, p0, Lb0/r1;->t:Lr0/e1;

    check-cast p1, Lu2/x;

    iget-object v1, p1, Lu2/x;->a:Lp2/g;

    iget-object v1, v1, Lp2/g;->m:Ljava/lang/String;

    iget-object v2, p0, Lb0/r1;->j:Lp2/g;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v2, Lp2/g;->m:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-static {v1, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lb0/e1;->l:Lb0/e1;

    iget-object v2, p0, Lb0/r1;->k:Lr0/e1;

    invoke-virtual {v2, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lb0/r1;->s:Lr0/e1;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    sget-wide v0, Lp2/l0;->b:J

    invoke-virtual {p0, v0, v1}, Lb0/r1;->f(J)V

    invoke-virtual {p0, v0, v1}, Lb0/r1;->e(J)V

    iget-object v0, p0, Lb0/r1;->u:Li9/c;

    invoke-interface {v0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lb0/r1;->b:Lr0/n1;

    iget-object p1, p0, Lr0/n1;->a:Lr0/x;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0, v3}, Lr0/x;->s(Lr0/n1;Ljava/lang/Object;)Lr0/n0;

    :cond_3
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    check-cast p1, Lc2/u;

    iget-object p0, p0, Lb0/h0;->m:Lb0/r1;

    invoke-virtual {p0}, Lb0/r1;->d()Lb0/z2;

    move-result-object p0

    if-eqz p0, :cond_4

    iput-object p1, p0, Lb0/z2;->c:Lc2/u;

    :cond_4
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object p0, p0, Lb0/h0;->m:Lb0/r1;

    iget-object p0, p0, Lb0/r1;->q:Lr0/e1;

    invoke-virtual {p0, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

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
