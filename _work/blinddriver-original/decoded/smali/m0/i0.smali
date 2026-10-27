.class public final synthetic Lm0/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lm0/b1;


# direct methods
.method public synthetic constructor <init>(Lm0/b1;I)V
    .locals 0

    iput p2, p0, Lm0/i0;->l:I

    iput-object p1, p0, Lm0/i0;->m:Lm0/b1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lm0/i0;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Lm0/i0;->m:Lm0/b1;

    iget-object p1, p0, Lm0/b1;->a:Lm0/i1;

    invoke-virtual {p1}, Lm0/i1;->a()Lk/b0;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lk/b0;->b(J)Z

    move-result p1

    sget-object v0, Lt8/z;->a:Lt8/z;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lm0/b1;->m:Lr0/e1;

    invoke-virtual {p1, v0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lm0/b1;->m()V

    invoke-virtual {p0}, Lm0/b1;->o()V

    :cond_0
    return-object v0

    :pswitch_0
    iget-object p0, p0, Lm0/i0;->m:Lm0/b1;

    check-cast p1, Lm0/a0;

    invoke-virtual {p0, p1}, Lm0/b1;->l(Lm0/a0;)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lm0/i0;->m:Lm0/b1;

    invoke-virtual {p0, p1}, Lm0/b1;->k(Z)V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lm0/i0;->m:Lm0/b1;

    iget-object v0, p0, Lm0/b1;->i:Lr0/e1;

    check-cast p1, Lk1/y;

    check-cast p1, Lk1/z;

    invoke-virtual {p1}, Lk1/z;->a()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lm0/b1;->i()V

    :cond_1
    invoke-virtual {p1}, Lk1/z;->a()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    check-cast p1, Lc2/u;

    iget-object p0, p0, Lm0/i0;->m:Lm0/b1;

    iput-object p1, p0, Lm0/b1;->l:Lc2/u;

    iget-object v0, p0, Lm0/b1;->i:Lr0/e1;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lm0/b1;->f()Lm0/a0;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x0

    invoke-interface {p1, v0, v1}, Lc2/u;->e(J)J

    move-result-wide v0

    new-instance p1, Ll1/b;

    invoke-direct {p1, v0, v1}, Ll1/b;-><init>(J)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lm0/b1;->k:Ll1/b;

    invoke-static {v0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p1, p0, Lm0/b1;->k:Ll1/b;

    invoke-virtual {p0}, Lm0/b1;->m()V

    invoke-virtual {p0}, Lm0/b1;->o()V

    :cond_3
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Lm0/i0;->m:Lm0/b1;

    invoke-virtual {p0}, Lm0/b1;->f()Lm0/a0;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p1, Lm0/a0;->a:Lm0/z;

    if-eqz p1, :cond_4

    iget-wide v3, p1, Lm0/z;->c:J

    cmp-long p1, v0, v3

    if-nez p1, :cond_4

    iget-object p1, p0, Lm0/b1;->p:Lr0/e1;

    invoke-virtual {p1, v2}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p0}, Lm0/b1;->f()Lm0/a0;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p1, Lm0/a0;->b:Lm0/z;

    if-eqz p1, :cond_5

    iget-wide v3, p1, Lm0/z;->c:J

    cmp-long p1, v0, v3

    if-nez p1, :cond_5

    iget-object p1, p0, Lm0/b1;->q:Lr0/e1;

    invoke-virtual {p1, v2}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :cond_5
    iget-object p1, p0, Lm0/b1;->a:Lm0/i1;

    invoke-virtual {p1}, Lm0/i1;->a()Lk/b0;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lk/b0;->b(J)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lm0/b1;->o()V

    :cond_6
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_5
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Lm0/i0;->m:Lm0/b1;

    iget-object p1, p0, Lm0/b1;->a:Lm0/i1;

    invoke-virtual {p1}, Lm0/i1;->a()Lk/b0;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lk/b0;->b(J)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lm0/b1;->i()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lm0/b1;->l(Lm0/a0;)V

    :cond_7
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_6
    check-cast p1, Lc2/u;

    iget-object p0, p0, Lm0/i0;->m:Lm0/b1;

    iget-object v0, p0, Lm0/b1;->j:Lr0/d0;

    invoke-virtual {v0}, Lr0/d0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll1/c;

    if-nez v0, :cond_8

    const/4 p0, 0x0

    goto :goto_2

    :cond_8
    iget-object p0, p0, Lm0/b1;->l:Lc2/u;

    if-eqz p0, :cond_9

    invoke-static {v0, p0, p1}, Lh0/h;->e(Ll1/c;Lc2/u;Lc2/u;)Ll1/c;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_9
    const-string p0, "Required value was null."

    invoke-static {p0}, Lt/b;->d(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :pswitch_7
    check-cast p1, Lr0/g0;

    new-instance p1, Lb0/u0;

    const/4 v0, 0x7

    iget-object p0, p0, Lm0/i0;->m:Lm0/b1;

    invoke-direct {p1, v0, p0}, Lb0/u0;-><init>(ILjava/lang/Object;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
