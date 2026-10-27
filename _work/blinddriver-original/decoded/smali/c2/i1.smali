.class public final Lc2/i1;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lc2/f1;


# direct methods
.method public synthetic constructor <init>(Lc2/f1;I)V
    .locals 0

    iput p2, p0, Lc2/i1;->l:I

    iput-object p1, p0, Lc2/i1;->m:Lc2/f1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lc2/i1;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lc2/e1;

    iget-object p0, p0, Lc2/i1;->m:Lc2/f1;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, v0}, Lc2/e1;->j(Lc2/e1;Lc2/f1;II)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Lc2/e1;

    iget-object p0, p0, Lc2/i1;->m:Lc2/f1;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, v0}, Lc2/e1;->j(Lc2/e1;Lc2/f1;II)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    check-cast p1, Lc2/e1;

    iget-object p0, p0, Lc2/i1;->m:Lc2/f1;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, v0}, Lc2/e1;->j(Lc2/e1;Lc2/f1;II)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    check-cast p1, Lc2/e1;

    iget-object p0, p0, Lc2/i1;->m:Lc2/f1;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, v0}, Lc2/e1;->l(Lc2/e1;Lc2/f1;II)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_3
    check-cast p1, Lc2/e1;

    iget-object p0, p0, Lc2/i1;->m:Lc2/f1;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, v0}, Lc2/e1;->l(Lc2/e1;Lc2/f1;II)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_4
    check-cast p1, Lc2/e1;

    iget-object p0, p0, Lc2/i1;->m:Lc2/f1;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, v0}, Lc2/e1;->j(Lc2/e1;Lc2/f1;II)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_5
    check-cast p1, Lc2/e1;

    iget-object p0, p0, Lc2/i1;->m:Lc2/f1;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, v0}, Lc2/e1;->o(Lc2/e1;Lc2/f1;II)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
