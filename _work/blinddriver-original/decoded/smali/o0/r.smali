.class public final Lo0/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx9/h;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ld1/v;


# direct methods
.method public synthetic constructor <init>(Ld1/v;I)V
    .locals 0

    iput p2, p0, Lo0/r;->l:I

    iput-object p1, p0, Lo0/r;->m:Ld1/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;
    .locals 0

    iget p2, p0, Lo0/r;->l:I

    packed-switch p2, :pswitch_data_0

    check-cast p1, Ls/h;

    instance-of p2, p1, Ls/k;

    iget-object p0, p0, Lo0/r;->m:Ld1/v;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Ld1/v;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    instance-of p2, p1, Ls/l;

    if-eqz p2, :cond_1

    check-cast p1, Ls/l;

    iget-object p1, p1, Ls/l;->a:Ls/k;

    invoke-virtual {p0, p1}, Ld1/v;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of p2, p1, Ls/j;

    if-eqz p2, :cond_2

    check-cast p1, Ls/j;

    iget-object p1, p1, Ls/j;->a:Ls/k;

    invoke-virtual {p0, p1}, Ld1/v;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    instance-of p2, p1, Ls/b;

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Ld1/v;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    instance-of p2, p1, Ls/c;

    if-eqz p2, :cond_4

    check-cast p1, Ls/c;

    iget-object p1, p1, Ls/c;->a:Ls/b;

    invoke-virtual {p0, p1}, Ld1/v;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    instance-of p2, p1, Ls/a;

    if-eqz p2, :cond_5

    check-cast p1, Ls/a;

    iget-object p1, p1, Ls/a;->a:Ls/b;

    invoke-virtual {p0, p1}, Ld1/v;->remove(Ljava/lang/Object;)Z

    :cond_5
    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Ls/h;

    instance-of p2, p1, Ls/f;

    iget-object p0, p0, Lo0/r;->m:Ld1/v;

    if-eqz p2, :cond_6

    invoke-virtual {p0, p1}, Ld1/v;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    instance-of p2, p1, Ls/g;

    if-eqz p2, :cond_7

    check-cast p1, Ls/g;

    iget-object p1, p1, Ls/g;->a:Ls/f;

    invoke-virtual {p0, p1}, Ld1/v;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    instance-of p2, p1, Ls/d;

    if-eqz p2, :cond_8

    invoke-virtual {p0, p1}, Ld1/v;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    instance-of p2, p1, Ls/e;

    if-eqz p2, :cond_9

    check-cast p1, Ls/e;

    iget-object p1, p1, Ls/e;->a:Ls/d;

    invoke-virtual {p0, p1}, Ld1/v;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    instance-of p2, p1, Ls/k;

    if-eqz p2, :cond_a

    invoke-virtual {p0, p1}, Ld1/v;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    instance-of p2, p1, Ls/l;

    if-eqz p2, :cond_b

    check-cast p1, Ls/l;

    iget-object p1, p1, Ls/l;->a:Ls/k;

    invoke-virtual {p0, p1}, Ld1/v;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_b
    instance-of p2, p1, Ls/j;

    if-eqz p2, :cond_c

    check-cast p1, Ls/j;

    iget-object p1, p1, Ls/j;->a:Ls/k;

    invoke-virtual {p0, p1}, Ld1/v;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_c
    instance-of p2, p1, Ls/b;

    if-eqz p2, :cond_d

    invoke-virtual {p0, p1}, Ld1/v;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_d
    instance-of p2, p1, Ls/c;

    if-eqz p2, :cond_e

    check-cast p1, Ls/c;

    iget-object p1, p1, Ls/c;->a:Ls/b;

    invoke-virtual {p0, p1}, Ld1/v;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_e
    instance-of p2, p1, Ls/a;

    if-eqz p2, :cond_f

    check-cast p1, Ls/a;

    iget-object p1, p1, Ls/a;->a:Ls/b;

    invoke-virtual {p0, p1}, Ld1/v;->remove(Ljava/lang/Object;)Z

    :cond_f
    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    check-cast p1, Ls/h;

    instance-of p2, p1, Ls/f;

    iget-object p0, p0, Lo0/r;->m:Ld1/v;

    if-eqz p2, :cond_10

    invoke-virtual {p0, p1}, Ld1/v;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_10
    instance-of p2, p1, Ls/g;

    if-eqz p2, :cond_11

    check-cast p1, Ls/g;

    iget-object p1, p1, Ls/g;->a:Ls/f;

    invoke-virtual {p0, p1}, Ld1/v;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_11
    instance-of p2, p1, Ls/d;

    if-eqz p2, :cond_12

    invoke-virtual {p0, p1}, Ld1/v;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_12
    instance-of p2, p1, Ls/e;

    if-eqz p2, :cond_13

    check-cast p1, Ls/e;

    iget-object p1, p1, Ls/e;->a:Ls/d;

    invoke-virtual {p0, p1}, Ld1/v;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_13
    instance-of p2, p1, Ls/k;

    if-eqz p2, :cond_14

    invoke-virtual {p0, p1}, Ld1/v;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_14
    instance-of p2, p1, Ls/l;

    if-eqz p2, :cond_15

    check-cast p1, Ls/l;

    iget-object p1, p1, Ls/l;->a:Ls/k;

    invoke-virtual {p0, p1}, Ld1/v;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_15
    instance-of p2, p1, Ls/j;

    if-eqz p2, :cond_16

    check-cast p1, Ls/j;

    iget-object p1, p1, Ls/j;->a:Ls/k;

    invoke-virtual {p0, p1}, Ld1/v;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_16
    instance-of p2, p1, Ls/b;

    if-eqz p2, :cond_17

    invoke-virtual {p0, p1}, Ld1/v;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_17
    instance-of p2, p1, Ls/c;

    if-eqz p2, :cond_18

    check-cast p1, Ls/c;

    iget-object p1, p1, Ls/c;->a:Ls/b;

    invoke-virtual {p0, p1}, Ld1/v;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_18
    instance-of p2, p1, Ls/a;

    if-eqz p2, :cond_19

    check-cast p1, Ls/a;

    iget-object p1, p1, Ls/a;->a:Ls/b;

    invoke-virtual {p0, p1}, Ld1/v;->remove(Ljava/lang/Object;)Z

    :cond_19
    :goto_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    check-cast p1, Ls/h;

    instance-of p2, p1, Ls/f;

    iget-object p0, p0, Lo0/r;->m:Ld1/v;

    if-eqz p2, :cond_1a

    invoke-virtual {p0, p1}, Ld1/v;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1a
    instance-of p2, p1, Ls/g;

    if-eqz p2, :cond_1b

    check-cast p1, Ls/g;

    iget-object p1, p1, Ls/g;->a:Ls/f;

    invoke-virtual {p0, p1}, Ld1/v;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1b
    instance-of p2, p1, Ls/d;

    if-eqz p2, :cond_1c

    invoke-virtual {p0, p1}, Ld1/v;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1c
    instance-of p2, p1, Ls/e;

    if-eqz p2, :cond_1d

    check-cast p1, Ls/e;

    iget-object p1, p1, Ls/e;->a:Ls/d;

    invoke-virtual {p0, p1}, Ld1/v;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1d
    instance-of p2, p1, Ls/k;

    if-eqz p2, :cond_1e

    invoke-virtual {p0, p1}, Ld1/v;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1e
    instance-of p2, p1, Ls/l;

    if-eqz p2, :cond_1f

    check-cast p1, Ls/l;

    iget-object p1, p1, Ls/l;->a:Ls/k;

    invoke-virtual {p0, p1}, Ld1/v;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1f
    instance-of p2, p1, Ls/j;

    if-eqz p2, :cond_20

    check-cast p1, Ls/j;

    iget-object p1, p1, Ls/j;->a:Ls/k;

    invoke-virtual {p0, p1}, Ld1/v;->remove(Ljava/lang/Object;)Z

    :cond_20
    :goto_3
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
