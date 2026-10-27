.class public final synthetic Lb0/y2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lc2/f1;


# direct methods
.method public synthetic constructor <init>(Lc2/f1;I)V
    .locals 0

    iput p2, p0, Lb0/y2;->l:I

    iput-object p1, p0, Lb0/y2;->m:Lc2/f1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lb0/y2;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lc2/e1;

    const/4 v0, 0x0

    iget-object p0, p0, Lb0/y2;->m:Lc2/f1;

    invoke-static {p1, p0, v0, v0}, Lc2/e1;->j(Lc2/e1;Lc2/f1;II)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Lc2/e1;

    const/4 v0, 0x0

    iget-object p0, p0, Lb0/y2;->m:Lc2/f1;

    invoke-static {p1, p0, v0, v0}, Lc2/e1;->l(Lc2/e1;Lc2/f1;II)V

    goto :goto_0

    :pswitch_1
    check-cast p1, Lc2/e1;

    const/4 v0, 0x0

    iget-object p0, p0, Lb0/y2;->m:Lc2/f1;

    invoke-static {p1, p0, v0, v0}, Lc2/e1;->l(Lc2/e1;Lc2/f1;II)V

    goto :goto_0

    :pswitch_2
    check-cast p1, Lc2/e1;

    invoke-virtual {p1}, Lc2/e1;->e()Lb3/m;

    move-result-object v0

    sget-object v1, Lb3/m;->l:Lb3/m;

    iget-object p0, p0, Lb0/y2;->m:Lc2/f1;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lc2/e1;->f()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lc2/e1;->f()I

    move-result v0

    iget v1, p0, Lc2/f1;->l:I

    sub-int/2addr v0, v1

    long-to-int v1, v2

    sub-int/2addr v0, v1

    int-to-long v2, v0

    const/16 v0, 0x20

    shl-long/2addr v2, v0

    int-to-long v0, v1

    const-wide v6, 0xffffffffL

    and-long/2addr v0, v6

    or-long/2addr v0, v2

    invoke-static {p1, p0}, Lc2/e1;->b(Lc2/e1;Lc2/f1;)V

    iget-wide v2, p0, Lc2/f1;->p:J

    invoke-static {v0, v1, v2, v3}, Lb3/j;->c(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v4, v5}, Lc2/f1;->o0(JFLi9/c;)V

    goto :goto_2

    :cond_1
    :goto_1
    invoke-static {p1, p0}, Lc2/e1;->b(Lc2/e1;Lc2/f1;)V

    iget-wide v0, p0, Lc2/f1;->p:J

    invoke-static {v2, v3, v0, v1}, Lb3/j;->c(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v4, v5}, Lc2/f1;->o0(JFLi9/c;)V

    :goto_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_3
    check-cast p1, Lc2/e1;

    const/4 v0, 0x0

    iget-object p0, p0, Lb0/y2;->m:Lc2/f1;

    invoke-static {p1, p0, v0, v0}, Lc2/e1;->l(Lc2/e1;Lc2/f1;II)V

    goto :goto_0

    :pswitch_4
    check-cast p1, Lc2/e1;

    const/4 v0, 0x0

    iget-object p0, p0, Lb0/y2;->m:Lc2/f1;

    invoke-static {p1, p0, v0, v0}, Lc2/e1;->j(Lc2/e1;Lc2/f1;II)V

    goto :goto_0

    :pswitch_5
    move-object v0, p1

    check-cast v0, Lc2/e1;

    const/4 v4, 0x0

    const/16 v5, 0xc

    iget-object v1, p0, Lb0/y2;->m:Lc2/f1;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lc2/e1;->p(Lc2/e1;Lc2/f1;IILi9/c;I)V

    goto :goto_0

    :pswitch_6
    check-cast p1, Lc2/e1;

    const/4 v0, 0x0

    iget-object p0, p0, Lb0/y2;->m:Lc2/f1;

    invoke-static {p1, p0, v0, v0}, Lc2/e1;->j(Lc2/e1;Lc2/f1;II)V

    goto/16 :goto_0

    :pswitch_7
    check-cast p1, Lc2/e1;

    const/4 v0, 0x0

    iget-object p0, p0, Lb0/y2;->m:Lc2/f1;

    invoke-static {p1, p0, v0, v0}, Lc2/e1;->j(Lc2/e1;Lc2/f1;II)V

    goto/16 :goto_0

    :pswitch_8
    check-cast p1, Lc2/e1;

    const/4 v0, 0x0

    iget-object p0, p0, Lb0/y2;->m:Lc2/f1;

    invoke-static {p1, p0, v0, v0}, Lc2/e1;->j(Lc2/e1;Lc2/f1;II)V

    goto/16 :goto_0

    :pswitch_9
    check-cast p1, Lc2/e1;

    const/4 v0, 0x0

    iget-object p0, p0, Lb0/y2;->m:Lc2/f1;

    invoke-static {p1, p0, v0, v0}, Lc2/e1;->l(Lc2/e1;Lc2/f1;II)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
