.class public final Lod/b2;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lr0/u0;

.field public final synthetic n:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(ILr0/u0;Lr0/u0;Ly8/c;)V
    .locals 0

    iput p1, p0, Lod/b2;->l:I

    iput-object p2, p0, Lod/b2;->m:Lr0/u0;

    iput-object p3, p0, Lod/b2;->n:Lr0/u0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    iget p1, p0, Lod/b2;->l:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lod/b2;

    iget-object v0, p0, Lod/b2;->n:Lr0/u0;

    const/4 v1, 0x1

    iget-object p0, p0, Lod/b2;->m:Lr0/u0;

    invoke-direct {p1, v1, p0, v0, p2}, Lod/b2;-><init>(ILr0/u0;Lr0/u0;Ly8/c;)V

    return-object p1

    :pswitch_0
    new-instance p1, Lod/b2;

    iget-object v0, p0, Lod/b2;->n:Lr0/u0;

    const/4 v1, 0x0

    iget-object p0, p0, Lod/b2;->m:Lr0/u0;

    invoke-direct {p1, v1, p0, v0, p2}, Lod/b2;-><init>(ILr0/u0;Lr0/u0;Ly8/c;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lod/b2;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lod/b2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/b2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/b2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lod/b2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/b2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/b2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lod/b2;->l:I

    sget-object v1, Lt8/z;->a:Lt8/z;

    iget-object v2, p0, Lod/b2;->n:Lr0/u0;

    iget-object p0, p0, Lod/b2;->m:Lr0/u0;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p1, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapLibreMap;->getStyle()Lorg/maplibre/android/maps/Style;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Style;->isFullyLoaded()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    sget-object p1, Lod/w6;->a:Ljava/util/HashMap;

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lua/nav/Tuning;

    iget-wide v2, p1, Lua/nav/Tuning;->R:D

    invoke-static {p0, v2, v3}, Lod/w6;->a(Lorg/maplibre/android/maps/Style;D)V

    :cond_1
    return-object v1

    :pswitch_0
    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    invoke-static {p0}, Lod/g3;->u(Lr0/u0;)V

    invoke-static {v2}, Lod/g3;->v(Lr0/u0;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
