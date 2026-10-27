.class public final synthetic Lb0/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Lr0/u0;I)V
    .locals 0

    iput p2, p0, Lb0/y;->l:I

    iput-object p1, p0, Lb0/y;->m:Lr0/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lb0/y;->l:I

    const-wide v1, 0xffffffffL

    const-string v3, "it"

    sget-object v4, Lt8/z;->a:Lt8/z;

    iget-object p0, p0, Lb0/y;->m:Lr0/u0;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v4

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v4

    :pswitch_1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v4

    :pswitch_2
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    new-instance v0, Lod/l5;

    invoke-direct {v0, p1}, Lod/l5;-><init>(F)V

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v4

    :pswitch_3
    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x3e8

    invoke-static {v0, p1}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v4

    :pswitch_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v4

    :pswitch_5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v4

    :pswitch_6
    check-cast p1, Ll1/b;

    sget p1, Lod/e4;->c:I

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li9/a;

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    return-object v4

    :pswitch_7
    check-cast p1, Lb3/c;

    const-string v0, "$this$offset"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    float-to-int p0, p0

    int-to-long p0, p0

    const/16 v0, 0x20

    shl-long/2addr p0, v0

    const/4 v0, 0x0

    int-to-long v3, v0

    and-long v0, v3, v1

    or-long/2addr p0, v0

    new-instance v0, Lb3/j;

    invoke-direct {v0, p0, p1}, Lb3/j;-><init>(J)V

    return-object v0

    :pswitch_8
    check-cast p1, Lp2/j0;

    invoke-static {p1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lp2/j0;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-object v4

    :pswitch_9
    check-cast p1, Lc2/u;

    invoke-static {p1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lc2/u;->o()J

    move-result-wide v5

    and-long v0, v5, v1

    long-to-int p1, v0

    invoke-static {p0, p1}, Lod/g3;->l(Lr0/u0;I)V

    return-object v4

    :pswitch_a
    check-cast p1, Lc2/u;

    invoke-static {p1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lc2/u;->o()J

    move-result-wide v5

    and-long v0, v5, v1

    long-to-int p1, v0

    invoke-static {p0, p1}, Lod/g3;->l(Lr0/u0;I)V

    return-object v4

    :pswitch_b
    check-cast p1, Lc2/u;

    invoke-static {p1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lc2/u;->o()J

    move-result-wide v5

    and-long v0, v5, v1

    long-to-int p1, v0

    invoke-static {p0, p1}, Lod/g3;->l(Lr0/u0;I)V

    return-object v4

    :pswitch_c
    check-cast p1, Lc2/u;

    invoke-static {p1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lc2/u;->o()J

    move-result-wide v5

    and-long v0, v5, v1

    long-to-int p1, v0

    invoke-static {p0, p1}, Lod/g3;->l(Lr0/u0;I)V

    return-object v4

    :pswitch_d
    check-cast p1, Lc2/u;

    invoke-static {p1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lc2/u;->o()J

    move-result-wide v5

    and-long v0, v5, v1

    long-to-int p1, v0

    invoke-static {p0, p1}, Lod/g3;->l(Lr0/u0;I)V

    return-object v4

    :pswitch_e
    check-cast p1, Ljava/util/Map;

    const-string v0, "res"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-object v4

    :pswitch_f
    check-cast p1, Lc2/u;

    invoke-static {p1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lc2/u;->o()J

    move-result-wide v5

    and-long v0, v5, v1

    long-to-int p1, v0

    invoke-static {p0, p1}, Lod/g3;->l(Lr0/u0;I)V

    return-object v4

    :pswitch_10
    check-cast p1, Lp2/j0;

    invoke-static {p1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lp2/j0;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :cond_2
    return-object v4

    :pswitch_11
    check-cast p1, Lc2/u;

    invoke-static {p1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lc2/u;->o()J

    move-result-wide v5

    and-long v0, v5, v1

    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v4

    :pswitch_12
    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v4

    :pswitch_13
    check-cast p1, Lc2/u;

    invoke-static {p1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lc2/u;->I()Lc2/u;

    move-result-object v0

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0, p1, v5, v6}, Lc2/u;->L(Lc2/u;J)J

    move-result-wide v5

    :cond_3
    and-long/2addr v5, v1

    long-to-int v0, v5

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-interface {p1}, Lc2/u;->o()J

    move-result-wide v5

    and-long/2addr v1, v5

    long-to-int p1, v1

    int-to-float p1, p1

    add-float/2addr v0, p1

    float-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v4

    :pswitch_14
    check-cast p1, Lua/nav/routing/SavedAddress;

    invoke-static {p1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v4

    :pswitch_15
    check-cast p1, Lm0/a0;

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v4

    :pswitch_16
    check-cast p1, Lb3/l;

    iget-wide v5, p1, Lb3/l;->a:J

    and-long v0, v5, v1

    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v4

    :pswitch_17
    check-cast p1, Lc2/u;

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v4

    :pswitch_18
    check-cast p1, Lc2/u;

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v4

    :pswitch_19
    check-cast p1, Lc2/u;

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v4

    :pswitch_1a
    check-cast p1, Ll1/b;

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li9/c;

    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    :pswitch_1b
    check-cast p1, Ljava/util/List;

    if-eqz p0, :cond_4

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :cond_4
    return-object v4

    :pswitch_1c
    check-cast p1, Ll0/p;

    iget-boolean v0, p1, Ll0/p;->c:Z

    if-eqz v0, :cond_5

    iget-object p1, p1, Ll0/p;->b:Lp2/g;

    goto :goto_0

    :cond_5
    iget-object p1, p1, Ll0/p;->a:Lp2/g;

    :goto_0
    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
