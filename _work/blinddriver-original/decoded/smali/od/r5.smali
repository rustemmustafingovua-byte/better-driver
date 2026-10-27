.class public final synthetic Lod/r5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Li9/c;

.field public final synthetic n:Lr0/r2;


# direct methods
.method public synthetic constructor <init>(Li9/c;Lr0/r2;I)V
    .locals 0

    iput p3, p0, Lod/r5;->l:I

    iput-object p1, p0, Lod/r5;->m:Li9/c;

    iput-object p2, p0, Lod/r5;->n:Lr0/r2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lod/r5;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lw/b;

    check-cast p2, Lr0/q;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const-string v0, "$this$item"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p3, 0x11

    const/16 v0, 0x10

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/2addr p3, v1

    invoke-virtual {p2, p3, p1}, Lr0/q;->T(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lod/r5;

    const/4 p3, 0x1

    iget-object v0, p0, Lod/r5;->m:Li9/c;

    iget-object p0, p0, Lod/r5;->n:Lr0/r2;

    invoke-direct {p1, v0, p0, p3}, Lod/r5;-><init>(Li9/c;Lr0/r2;I)V

    const p0, -0x2ec78d0

    invoke-static {p0, p1, p2}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object p0

    const-string p1, "\u041a\u0430\u0440\u0442\u0430"

    const/16 p3, 0x36

    invoke-static {p1, p0, p2, p3}, Lod/v6;->B(Ljava/lang/String;Lz0/d;Lr0/q;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Lu/s;

    move-object v4, p2

    check-cast v4, Lr0/q;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string p3, "$this$Section"

    invoke-static {p1, p3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p2, 0x11

    const/16 p3, 0x10

    const/4 v0, 0x1

    if-eq p1, p3, :cond_2

    move p1, v0

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    and-int/2addr p2, v0

    invoke-virtual {v4, p2, p1}, Lr0/q;->T(IZ)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lsc/w0;->o:Lsc/w0;

    invoke-static {p1}, Ll7/a;->y(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iget-object p1, p0, Lod/r5;->n:Lr0/r2;

    invoke-interface {p1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lua/nav/Tuning;

    const/4 v2, 0x1

    const/16 v5, 0x186

    iget-object v3, p0, Lod/r5;->m:Li9/c;

    invoke-static/range {v0 .. v5}, Lod/v6;->f(Ljava/util/Set;Lua/nav/Tuning;ZLi9/c;Lr0/q;I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Lr0/q;->W()V

    :goto_3
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    check-cast p1, Lu/s;

    move-object v4, p2

    check-cast v4, Lr0/q;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string p3, "$this$Section"

    invoke-static {p1, p3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p2, 0x11

    const/16 p3, 0x10

    const/4 v0, 0x1

    if-eq p1, p3, :cond_4

    move p1, v0

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    :goto_4
    and-int/2addr p2, v0

    invoke-virtual {v4, p2, p1}, Lr0/q;->T(IZ)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lsc/w0;->p:Lsc/w0;

    invoke-static {p1}, Ll7/a;->y(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iget-object p1, p0, Lod/r5;->n:Lr0/r2;

    invoke-interface {p1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lua/nav/Tuning;

    const/4 v2, 0x1

    const/16 v5, 0x186

    iget-object v3, p0, Lod/r5;->m:Li9/c;

    invoke-static/range {v0 .. v5}, Lod/v6;->f(Ljava/util/Set;Lua/nav/Tuning;ZLi9/c;Lr0/q;I)V

    goto :goto_5

    :cond_5
    invoke-virtual {v4}, Lr0/q;->W()V

    :goto_5
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    check-cast p1, Lw/b;

    check-cast p2, Lr0/q;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const-string v0, "$this$item"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p3, 0x11

    const/16 v0, 0x10

    const/4 v1, 0x1

    if-eq p1, v0, :cond_6

    move p1, v1

    goto :goto_6

    :cond_6
    const/4 p1, 0x0

    :goto_6
    and-int/2addr p3, v1

    invoke-virtual {p2, p3, p1}, Lr0/q;->T(IZ)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Lod/r5;

    const/4 p3, 0x2

    iget-object v0, p0, Lod/r5;->m:Li9/c;

    iget-object p0, p0, Lod/r5;->n:Lr0/r2;

    invoke-direct {p1, v0, p0, p3}, Lod/r5;-><init>(Li9/c;Lr0/r2;I)V

    const p0, 0x16ce5fd4

    invoke-static {p0, p1, p2}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object p0

    const-string p1, "\u041a\u0430\u043c\u0435\u0440\u0438"

    const/16 p3, 0x36

    invoke-static {p1, p0, p2, p3}, Lod/v6;->B(Ljava/lang/String;Lz0/d;Lr0/q;I)V

    goto :goto_7

    :cond_7
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_7
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
