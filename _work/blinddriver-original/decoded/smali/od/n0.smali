.class public final synthetic Lod/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Li9/a;


# direct methods
.method public synthetic constructor <init>(IILi9/a;)V
    .locals 0

    .line 1
    iput p2, p0, Lod/n0;->l:I

    iput-object p3, p0, Lod/n0;->m:Li9/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Li9/a;I)V
    .locals 0

    .line 2
    iput p2, p0, Lod/n0;->l:I

    iput-object p1, p0, Lod/n0;->m:Li9/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lod/n0;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x7

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-object p0, p0, Lod/n0;->m:Li9/a;

    invoke-static {p0, p1, p2}, Lod/m;->x(Li9/a;Lr0/q;I)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    move-object v7, p1

    check-cast v7, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_0

    move p2, v1

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    :goto_1
    and-int/2addr p1, v1

    invoke-virtual {v7, p1, p2}, Lr0/q;->T(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object v6, Lod/m;->O1:Lz0/d;

    const/high16 v8, 0x30000000

    const/16 v9, 0x1fe

    iget-object v0, p0, Lod/n0;->m:Li9/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v9}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_2

    :cond_1
    invoke-virtual {v7}, Lr0/q;->W()V

    :goto_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x7

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-object p0, p0, Lod/n0;->m:Li9/a;

    invoke-static {p0, p1, p2}, Lod/m;->i(Li9/a;Lr0/q;I)V

    goto :goto_0

    :pswitch_2
    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x7

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-object p0, p0, Lod/n0;->m:Li9/a;

    invoke-static {p0, p1, p2}, Lod/m;->i(Li9/a;Lr0/q;I)V

    goto :goto_0

    :pswitch_3
    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x7

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-object p0, p0, Lod/n0;->m:Li9/a;

    invoke-static {p0, p1, p2}, Lod/m;->w(Li9/a;Lr0/q;I)V

    goto :goto_0

    :pswitch_4
    move-object v7, p1

    check-cast v7, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_2

    move p2, v1

    goto :goto_3

    :cond_2
    const/4 p2, 0x0

    :goto_3
    and-int/2addr p1, v1

    invoke-virtual {v7, p1, p2}, Lr0/q;->T(IZ)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object v6, Lod/m;->Q1:Lz0/d;

    const/high16 v8, 0x30000000

    const/16 v9, 0x1fe

    iget-object v0, p0, Lod/n0;->m:Li9/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v9}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_4

    :cond_3
    invoke-virtual {v7}, Lr0/q;->W()V

    :goto_4
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_5
    move-object v7, p1

    check-cast v7, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_4

    move p2, v1

    goto :goto_5

    :cond_4
    const/4 p2, 0x0

    :goto_5
    and-int/2addr p1, v1

    invoke-virtual {v7, p1, p2}, Lr0/q;->T(IZ)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object v6, Lod/m;->A1:Lz0/d;

    const/high16 v8, 0x30000000

    const/16 v9, 0x1fe

    iget-object v0, p0, Lod/n0;->m:Li9/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v9}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_6

    :cond_5
    invoke-virtual {v7}, Lr0/q;->W()V

    :goto_6
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_6
    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x1

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-object p0, p0, Lod/n0;->m:Li9/a;

    invoke-static {p0, p1, p2}, Lod/v6;->i(Li9/a;Lr0/q;I)V

    goto/16 :goto_0

    :pswitch_7
    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x7

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-object p0, p0, Lod/n0;->m:Li9/a;

    invoke-static {p0, p1, p2}, Lod/m;->j(Li9/a;Lr0/q;I)V

    goto/16 :goto_0

    :pswitch_8
    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x7

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-object p0, p0, Lod/n0;->m:Li9/a;

    invoke-static {p0, p1, p2}, Lod/m;->j(Li9/a;Lr0/q;I)V

    goto/16 :goto_0

    :pswitch_9
    move-object v7, p1

    check-cast v7, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_6

    move p2, v1

    goto :goto_7

    :cond_6
    const/4 p2, 0x0

    :goto_7
    and-int/2addr p1, v1

    invoke-virtual {v7, p1, p2}, Lr0/q;->T(IZ)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object v6, Lod/m;->s:Lz0/d;

    const/high16 v8, 0x30000000

    const/16 v9, 0x1fe

    iget-object v0, p0, Lod/n0;->m:Li9/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v9}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_8

    :cond_7
    invoke-virtual {v7}, Lr0/q;->W()V

    :goto_8
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_a
    move-object v7, p1

    check-cast v7, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_8

    move p2, v1

    goto :goto_9

    :cond_8
    const/4 p2, 0x0

    :goto_9
    and-int/2addr p1, v1

    invoke-virtual {v7, p1, p2}, Lr0/q;->T(IZ)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object v6, Lod/m;->u:Lz0/d;

    const/high16 v8, 0x30000000

    const/16 v9, 0x1fe

    iget-object v0, p0, Lod/n0;->m:Li9/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v9}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_a

    :cond_9
    invoke-virtual {v7}, Lr0/q;->W()V

    :goto_a
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
