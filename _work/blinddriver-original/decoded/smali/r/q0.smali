.class public final Lr/q0;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(ILy8/c;I)V
    .locals 0

    iput p3, p0, Lr/q0;->l:I

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lr/q0;->l:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lr/p1;

    check-cast p2, Ll1/b;

    iget-wide p0, p2, Ll1/b;->a:J

    check-cast p3, Ly8/c;

    new-instance p0, Lr/q0;

    const/4 p1, 0x3

    const/4 p2, 0x2

    invoke-direct {p0, p1, p3, p2}, Lr/q0;-><init>(ILy8/c;I)V

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/q0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_0
    check-cast p1, Lu9/t;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    check-cast p3, Ly8/c;

    new-instance p0, Lr/q0;

    const/4 p1, 0x3

    const/4 p2, 0x1

    invoke-direct {p0, p1, p3, p2}, Lr/q0;-><init>(ILy8/c;I)V

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/q0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_1
    check-cast p1, Lu9/t;

    check-cast p2, Ll1/b;

    iget-wide p0, p2, Ll1/b;->a:J

    check-cast p3, Ly8/c;

    new-instance p0, Lr/q0;

    const/4 p1, 0x3

    const/4 p2, 0x0

    invoke-direct {p0, p1, p3, p2}, Lr/q0;-><init>(ILy8/c;I)V

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/q0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, Lr/q0;->l:I

    sget-object v0, Lt8/z;->a:Lt8/z;

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    return-object v0

    :pswitch_0
    sget-object p0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    return-object v0

    :pswitch_1
    sget-object p0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
