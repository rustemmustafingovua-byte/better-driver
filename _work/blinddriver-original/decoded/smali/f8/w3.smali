.class public final Lf8/w3;
.super Lf8/v3;
.source "SourceFile"


# instance fields
.field public final synthetic q:I

.field public final r:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lf8/v2;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 2

    iput p6, p0, Lf8/w3;->q:I

    packed-switch p6, :pswitch_data_0

    invoke-direct/range {p0 .. p5}, Lf8/v3;-><init>(Lf8/v2;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    iget-object p1, p0, Lf8/v3;->n:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Class;

    const/4 p3, 0x0

    new-array p5, p3, [Ljava/lang/Class;

    const-string p6, "newBuilder"

    invoke-static {p1, p6, p5}, Lf8/y3;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lf8/w3;->r:Ljava/lang/reflect/Method;

    const-string p0, "get"

    const-string p1, "Builder"

    invoke-static {p0, p2, p1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array p1, p3, [Ljava/lang/Class;

    invoke-static {p4, p0, p1}, Lf8/y3;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    return-void

    :pswitch_0
    invoke-direct/range {p0 .. p5}, Lf8/v3;-><init>(Lf8/v2;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    const-string p1, "get"

    const-string p5, "Bytes"

    invoke-static {p1, p2, p5}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-static {p3, p6, v1}, Lf8/y3;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {p1, p2, p5}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v0, [Ljava/lang/Class;

    invoke-static {p4, p1, p3}, Lf8/y3;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string p1, "set"

    invoke-static {p1, p2, p5}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lf8/j;

    filled-new-array {p2}, [Ljava/lang/Class;

    move-result-object p2

    invoke-static {p4, p1, p2}, Lf8/y3;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lf8/w3;->r:Ljava/lang/reflect/Method;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final b(Lf8/l3;Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lf8/w3;->q:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p2, Lf8/j;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lf8/w3;->r:Ljava/lang/reflect/Method;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lf8/v3;->b(Lf8/l3;Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lf8/v3;->n:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lf8/w3;->r:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf8/a;

    check-cast p2, Lf8/c;

    invoke-virtual {v0, p2}, Lf8/a;->x(Lf8/c;)Lf8/a;

    move-result-object p2

    invoke-virtual {p2}, Lf8/a;->s()Lf8/c;

    move-result-object p2

    :goto_1
    invoke-super {p0, p1, p2}, Lf8/v3;->b(Lf8/l3;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public e()Lf8/a;
    .locals 2

    iget v0, p0, Lf8/w3;->q:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lf8/v3;->e()Lf8/a;

    move-result-object p0

    return-object p0

    :pswitch_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lf8/w3;->r:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf8/a;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
