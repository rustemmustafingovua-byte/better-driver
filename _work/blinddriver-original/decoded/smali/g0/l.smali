.class public final Lg0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg0/l;->l:I

    iput-object p2, p0, Lg0/l;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lg0/l;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lp0/v;

    check-cast p2, Lr0/q;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p3, p1, 0x11

    const/16 v0, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p3, v0, :cond_0

    move p3, v2

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    and-int/2addr p1, v2

    invoke-virtual {p2, p1, p3}, Lr0/q;->T(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lg0/l;->m:Ljava/lang/Object;

    check-cast p0, Li9/e;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Lm1/p;

    iget-wide v0, p1, Lm1/p;->a:J

    check-cast p2, Lr0/q;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p3, p1, 0x11

    const/16 v0, 0x10

    const/4 v1, 0x1

    if-eq p3, v0, :cond_2

    move p3, v1

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    and-int/2addr p1, v1

    invoke-virtual {p2, p1, p3}, Lr0/q;->T(IZ)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lg0/l;->m:Ljava/lang/Object;

    check-cast p0, Landroid/app/RemoteAction;

    invoke-virtual {p0}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    const/16 p1, 0x30

    sget-object p3, Lg0/r;->a:Lg0/r;

    invoke-virtual {p3, p0, p2, p1}, Lg0/r;->b(Landroid/graphics/drawable/Icon;Lr0/q;I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_3
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    check-cast p1, Lm1/p;

    iget-wide v0, p1, Lm1/p;->a:J

    check-cast p2, Lr0/q;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p3, p1, 0x11

    const/16 v0, 0x10

    const/4 v1, 0x1

    if-eq p3, v0, :cond_4

    move p3, v1

    goto :goto_4

    :cond_4
    const/4 p3, 0x0

    :goto_4
    and-int/2addr p1, v1

    invoke-virtual {p2, p1, p3}, Lr0/q;->T(IZ)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lg0/l;->m:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    const/16 p1, 0x30

    sget-object p3, Lg0/r;->a:Lg0/r;

    invoke-virtual {p3, p0, p2, p1}, Lg0/r;->a(Landroid/graphics/drawable/Drawable;Lr0/q;I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_5
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    check-cast p1, Lm1/p;

    iget-wide v0, p1, Lm1/p;->a:J

    check-cast p2, Lr0/q;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p3, p1, 0x6

    if-nez p3, :cond_7

    invoke-virtual {p2, v0, v1}, Lr0/q;->f(J)Z

    move-result p3

    if-eqz p3, :cond_6

    const/4 p3, 0x4

    goto :goto_6

    :cond_6
    const/4 p3, 0x2

    :goto_6
    or-int/2addr p1, p3

    :cond_7
    and-int/lit8 p3, p1, 0x13

    const/16 v2, 0x12

    if-eq p3, v2, :cond_8

    const/4 p3, 0x1

    goto :goto_7

    :cond_8
    const/4 p3, 0x0

    :goto_7
    and-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2, p3}, Lr0/q;->T(IZ)Z

    move-result p3

    if-eqz p3, :cond_9

    iget-object p0, p0, Lg0/l;->m:Ljava/lang/Object;

    check-cast p0, Le0/d;

    iget p0, p0, Le0/d;->c:I

    shl-int/lit8 p1, p1, 0x3

    and-int/lit8 p1, p1, 0x70

    invoke-static {p0, v0, v1, p2, p1}, Lg0/m;->b(IJLr0/q;I)V

    goto :goto_8

    :cond_9
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_8
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
