.class public final synthetic Lod/l6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Li9/a;


# direct methods
.method public synthetic constructor <init>(Li9/a;I)V
    .locals 0

    iput p2, p0, Lod/l6;->l:I

    iput-object p1, p0, Lod/l6;->m:Li9/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lod/l6;->l:I

    const-string v1, "A demo of the buttons and a simulated drive where the app guides without GPS"

    const-string v2, "\u0414\u0435\u043c\u043e\u043d\u0441\u0442\u0440\u0430\u0446\u0456\u044f \u043a\u043d\u043e\u043f\u043e\u043a \u0456 \u00ab\u043f\u043e\u0457\u0437\u0434\u043a\u0438\u00bb, \u0434\u0435 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a \u0432\u0435\u0434\u0435 \u0431\u0435\u0437 GPS"

    const-string v3, "App tour"

    const-string v4, "\u0422\u0443\u0440 \u043f\u043e \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443"

    const/16 v5, 0x36

    const/16 v6, 0x10

    const-string v7, "$this$item"

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object p0, p0, Lod/l6;->m:Li9/a;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lc2/t0;

    check-cast p2, Lc2/q0;

    check-cast p3, Lb3/a;

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb3/f;

    iget p0, p0, Lb3/f;->l:F

    iget-wide v0, p3, Lb3/a;->a:J

    const/high16 v2, 0x7fc00000    # Float.NaN

    invoke-static {p0, v2}, Lb3/f;->b(FF)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1, p0}, Lb3/c;->h0(F)I

    move-result v9

    :cond_0
    invoke-static {v9, v0, v1}, Lb3/b;->f(IJ)I

    move-result v6

    iget-wide v2, p3, Lb3/a;->a:J

    const/4 v7, 0x0

    const/16 v8, 0xb

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v8}, Lb3/a;->a(JIIIII)J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object p0

    iget p2, p0, Lc2/f1;->l:I

    iget p3, p0, Lc2/f1;->m:I

    new-instance v0, Lb0/y2;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lb0/y2;-><init>(Lc2/f1;I)V

    sget-object p0, Lu8/s;->l:Lu8/s;

    invoke-interface {p1, p2, p3, p0, v0}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lw/b;

    check-cast p2, Lr0/q;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p1, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p3, 0x11

    if-eq p1, v6, :cond_1

    move p1, v8

    goto :goto_0

    :cond_1
    move p1, v9

    :goto_0
    and-int/2addr p3, v8

    invoke-virtual {p2, p3, p1}, Lr0/q;->T(IZ)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcd/a;->a:Lcd/b;

    invoke-static {}, Lcd/a;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    invoke-static {}, Lcd/a;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    invoke-static {v3, v1, p0, p2, v9}, Lod/v6;->n(Ljava/lang/String;Ljava/lang/String;Li9/a;Lr0/q;I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_3
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    check-cast p1, Lw/b;

    check-cast p2, Lr0/q;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p1, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p3, 0x11

    if-eq p1, v6, :cond_5

    move v9, v8

    :cond_5
    and-int/lit8 p1, p3, 0x1

    invoke-virtual {p2, p1, v9}, Lr0/q;->T(IZ)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "\u041f\u0440\u043e \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a"

    const-string p3, "\u0412\u0435\u0440\u0441\u0456\u044f, ID \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u043a\u0438, \u0434\u0436\u0435\u0440\u0435\u043b\u0430 \u0434\u0430\u043d\u0438\u0445 \u0456 \u043b\u0456\u0446\u0435\u043d\u0437\u0456\u0457"

    invoke-static {p1, p3, p0, p2, v5}, Lod/v6;->n(Ljava/lang/String;Ljava/lang/String;Li9/a;Lr0/q;I)V

    goto :goto_4

    :cond_6
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_4
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    check-cast p1, Lw/b;

    check-cast p2, Lr0/q;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p1, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p3, 0x11

    if-eq p1, v6, :cond_7

    move v9, v8

    :cond_7
    and-int/lit8 p1, p3, 0x1

    invoke-virtual {p2, p1, v9}, Lr0/q;->T(IZ)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->h()Luc/f;

    move-result-object p1

    invoke-virtual {p1}, Luc/f;->e()Lt8/j;

    move-result-object p1

    iget-object p1, p1, Lt8/j;->l:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "\u0410\u043d\u0430\u043b\u0456\u0442\u0438\u043a\u0430 \u043f\u043e\u0457\u0437\u0434\u043e\u043a \u00b7 PRO"

    goto :goto_5

    :cond_8
    const-string p1, "\u0410\u043d\u0430\u043b\u0456\u0442\u0438\u043a\u0430 \u043f\u043e\u0457\u0437\u0434\u043e\u043a"

    invoke-static {p1}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_5
    const-string p3, "\u041f\u0440\u043e\u0431\u0456\u0433, \u0447\u0430\u0441 \u0443 \u0434\u043e\u0440\u043e\u0437\u0456 \u0439 \u043d\u0430 \u0441\u0442\u043e\u044f\u043d\u0446\u0456, \u043e\u0441\u043e\u0431\u0438\u0441\u0442\u0438\u0439 \u043a\u043e\u0435\u0444\u0456\u0446\u0456\u0454\u043d\u0442 \u0437\u0430\u0442\u043e\u0440\u0456\u0432"

    const/16 v0, 0x30

    invoke-static {p1, p3, p0, p2, v0}, Lod/v6;->n(Ljava/lang/String;Ljava/lang/String;Li9/a;Lr0/q;I)V

    goto :goto_6

    :cond_9
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_6
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_3
    check-cast p1, Lw/b;

    check-cast p2, Lr0/q;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p1, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p3, 0x11

    if-eq p1, v6, :cond_a

    move v9, v8

    :cond_a
    and-int/lit8 p1, p3, 0x1

    invoke-virtual {p2, p1, v9}, Lr0/q;->T(IZ)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "\u041d\u0430\u0434\u0456\u0441\u043b\u0430\u0442\u0438 \u043b\u043e\u0433 \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0443"

    const-string p3, "\u041e\u0441\u0442\u0430\u043d\u043d\u0456\u0439, \u043e\u0431\u0440\u0430\u043d\u0456 \u0430\u0431\u043e \u0437\u0430 \u0434\u0435\u043d\u044c; \u0437 \u043a\u043e\u043c\u0435\u043d\u0442\u0430\u0440\u0435\u043c \u0456 \u0434\u0430\u043d\u0438\u043c\u0438 \u043f\u0440\u043e \u0442\u0435\u043b\u0435\u0444\u043e\u043d"

    invoke-static {p1, p3, p0, p2, v5}, Lod/v6;->n(Ljava/lang/String;Ljava/lang/String;Li9/a;Lr0/q;I)V

    goto :goto_7

    :cond_b
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_7
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_4
    check-cast p1, Lw/b;

    check-cast p2, Lr0/q;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p1, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p3, 0x11

    if-eq p1, v6, :cond_c

    move v9, v8

    :cond_c
    and-int/lit8 p1, p3, 0x1

    invoke-virtual {p2, p1, v9}, Lr0/q;->T(IZ)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "\u0414\u043e\u0432\u0456\u0434\u043a\u0430: \u0437\u043d\u0430\u0447\u043a\u0438 \u0439 \u0444\u0443\u043d\u043a\u0446\u0456\u0457"

    const-string p3, "\u0429\u043e \u043e\u0437\u043d\u0430\u0447\u0430\u0454 \u043a\u043e\u0436\u0435\u043d \u0437\u043d\u0430\u0447\u043e\u043a \u0456 \u044f\u043a \u043f\u0440\u0430\u0446\u044e\u0454 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0431\u0435\u0437 GPS"

    invoke-static {p1, p3, p0, p2, v5}, Lod/v6;->n(Ljava/lang/String;Ljava/lang/String;Li9/a;Lr0/q;I)V

    goto :goto_8

    :cond_d
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_8
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_5
    check-cast p1, Lw/b;

    check-cast p2, Lr0/q;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p1, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p3, 0x11

    if-eq p1, v6, :cond_e

    move p1, v8

    goto :goto_9

    :cond_e
    move p1, v9

    :goto_9
    and-int/2addr p3, v8

    invoke-virtual {p2, p3, p1}, Lr0/q;->T(IZ)Z

    move-result p1

    if-eqz p1, :cond_11

    sget-object p1, Lcd/a;->a:Lcd/b;

    invoke-static {}, Lcd/a;->b()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_a

    :cond_f
    move-object v3, v4

    :goto_a
    invoke-static {}, Lcd/a;->b()Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_b

    :cond_10
    move-object v1, v2

    :goto_b
    invoke-static {v3, v1, p0, p2, v9}, Lod/v6;->n(Ljava/lang/String;Ljava/lang/String;Li9/a;Lr0/q;I)V

    goto :goto_c

    :cond_11
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_c
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
