.class public final Lf2/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/a;


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;I)V
    .locals 0

    iput p2, p0, Lf2/m1;->a:I

    iput-object p1, p0, Lf2/m1;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget v0, p0, Lf2/m1;->a:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0xd

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x17

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/16 v0, 0x11

    if-ne p1, v0, :cond_6

    goto :goto_0

    :cond_6
    const/16 v0, 0x1b

    if-ne p1, v0, :cond_7

    goto :goto_0

    :cond_7
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_8

    goto :goto_0

    :cond_8
    const/16 v0, 0x9

    if-ne p1, v0, :cond_9

    goto :goto_0

    :cond_9
    const/16 v0, 0x16

    if-ne p1, v0, :cond_a

    goto :goto_0

    :cond_a
    const/16 v0, 0x15

    if-ne p1, v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v0, -0x1

    :goto_0
    iget-object p0, p0, Lf2/m1;->b:Landroid/view/View;

    check-cast p0, Lf2/y;

    invoke-static {p0, v0}, Lq3/q;->b(Landroid/view/View;I)V

    return-void

    :pswitch_0
    const/16 v0, 0x10

    if-ne p1, v0, :cond_d

    goto :goto_1

    :cond_d
    const/4 v0, 0x6

    if-ne p1, v0, :cond_e

    goto :goto_1

    :cond_e
    const/16 v0, 0xd

    if-ne p1, v0, :cond_f

    goto :goto_1

    :cond_f
    const/16 v0, 0x17

    if-ne p1, v0, :cond_10

    goto :goto_1

    :cond_10
    const/4 v0, 0x3

    if-ne p1, v0, :cond_11

    goto :goto_1

    :cond_11
    if-nez p1, :cond_12

    const/4 v0, 0x0

    goto :goto_1

    :cond_12
    const/16 v0, 0x11

    if-ne p1, v0, :cond_13

    goto :goto_1

    :cond_13
    const/16 v0, 0x1b

    if-ne p1, v0, :cond_14

    goto :goto_1

    :cond_14
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_15

    goto :goto_1

    :cond_15
    const/16 v0, 0x9

    if-ne p1, v0, :cond_16

    goto :goto_1

    :cond_16
    const/16 v0, 0x16

    if-ne p1, v0, :cond_17

    goto :goto_1

    :cond_17
    const/16 v0, 0x15

    if-ne p1, v0, :cond_18

    goto :goto_1

    :cond_18
    const/4 v0, 0x1

    if-ne p1, v0, :cond_19

    goto :goto_1

    :cond_19
    const/4 v0, -0x1

    :goto_1
    iget-object p0, p0, Lf2/m1;->b:Landroid/view/View;

    invoke-static {p0, v0}, Lq3/q;->b(Landroid/view/View;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
