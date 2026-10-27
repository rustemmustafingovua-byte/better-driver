.class public final synthetic Lk0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lk0/g;


# direct methods
.method public synthetic constructor <init>(Lk0/g;I)V
    .locals 0

    iput p2, p0, Lk0/e;->l:I

    iput-object p1, p0, Lk0/e;->m:Lk0/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lk0/e;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lk0/e;->m:Lk0/g;

    iget-object v0, p0, Lk0/g;->D:Lb0/r1;

    iget-object p0, p0, Lk0/g;->J:Lk1/u;

    invoke-virtual {v0}, Lb0/r1;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lk1/u;->a(Lk1/u;)V

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lb0/r1;->c:Lf2/k2;

    if-eqz p0, :cond_1

    check-cast p0, Lf2/n1;

    invoke-virtual {p0}, Lf2/n1;->b()V

    :cond_1
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lk0/e;->m:Lk0/g;

    iget-object v0, p0, Lk0/g;->D:Lb0/r1;

    iget-object v0, v0, Lb0/r1;->w:Lb0/h0;

    iget-object p0, p0, Lk0/g;->I:Lu2/k;

    iget p0, p0, Lu2/k;->e:I

    iget-object v0, v0, Lb0/h0;->m:Lb0/r1;

    iget-object v0, v0, Lb0/r1;->r:Lb0/o1;

    invoke-virtual {v0, p0}, Lb0/o1;->b(I)Z

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lk0/e;->m:Lk0/g;

    iget-object p0, p0, Lk0/g;->H:Lm0/v1;

    invoke-virtual {p0}, Lm0/v1;->p()V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lk0/e;->m:Lk0/g;

    invoke-static {p0}, Le2/l;->s(Le2/j;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lk0/e;->m:Lk0/g;

    iget-object p0, p0, Lk0/g;->H:Lm0/v1;

    invoke-virtual {p0}, Lm0/v1;->f()V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lk0/e;->m:Lk0/g;

    iget-object p0, p0, Lk0/g;->H:Lm0/v1;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lm0/v1;->d(Z)Lu9/j1;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_5
    iget-object p0, p0, Lk0/e;->m:Lk0/g;

    iget-object p0, p0, Lk0/g;->H:Lm0/v1;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lm0/v1;->h(Z)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_6
    iget-object p0, p0, Lk0/e;->m:Lk0/g;

    invoke-static {p0}, Le2/l;->s(Le2/j;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
