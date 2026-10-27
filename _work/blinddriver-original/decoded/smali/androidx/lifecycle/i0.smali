.class public final Landroidx/lifecycle/i0;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/textclassifier/TextClassifier;Li9/e;Ly8/c;)V
    .locals 1

    const/16 v0, 0x13

    iput v0, p0, Landroidx/lifecycle/i0;->l:I

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast p2, La9/i;

    iput-object p2, p0, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V
    .locals 0

    .line 2
    iput p4, p0, Landroidx/lifecycle/i0;->l:I

    iput-object p1, p0, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ly8/c;I)V
    .locals 0

    .line 3
    iput p3, p0, Landroidx/lifecycle/i0;->l:I

    iput-object p1, p0, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Lo0/o4;Landroidx/lifecycle/m0;Ly8/c;)V
    .locals 1

    const/16 v0, 0x18

    iput v0, p0, Landroidx/lifecycle/i0;->l:I

    sget-object v0, Lp/n1;->l:Lp/n1;

    .line 4
    iput-object p1, p0, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    iget v0, p0, Landroidx/lifecycle/i0;->l:I

    iget-object v1, p0, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    new-instance p1, Landroidx/lifecycle/i0;

    iget-object p0, p0, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast p0, Ls/i;

    check-cast v1, Ls/f;

    const/16 v0, 0x1d

    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_0
    new-instance p0, Landroidx/lifecycle/i0;

    check-cast v1, Lr0/u0;

    const/16 p1, 0x1c

    invoke-direct {p0, v1, p2, p1}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object p0

    :pswitch_1
    new-instance p1, Landroidx/lifecycle/i0;

    iget-object p0, p0, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast p0, Lua/nav/c;

    check-cast v1, Lr0/u0;

    const/16 v0, 0x1b

    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_2
    new-instance p1, Landroidx/lifecycle/i0;

    iget-object p0, p0, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast p0, Lua/nav/c;

    check-cast v1, Landroid/content/Context;

    const/16 v0, 0x1a

    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_3
    new-instance p1, Landroidx/lifecycle/i0;

    iget-object p0, p0, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast p0, Lp/a2;

    check-cast v1, Lr0/u0;

    const/16 v0, 0x19

    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_4
    new-instance p1, Landroidx/lifecycle/i0;

    iget-object p0, p0, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast p0, Lo0/o4;

    sget-object v0, Lp/n1;->l:Lp/n1;

    check-cast v1, Landroidx/lifecycle/m0;

    invoke-direct {p1, p0, v1, p2}, Landroidx/lifecycle/i0;-><init>(Lo0/o4;Landroidx/lifecycle/m0;Ly8/c;)V

    return-object p1

    :pswitch_5
    new-instance p1, Landroidx/lifecycle/i0;

    iget-object p0, p0, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast p0, Ls/i;

    check-cast v1, Lr0/b1;

    const/16 v0, 0x17

    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_6
    new-instance p1, Landroidx/lifecycle/i0;

    iget-object p0, p0, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast p0, Lf8/p2;

    check-cast v1, Ln/j;

    const/16 v0, 0x16

    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_7
    new-instance p0, Landroidx/lifecycle/i0;

    check-cast v1, Ln0/a;

    const/16 v0, 0x15

    invoke-direct {p0, v1, p2, v0}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, p0, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    return-object p0

    :pswitch_8
    new-instance p1, Landroidx/lifecycle/i0;

    iget-object p0, p0, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast p0, Lf2/g1;

    check-cast v1, Lp2/g;

    const/16 v0, 0x14

    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_9
    new-instance p1, Landroidx/lifecycle/i0;

    iget-object p0, p0, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast p0, Landroid/view/textclassifier/TextClassifier;

    check-cast v1, La9/i;

    invoke-direct {p1, p0, v1, p2}, Landroidx/lifecycle/i0;-><init>(Landroid/view/textclassifier/TextClassifier;Li9/e;Ly8/c;)V

    return-object p1

    :pswitch_a
    new-instance p1, Landroidx/lifecycle/i0;

    iget-object p0, p0, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast p0, Lua/nav/stats/a;

    check-cast v1, Ljava/lang/String;

    const/16 v0, 0x12

    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_b
    new-instance p1, Landroidx/lifecycle/i0;

    iget-object p0, p0, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast p0, Ll2/c;

    check-cast v1, Ljava/lang/Runnable;

    const/16 v0, 0x11

    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_c
    new-instance p1, Landroidx/lifecycle/i0;

    iget-object p0, p0, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast p0, Lx9/g;

    check-cast v1, Lkd/j;

    const/16 v0, 0x10

    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_d
    new-instance p1, Landroidx/lifecycle/i0;

    iget-object p0, p0, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast p0, Lk0/n;

    check-cast v1, Landroidx/lifecycle/j0;

    const/16 v0, 0xf

    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_e
    new-instance p1, Landroidx/lifecycle/i0;

    iget-object p0, p0, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast p0, Lu9/v0;

    check-cast v1, Lk0/h;

    const/16 v0, 0xe

    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_f
    new-instance p1, Landroidx/lifecycle/i0;

    iget-object p0, p0, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast p0, Lk0/b;

    check-cast v1, Lk0/l;

    const/16 v0, 0xd

    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_10
    new-instance p1, Landroidx/lifecycle/i0;

    iget-object p0, p0, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast p0, Lua/nav/routing/i;

    check-cast v1, Ljava/lang/String;

    const/16 v0, 0xc

    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_11
    new-instance p1, Landroidx/lifecycle/i0;

    iget-object p0, p0, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast p0, Lua/nav/routing/i;

    check-cast v1, Lua/nav/routing/PackDownloadService;

    const/16 v0, 0xb

    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_12
    new-instance p1, Landroidx/lifecycle/i0;

    iget-object p0, p0, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast p0, Lua/nav/geo/c;

    check-cast v1, Lua/nav/routing/PackDownloadService;

    const/16 v0, 0xa

    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_13
    new-instance p1, Landroidx/lifecycle/i0;

    iget-object p0, p0, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast p0, Lhd/e;

    check-cast v1, Ljava/lang/String;

    const/16 v0, 0x9

    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_14
    new-instance p0, Landroidx/lifecycle/i0;

    check-cast v1, Lf3/x;

    const/16 v0, 0x8

    invoke-direct {p0, v1, p2, v0}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, p0, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    return-object p0

    :pswitch_15
    new-instance p1, Landroidx/lifecycle/i0;

    iget-object p0, p0, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast p0, Lx9/j0;

    check-cast v1, Lf2/b2;

    const/4 v0, 0x7

    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_16
    new-instance p1, Landroidx/lifecycle/i0;

    iget-object p0, p0, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast p0, Lr0/u1;

    check-cast v1, Landroid/view/View;

    const/4 v0, 0x6

    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_17
    new-instance p0, Landroidx/lifecycle/i0;

    check-cast v1, Lf2/q0;

    const/4 v0, 0x5

    invoke-direct {p0, v1, p2, v0}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, p0, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    return-object p0

    :pswitch_18
    new-instance p1, Landroidx/lifecycle/i0;

    iget-object p0, p0, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast p0, Le3/q;

    check-cast v1, Ll1/c;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_19
    new-instance p0, Landroidx/lifecycle/i0;

    check-cast v1, Ld5/c;

    const/4 v0, 0x3

    invoke-direct {p0, v1, p2, v0}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, p0, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    return-object p0

    :pswitch_1a
    new-instance p1, Landroidx/lifecycle/i0;

    iget-object p0, p0, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast p0, Lc5/g;

    check-cast v1, Lw9/r;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_1b
    new-instance p1, Landroidx/lifecycle/i0;

    iget-object p0, p0, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast p0, Ly1/x;

    check-cast v1, Lm0/v1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_1c
    new-instance p0, Landroidx/lifecycle/i0;

    check-cast v1, Li9/e;

    const/4 v0, 0x0

    invoke-direct {p0, v1, p2, v0}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, p0, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/lifecycle/i0;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/i0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/i0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/i0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/i0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/i0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/i0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/i0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/i0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0

    :pswitch_3
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/i0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/i0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/i0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/i0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/i0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/i0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/i0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/i0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/i0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/i0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/i0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/i0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/i0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/i0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/i0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/i0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/i0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/i0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/i0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/i0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/i0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/i0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0

    :pswitch_e
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/i0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/i0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0

    :pswitch_f
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/i0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/i0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/i0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/i0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/i0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/i0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0

    :pswitch_12
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/i0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/i0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0

    :pswitch_13
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/i0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/i0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/i0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/i0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/i0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/i0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0

    :pswitch_16
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/i0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/i0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p1, Lf2/v1;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/i0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/i0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0

    :pswitch_18
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/i0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/i0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p1, Lw9/r;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/i0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/i0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/i0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/i0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/i0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/i0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1c
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/i0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/i0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v4, p0

    iget v0, v4, Landroidx/lifecycle/i0;->l:I

    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/i0;->m:I

    if-eqz v1, :cond_1

    if-ne v1, v8, :cond_0

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast v1, Ls/i;

    iget-object v2, v4, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    check-cast v2, Ls/f;

    iput v8, v4, Landroidx/lifecycle/i0;->m:I

    invoke-virtual {v1, v2, v4}, Ls/i;->a(Ls/h;Ly8/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_1
    return-object v0

    :pswitch_0
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/i0;->m:I

    if-eqz v1, :cond_4

    if-ne v1, v8, :cond_3

    iget-object v0, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    check-cast v1, Lr0/u0;

    sget-object v2, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->c()Lgd/d;

    move-result-object v2

    iput-object v1, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    iput v8, v4, Landroidx/lifecycle/i0;->m:I

    sget-object v3, Lu9/e0;->a:Lba/e;

    sget-object v3, Lba/d;->n:Lba/d;

    new-instance v5, Lua/nav/net/d;

    invoke-direct {v5, v2, v7}, Lua/nav/net/d;-><init>(Lgd/d;Ly8/c;)V

    invoke-static {v3, v5, v4}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_5

    goto :goto_5

    :cond_5
    move-object v0, v1

    :goto_2
    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v3, -0x4075183a

    if-eq v1, v3, :cond_c

    const/16 v3, 0xddc

    if-eq v1, v3, :cond_a

    const v3, 0x33af38

    if-eq v1, v3, :cond_8

    const v3, 0x5c4d208

    if-eq v1, v3, :cond_6

    goto :goto_3

    :cond_6
    const-string v1, "error"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    const-string v1, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u0441\u043a\u0430\u0441\u0443\u0432\u0430\u0442\u0438. \u0421\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u043f\u0456\u0437\u043d\u0456\u0448\u0435 \u0430\u0431\u043e \u043d\u0430\u043f\u0438\u0448\u0456\u0442\u044c \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0443."

    goto :goto_4

    :cond_8
    const-string v1, "none"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    const-string v1, "\u0410\u0432\u0442\u043e\u043f\u0440\u043e\u0434\u043e\u0432\u0436\u0435\u043d\u043d\u044f \u0434\u043b\u044f \u0446\u044c\u043e\u0433\u043e \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443 \u043d\u0435 \u0437\u043d\u0430\u0439\u0434\u0435\u043d\u043e (\u044f\u043a\u0449\u043e \u043e\u0444\u043e\u0440\u043c\u043b\u044e\u0432\u0430\u043b\u0438 \u0447\u0435\u0440\u0435\u0437 Telegram \u2014 \u0441\u043a\u0430\u0441\u0443\u0439\u0442\u0435 \u0432 \u0431\u043e\u0442\u0456: /cancel)."

    goto :goto_4

    :cond_a
    const-string v1, "ok"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_3

    :cond_b
    const-string v1, "\u0410\u0432\u0442\u043e\u043f\u0440\u043e\u0434\u043e\u0432\u0436\u0435\u043d\u043d\u044f \u0441\u043a\u0430\u0441\u043e\u0432\u0430\u043d\u043e."

    goto :goto_4

    :cond_c
    const-string v1, "manual"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_3

    :cond_d
    const-string v1, "\u0417\u0430\u043f\u0438\u0442 \u043d\u0430 \u0441\u043a\u0430\u0441\u0443\u0432\u0430\u043d\u043d\u044f \u043f\u0435\u0440\u0435\u0434\u0430\u043d\u043e \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0443, \u0439\u043e\u0433\u043e \u043e\u0431\u0440\u043e\u0431\u043b\u044f\u0442\u044c \u0432\u0440\u0443\u0447\u043d\u0443."

    goto :goto_4

    :cond_e
    :goto_3
    const-string v1, "\u041d\u0435\u043c\u0430\u0454 \u0437\u0432\'\u044f\u0437\u043a\u0443 \u0437 \u0441\u0435\u0440\u0432\u0435\u0440\u043e\u043c."

    :goto_4
    invoke-interface {v0, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_5
    return-object v0

    :pswitch_1
    iget-object v0, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast v0, Lua/nav/c;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v4, Landroidx/lifecycle/i0;->m:I

    if-eqz v2, :cond_10

    if-ne v2, v8, :cond_f

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_6

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v4, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    check-cast v2, Lr0/u0;

    sget-object v3, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v0, Lua/nav/c;->d:Lad/j0;

    iget-object v2, v2, Lad/j0;->k:Lx9/l0;

    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lad/a0;

    iget-boolean v2, v2, Lad/a0;->a:Z

    if-nez v2, :cond_12

    iput v8, v4, Landroidx/lifecycle/i0;->m:I

    const-wide/16 v2, 0x12c

    invoke-static {v2, v3, v4}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_11

    goto :goto_7

    :cond_11
    :goto_6
    iget-object v0, v0, Lua/nav/c;->C:Lx9/l0;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v7, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_12
    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_7
    return-object v1

    :pswitch_2
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/i0;->m:I

    if-eqz v1, :cond_14

    if-eq v1, v8, :cond_13

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_14
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast v1, Lua/nav/c;

    iget-object v1, v1, Lua/nav/c;->M:Lx9/b0;

    new-instance v2, Lf2/y2;

    iget-object v5, v4, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    check-cast v5, Landroid/content/Context;

    invoke-direct {v2, v3, v5}, Lf2/y2;-><init>(ILjava/lang/Object;)V

    iput v8, v4, Landroidx/lifecycle/i0;->m:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v4}, Lx9/b0;->k(Lx9/b0;Lx9/h;Ly8/c;)V

    return-object v0

    :pswitch_3
    sget-object v0, Lt8/z;->a:Lt8/z;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v3, v4, Landroidx/lifecycle/i0;->m:I

    if-eqz v3, :cond_16

    if-ne v3, v8, :cond_15

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_9

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v3, v4, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    check-cast v3, Lr0/u0;

    sget-object v5, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsc/q0;

    iget-object v3, v3, Lsc/q0;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    iget-object v3, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast v3, Lp/a2;

    iget-object v5, v3, Lp/a2;->e:Lr0/b1;

    invoke-virtual {v5}, Lr0/b1;->g()I

    move-result v5

    iput v8, v4, Landroidx/lifecycle/i0;->m:I

    new-instance v6, Ln/r0;

    invoke-direct {v6, v2, v7}, Ln/r0;-><init>(ILjava/lang/Object;)V

    iget-object v2, v3, Lp/a2;->a:Lr0/b1;

    invoke-virtual {v2}, Lr0/b1;->g()I

    move-result v2

    sub-int/2addr v5, v2

    int-to-float v2, v5

    invoke-static {v3, v2, v6, v4}, Lc6/o;->F(Lr/h2;FLn/r0;La9/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_17

    goto :goto_8

    :cond_17
    move-object v2, v0

    :goto_8
    if-ne v2, v1, :cond_18

    move-object v0, v1

    :cond_18
    :goto_9
    return-object v0

    :pswitch_4
    iget-object v0, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast v0, Lo0/o4;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v4, Landroidx/lifecycle/i0;->m:I

    if-eqz v2, :cond_1a

    if-ne v2, v8, :cond_19

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_a

    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v0, Lo0/o4;->n:Lr0/e1;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object v11, v0, Lo0/o4;->s:Lp/r1;

    iget-object v13, v0, Lo0/o4;->r:Lo0/n4;

    sget-object v10, Lp/n1;->m:Lp/n1;

    iget-object v2, v4, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    move-object v12, v2

    check-cast v12, Landroidx/lifecycle/m0;

    iput v8, v4, Landroidx/lifecycle/i0;->m:I

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lp/q1;

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lp/q1;-><init>(Lp/n1;Lp/r1;Li9/e;Ljava/lang/Object;Ly8/c;)V

    invoke-static {v9, v4}, Lu9/v;->g(Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1b

    goto :goto_b

    :cond_1b
    :goto_a
    iget-object v0, v0, Lo0/o4;->n:Lr0/e1;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_b
    return-object v1

    :pswitch_5
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/i0;->m:I

    if-eqz v1, :cond_1d

    if-ne v1, v8, :cond_1c

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    goto :goto_c

    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast v1, Ls/i;

    iget-object v1, v1, Ls/i;->a:Lx9/b0;

    new-instance v2, Lf2/y2;

    iget-object v3, v4, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    check-cast v3, Lr0/b1;

    invoke-direct {v2, v5, v3}, Lf2/y2;-><init>(ILjava/lang/Object;)V

    iput v8, v4, Landroidx/lifecycle/i0;->m:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v4}, Lx9/b0;->k(Lx9/b0;Lx9/h;Ly8/c;)V

    :goto_c
    return-object v0

    :pswitch_6
    sget-object v6, Lz8/a;->l:Lz8/a;

    iget v0, v4, Landroidx/lifecycle/i0;->m:I

    if-eqz v0, :cond_1f

    if-ne v0, v8, :cond_1e

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_d

    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v0, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast v0, Lf8/p2;

    iget-object v0, v0, Lf8/p2;->c:Ljava/lang/Object;

    check-cast v0, Ln/c;

    new-instance v2, Ljava/lang/Float;

    invoke-direct {v2, v1}, Ljava/lang/Float;-><init>(F)V

    iget-object v1, v4, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    check-cast v1, Ln/j;

    iput v8, v4, Landroidx/lifecycle/i0;->m:I

    const/4 v3, 0x0

    const/16 v5, 0xc

    move-object v15, v2

    move-object v2, v1

    move-object v1, v15

    invoke-static/range {v0 .. v5}, Ln/c;->c(Ln/c;Ljava/lang/Object;Ln/j;Li9/c;Ly8/c;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_20

    goto :goto_e

    :cond_20
    :goto_d
    sget-object v6, Lt8/z;->a:Lt8/z;

    :goto_e
    return-object v6

    :pswitch_7
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/i0;->m:I

    if-eqz v1, :cond_22

    if-ne v1, v8, :cond_21

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    goto :goto_f

    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast v1, Lu9/t;

    iget-object v2, v4, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    check-cast v2, Ln0/a;

    iget-object v5, v2, Ln0/a;->z:Ls/i;

    iget-object v5, v5, Ls/i;->a:Lx9/b0;

    new-instance v6, Lb0/s1;

    invoke-direct {v6, v3, v2, v1}, Lb0/s1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput v8, v4, Landroidx/lifecycle/i0;->m:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v4}, Lx9/b0;->k(Lx9/b0;Lx9/h;Ly8/c;)V

    :goto_f
    return-object v0

    :pswitch_8
    sget-object v0, Lt8/z;->a:Lt8/z;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v4, Landroidx/lifecycle/i0;->m:I

    if-eqz v2, :cond_24

    if-ne v2, v8, :cond_23

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_10

    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast v2, Lf2/g1;

    iget-object v3, v4, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    check-cast v3, Lp2/g;

    invoke-static {v3}, Lt/c;->a(Lp2/g;)Lf2/f1;

    move-result-object v3

    iput v8, v4, Landroidx/lifecycle/i0;->m:I

    check-cast v2, Lf2/i;

    invoke-virtual {v2, v3}, Lf2/i;->a(Lf2/f1;)V

    if-ne v0, v1, :cond_25

    move-object v0, v1

    :cond_25
    :goto_10
    return-object v0

    :pswitch_9
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/i0;->m:I

    if-eqz v1, :cond_27

    if-ne v1, v8, :cond_26

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto :goto_11

    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast v1, Landroid/view/textclassifier/TextClassifier;

    if-eqz v1, :cond_29

    iget-object v2, v4, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    check-cast v2, La9/i;

    iput v8, v4, Landroidx/lifecycle/i0;->m:I

    invoke-interface {v2, v1, v4}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_28

    goto :goto_11

    :cond_28
    move-object v0, v1

    goto :goto_11

    :cond_29
    move-object v0, v7

    :goto_11
    return-object v0

    :pswitch_a
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/i0;->m:I

    if-eqz v1, :cond_2b

    if-ne v1, v8, :cond_2a

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_12

    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object v1, Lu9/e0;->a:Lba/e;

    sget-object v1, Lba/d;->n:Lba/d;

    new-instance v2, Lb0/x1;

    iget-object v3, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast v3, Lua/nav/stats/a;

    iget-object v6, v4, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-direct {v2, v3, v6, v7, v5}, Lb0/x1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput v8, v4, Landroidx/lifecycle/i0;->m:I

    invoke-static {v1, v2, v4}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2c

    goto :goto_13

    :cond_2c
    :goto_12
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_13
    return-object v0

    :pswitch_b
    sget-object v0, Lt8/z;->a:Lt8/z;

    iget-object v2, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast v2, Ll2/c;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v5, v4, Landroidx/lifecycle/i0;->m:I

    if-eqz v5, :cond_2e

    if-ne v5, v8, :cond_2d

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_15

    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v5, v2, Ll2/c;->f:Ll2/f;

    iput v8, v4, Landroidx/lifecycle/i0;->m:I

    iget v6, v5, Ll2/f;->b:F

    sub-float/2addr v1, v6

    invoke-virtual {v5, v1, v4}, Ll2/f;->b(FLa9/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_2f

    goto :goto_14

    :cond_2f
    move-object v1, v0

    :goto_14
    if-ne v1, v3, :cond_30

    move-object v0, v3

    goto :goto_16

    :cond_30
    :goto_15
    iget-object v1, v2, Ll2/c;->c:Lb0/l1;

    iget-object v1, v1, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v1, Lr0/e1;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_16
    return-object v0

    :pswitch_c
    iget-object v0, v4, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    check-cast v0, Lkd/j;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v4, Landroidx/lifecycle/i0;->m:I

    if-eqz v2, :cond_32

    if-ne v2, v8, :cond_31

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_17

    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast v2, Lx9/g;

    iget-object v5, v0, Lkd/j;->i:Lx9/l0;

    new-instance v9, Lkd/g;

    invoke-direct {v9, v3, v7, v6}, Lkd/g;-><init>(ILy8/c;I)V

    new-instance v3, Lx9/u;

    invoke-direct {v3, v2, v5, v9}, Lx9/u;-><init>(Lx9/g;Lx9/g;Li9/f;)V

    new-instance v2, Lkd/h;

    invoke-direct {v2, v0, v7}, Lkd/h;-><init>(Lkd/j;Ly8/c;)V

    iput v8, v4, Landroidx/lifecycle/i0;->m:I

    invoke-static {v3, v2, v4}, Lx9/c0;->f(Lx9/g;Li9/e;La9/i;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_33

    goto :goto_18

    :cond_33
    :goto_17
    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_18
    return-object v1

    :pswitch_d
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/i0;->m:I

    if-eqz v1, :cond_35

    if-eq v1, v8, :cond_34

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_35
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast v1, Lk0/n;

    iget-object v2, v4, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/j0;

    iput v8, v4, Landroidx/lifecycle/i0;->m:I

    invoke-static {v1, v2, v4}, Lf2/h2;->a(Lk0/n;Landroidx/lifecycle/j0;La9/c;)V

    return-object v0

    :pswitch_e
    iget-object v0, v4, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lk0/h;

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v6, v4, Landroidx/lifecycle/i0;->m:I

    const-wide/16 v9, 0x1f4

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x4

    if-eqz v6, :cond_3a

    if-eq v6, v8, :cond_39

    if-eq v6, v5, :cond_38

    if-eq v6, v3, :cond_37

    if-ne v6, v12, :cond_36

    :try_start_0
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1e

    :catchall_0
    move-exception v0

    goto :goto_1f

    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    :try_start_1
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1c

    :cond_38
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_39
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1a

    :cond_3a
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v6, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast v6, Lu9/v0;

    if-eqz v6, :cond_3c

    iput v8, v4, Landroidx/lifecycle/i0;->m:I

    invoke-interface {v6, v7}, Lu9/v0;->c(Ljava/util/concurrent/CancellationException;)V

    invoke-interface {v6, v4}, Lu9/v0;->e(La9/c;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_3b

    goto :goto_19

    :cond_3b
    sget-object v6, Lt8/z;->a:Lt8/z;

    :goto_19
    if-ne v6, v0, :cond_3c

    goto :goto_1d

    :cond_3c
    :goto_1a
    :try_start_2
    iget-object v6, v2, Lk0/h;->c:Lr0/a1;

    invoke-virtual {v6, v11}, Lr0/a1;->h(F)V

    iget-boolean v6, v2, Lk0/h;->a:Z

    if-nez v6, :cond_3d

    iput v5, v4, Landroidx/lifecycle/i0;->m:I

    invoke-static {v4}, Lu9/v;->d(La9/c;)V

    goto :goto_1d

    :cond_3d
    :goto_1b
    iput v3, v4, Landroidx/lifecycle/i0;->m:I

    invoke-static {v9, v10, v4}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_3e

    goto :goto_1d

    :cond_3e
    :goto_1c
    iget-object v5, v2, Lk0/h;->c:Lr0/a1;

    invoke-virtual {v5, v1}, Lr0/a1;->h(F)V

    iput v12, v4, Landroidx/lifecycle/i0;->m:I

    invoke-static {v9, v10, v4}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_3f

    :goto_1d
    return-object v0

    :cond_3f
    :goto_1e
    iget-object v5, v2, Lk0/h;->c:Lr0/a1;

    invoke-virtual {v5, v11}, Lr0/a1;->h(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1b

    :goto_1f
    iget-object v2, v2, Lk0/h;->c:Lr0/a1;

    invoke-virtual {v2, v1}, Lr0/a1;->h(F)V

    throw v0

    :pswitch_f
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/i0;->m:I

    if-eqz v1, :cond_42

    if-eq v1, v8, :cond_41

    if-eq v1, v5, :cond_40

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_41
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_20

    :cond_42
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    new-instance v1, Ln/p1;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Ln/p1;-><init>(I)V

    iput v8, v4, Landroidx/lifecycle/i0;->m:I

    invoke-static {v1, v4}, Lr0/r;->J(Li9/c;La9/i;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_43

    goto :goto_21

    :cond_43
    :goto_20
    iget-object v1, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast v1, Lk0/b;

    invoke-virtual {v1}, Lk0/b;->i()Lx9/w;

    move-result-object v1

    if-eqz v1, :cond_44

    new-instance v2, Lf2/y2;

    iget-object v3, v4, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    check-cast v3, Lk0/l;

    invoke-direct {v2, v8, v3}, Lf2/y2;-><init>(ILjava/lang/Object;)V

    iput v5, v4, Landroidx/lifecycle/i0;->m:I

    check-cast v1, Lx9/b0;

    invoke-static {v1, v2, v4}, Lx9/b0;->k(Lx9/b0;Lx9/h;Ly8/c;)V

    goto :goto_21

    :cond_44
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_21
    return-object v0

    :pswitch_10
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/i0;->m:I

    if-eqz v1, :cond_46

    if-ne v1, v8, :cond_45

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_22

    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast v1, Lua/nav/routing/i;

    iget-object v2, v4, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iput v8, v4, Landroidx/lifecycle/i0;->m:I

    invoke-virtual {v1, v2, v4}, Lua/nav/routing/i;->d(Ljava/lang/String;La9/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_47

    goto :goto_23

    :cond_47
    :goto_22
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_23
    return-object v0

    :pswitch_11
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/i0;->m:I

    if-eqz v1, :cond_49

    if-eq v1, v8, :cond_48

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_49
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast v1, Lua/nav/routing/i;

    iget-object v1, v1, Lua/nav/routing/i;->i:Lx9/l0;

    new-instance v2, Lid/w;

    iget-object v3, v4, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    check-cast v3, Lua/nav/routing/PackDownloadService;

    invoke-direct {v2, v3, v8}, Lid/w;-><init>(Lua/nav/routing/PackDownloadService;I)V

    iput v8, v4, Landroidx/lifecycle/i0;->m:I

    invoke-virtual {v1, v2, v4}, Lx9/l0;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    return-object v0

    :pswitch_12
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/i0;->m:I

    if-eqz v1, :cond_4b

    if-eq v1, v8, :cond_4a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4b
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast v1, Lua/nav/geo/c;

    iget-object v1, v1, Lua/nav/geo/c;->e:Lx9/l0;

    new-instance v2, Lid/w;

    iget-object v3, v4, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    check-cast v3, Lua/nav/routing/PackDownloadService;

    invoke-direct {v2, v3, v6}, Lid/w;-><init>(Lua/nav/routing/PackDownloadService;I)V

    iput v8, v4, Landroidx/lifecycle/i0;->m:I

    invoke-virtual {v1, v2, v4}, Lx9/l0;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    return-object v0

    :pswitch_13
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/i0;->m:I

    if-eqz v1, :cond_4d

    if-ne v1, v8, :cond_4c

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_24

    :cond_4c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast v1, Lhd/e;

    iget-object v2, v4, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iput v8, v4, Landroidx/lifecycle/i0;->m:I

    invoke-static {v1, v2, v4}, Lhd/e;->a(Lhd/e;Ljava/lang/String;La9/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4e

    goto :goto_25

    :cond_4e
    :goto_24
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_25
    return-object v0

    :pswitch_14
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/i0;->m:I

    if-eqz v1, :cond_50

    if-ne v1, v8, :cond_4f

    iget-object v1, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast v1, Lu9/t;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_27

    :cond_4f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast v1, Lu9/t;

    :cond_51
    :goto_26
    invoke-static {v1}, Lu9/v;->r(Lu9/t;)Z

    move-result v2

    if-eqz v2, :cond_56

    sget-object v2, Lf3/b;->n:Lf3/b;

    iput-object v1, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    iput v8, v4, Landroidx/lifecycle/i0;->m:I

    invoke-interface {v4}, Ly8/c;->getContext()Ly8/h;

    move-result-object v3

    sget-object v5, Lf2/u1;->l:Lf2/u1;

    invoke-interface {v3, v5}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v3

    if-nez v3, :cond_55

    invoke-interface {v4}, Ly8/c;->getContext()Ly8/h;

    move-result-object v3

    invoke-static {v3}, Lr0/r;->v(Ly8/h;)Lf2/x0;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Lf2/x0;->a(Li9/c;Ly8/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_52

    goto :goto_28

    :cond_52
    :goto_27
    iget-object v2, v4, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    check-cast v2, Lf3/x;

    iget-object v3, v2, Lf3/x;->M:[I

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    if-nez v5, :cond_53

    goto :goto_26

    :cond_53
    aget v5, v3, v6

    aget v7, v3, v8

    iget-object v9, v2, Lf3/x;->w:Landroid/view/View;

    invoke-virtual {v9, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v9, v3, v6

    if-ne v5, v9, :cond_54

    aget v3, v3, v8

    if-eq v7, v3, :cond_51

    :cond_54
    invoke-virtual {v2}, Lf3/x;->k()V

    goto :goto_26

    :cond_55
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_56
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_28
    return-object v0

    :pswitch_15
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/i0;->m:I

    if-eqz v1, :cond_58

    if-eq v1, v8, :cond_57

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_57
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_29

    :cond_58
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast v1, Lx9/j0;

    new-instance v2, Lf2/y2;

    iget-object v3, v4, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    check-cast v3, Lf2/b2;

    invoke-direct {v2, v6, v3}, Lf2/y2;-><init>(ILjava/lang/Object;)V

    iput v8, v4, Landroidx/lifecycle/i0;->m:I

    invoke-interface {v1, v2, v4}, Lx9/g;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_59

    return-object v0

    :cond_59
    :goto_29
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_16
    sget-object v0, Lt8/z;->a:Lt8/z;

    iget-object v1, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast v1, Lr0/u1;

    iget-object v2, v4, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v9, v4, Landroidx/lifecycle/i0;->m:I

    const v10, 0x7f08002c

    if-eqz v9, :cond_5b

    if-ne v9, v8, :cond_5a

    :try_start_3
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2b

    :catchall_1
    move-exception v0

    goto :goto_2d

    :cond_5a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    :try_start_4
    iput v8, v4, Landroidx/lifecycle/i0;->m:I

    iget-object v8, v1, Lr0/u1;->u:Lx9/l0;

    new-instance v9, Lr0/r1;

    invoke-direct {v9, v5, v7, v6}, Lr0/r1;-><init>(ILy8/c;I)V

    invoke-static {v8, v9, v4}, Lx9/c0;->j(Lx9/g;Li9/e;La9/c;)Ljava/lang/Object;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne v4, v3, :cond_5c

    goto :goto_2a

    :cond_5c
    move-object v4, v0

    :goto_2a
    if-ne v4, v3, :cond_5d

    move-object v0, v3

    goto :goto_2c

    :cond_5d
    :goto_2b
    invoke-static {v2}, Lf2/d3;->b(Landroid/view/View;)Lr0/u;

    move-result-object v3

    if-ne v3, v1, :cond_5e

    invoke-virtual {v2, v10, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_5e
    :goto_2c
    return-object v0

    :goto_2d
    invoke-static {v2}, Lf2/d3;->b(Landroid/view/View;)Lr0/u;

    move-result-object v3

    if-ne v3, v1, :cond_5f

    invoke-virtual {v2, v10, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_5f
    throw v0

    :pswitch_17
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/i0;->m:I

    if-eqz v1, :cond_61

    if-eq v1, v8, :cond_60

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    iget-object v0, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast v0, Lf2/v1;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2e

    :cond_61
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast v1, Lf2/v1;

    iget-object v2, v4, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    check-cast v2, Lf2/q0;

    iput-object v1, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    iput v8, v4, Landroidx/lifecycle/i0;->m:I

    new-instance v3, Lu9/g;

    invoke-static {v4}, Lg6/c1;->u(Ly8/c;)Ly8/c;

    move-result-object v4

    invoke-direct {v3, v8, v4}, Lu9/g;-><init>(ILy8/c;)V

    invoke-virtual {v3}, Lu9/g;->r()V

    iget-object v4, v2, Lf2/q0;->m:Lu2/y;

    iget-object v5, v4, Lu2/y;->a:Lu2/s;

    invoke-interface {v5}, Lu2/s;->a()V

    new-instance v6, Lu2/a0;

    invoke-direct {v6, v4, v5}, Lu2/a0;-><init>(Lu2/y;Lu2/s;)V

    iget-object v4, v4, Lu2/y;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance v4, Lc5/f;

    const/4 v5, 0x6

    invoke-direct {v4, v5, v1, v2}, Lc5/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lu9/g;->t(Li9/c;)V

    invoke-virtual {v3}, Lu9/g;->q()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_62

    return-object v0

    :cond_62
    :goto_2e
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_18
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/i0;->m:I

    if-eqz v1, :cond_64

    if-ne v1, v8, :cond_63

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2f

    :cond_63
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_64
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast v1, Le3/q;

    new-instance v2, Lc2/l0;

    iget-object v3, v4, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    check-cast v3, Ll1/c;

    const/4 v5, 0x5

    invoke-direct {v2, v5, v3}, Lc2/l0;-><init>(ILjava/lang/Object;)V

    iput v8, v4, Landroidx/lifecycle/i0;->m:I

    invoke-static {v1, v2, v4}, Lr5/h1;->b(Le2/j;Li9/a;La9/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_65

    goto :goto_30

    :cond_65
    :goto_2f
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_30
    return-object v0

    :pswitch_19
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/i0;->m:I

    if-eqz v1, :cond_67

    if-ne v1, v8, :cond_66

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_32

    :cond_66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_67
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast v1, Lw9/r;

    new-instance v2, Ld5/b;

    iget-object v3, v4, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    check-cast v3, Ld5/c;

    invoke-direct {v2, v3, v1}, Ld5/b;-><init>(Ld5/c;Lw9/r;)V

    iget-object v3, v3, Ld5/c;->a:Le5/f;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v3, Le5/f;->c:Ljava/lang/Object;

    monitor-enter v5

    :try_start_5
    iget-object v7, v3, Le5/f;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {v7, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_69

    iget-object v7, v3, Le5/f;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {v7}, Ljava/util/AbstractCollection;->size()I

    move-result v7

    if-ne v7, v8, :cond_68

    invoke-virtual {v3}, Le5/f;->a()Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v3, Le5/f;->e:Ljava/lang/Object;

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v7

    sget-object v9, Le5/g;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": initial state = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v3, Le5/f;->e:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Le5/f;->c()V

    goto :goto_31

    :catchall_2
    move-exception v0

    goto :goto_34

    :cond_68
    :goto_31
    iget-object v3, v3, Le5/f;->e:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ld5/b;->a(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_69
    monitor-exit v5

    new-instance v3, Ld5/a;

    iget-object v5, v4, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    check-cast v5, Ld5/c;

    invoke-direct {v3, v6, v5, v2}, Ld5/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput v8, v4, Landroidx/lifecycle/i0;->m:I

    invoke-static {v1, v3, v4}, Lr5/u0;->f(Lw9/r;Li9/a;La9/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6a

    goto :goto_33

    :cond_6a
    :goto_32
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_33
    return-object v0

    :goto_34
    monitor-exit v5

    throw v0

    :pswitch_1a
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/i0;->m:I

    if-eqz v1, :cond_6c

    if-ne v1, v8, :cond_6b

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_35

    :cond_6b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6c
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iput v8, v4, Landroidx/lifecycle/i0;->m:I

    const-wide/16 v5, 0x3e8

    invoke-static {v5, v6, v4}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6d

    goto :goto_36

    :cond_6d
    :goto_35
    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    sget-object v1, Lc5/p;->a:Ljava/lang/String;

    const-string v3, "NetworkRequestConstraintController didn\'t receive neither onCapabilitiesChanged/onLost callback, sending `ConstraintsNotMet` after 1000 ms"

    invoke-virtual {v0, v1, v3}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v4, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    check-cast v0, Lw9/r;

    new-instance v1, Lc5/b;

    invoke-direct {v1, v2}, Lc5/b;-><init>(I)V

    check-cast v0, Lw9/q;

    invoke-virtual {v0, v1}, Lw9/q;->l(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_36
    return-object v0

    :pswitch_1b
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/i0;->m:I

    if-eqz v1, :cond_6f

    if-ne v1, v8, :cond_6e

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_37

    :cond_6e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6f
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast v1, Ly1/x;

    iget-object v3, v4, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    check-cast v3, Lm0/v1;

    new-instance v5, Lb0/o0;

    invoke-direct {v5, v3, v8}, Lb0/o0;-><init>(Lm0/v1;I)V

    iput v8, v4, Landroidx/lifecycle/i0;->m:I

    invoke-static {v1, v7, v5, v4, v2}, Lr/x2;->e(Ly1/x;Li9/f;Li9/c;Ly8/c;I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_70

    goto :goto_38

    :cond_70
    :goto_37
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_38
    return-object v0

    :pswitch_1c
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/i0;->m:I

    if-eqz v1, :cond_72

    if-ne v1, v8, :cond_71

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_39

    :cond_71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_72
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/i0;->n:Ljava/lang/Object;

    check-cast v1, Lu9/t;

    iget-object v2, v4, Landroidx/lifecycle/i0;->o:Ljava/lang/Object;

    check-cast v2, Li9/e;

    iput v8, v4, Landroidx/lifecycle/i0;->m:I

    invoke-interface {v2, v1, v4}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_73

    goto :goto_3a

    :cond_73
    :goto_39
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_3a
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
