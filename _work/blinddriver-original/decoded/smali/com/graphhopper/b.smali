.class public final synthetic Lcom/graphhopper/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget p0, p0, Lcom/graphhopper/b;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lj6/v;

    invoke-virtual {p1}, Lj6/v;->a()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lj6/v;->x()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    check-cast p1, Lj6/b;

    iget-object p0, p1, Lj6/b;->a:Lj6/a;

    check-cast p0, Lj6/i;

    iget-object p0, p0, Lj6/i;->o:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    iget-object p0, p1, Lj6/b;->a:Lj6/a;

    check-cast p0, Lj6/i;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lj6/i;->w(I)Ljava/lang/Class;

    move-result-object p0

    const-class v2, Ljava/lang/String;

    if-ne p0, v2, :cond_2

    iget-object p0, p1, Lj6/b;->b:Ljava/lang/Object;

    sget-object p1, Lr5/j;->m:Lr5/j;

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    return v0

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/graphhopper/util/PMap;->a(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/graphhopper/util/Helper;->a(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_3
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/graphhopper/util/Helper;->d(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_4
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/graphhopper/GraphHopper;->F(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_5
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/graphhopper/GraphHopper;->g(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_6
    check-cast p1, Lcom/graphhopper/config/Profile;

    invoke-static {p1}, Lcom/graphhopper/GraphHopper;->w(Lcom/graphhopper/config/Profile;)Z

    move-result p0

    return p0

    :pswitch_7
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/graphhopper/GraphHopper;->y(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0

    :pswitch_8
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValue;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_9
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/graphhopper/GraphHopper;->h(Ljava/lang/String;)Z

    move-result p0

    return p0

    nop

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
