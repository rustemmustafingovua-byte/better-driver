.class public final Lsc/o;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, Lsc/o;->l:I

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public synthetic constructor <init>(ILy8/c;I)V
    .locals 0

    .line 2
    iput p3, p0, Lsc/o;->l:I

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ly8/c;)Ly8/c;
    .locals 2

    iget p0, p0, Lsc/o;->l:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lsc/o;

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lsc/o;-><init>(ILy8/c;I)V

    return-object p0

    :pswitch_0
    new-instance p0, Lsc/o;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lsc/o;-><init>(ILy8/c;I)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lsc/o;->l:I

    check-cast p1, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lsc/o;->create(Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lsc/o;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lsc/o;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lsc/o;->create(Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lsc/o;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lsc/o;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lsc/o;->l:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    const-string p0, "cameras_ua.json"

    invoke-static {p0}, Lsc/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    const-string p0, "cell_areas_ua.json"

    invoke-static {p0}, Lsc/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
