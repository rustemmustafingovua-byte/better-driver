.class public final Lod/g2;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lod/g2;->l:I

    .line 1
    iput-object p1, p0, Lod/g2;->p:Ljava/lang/Object;

    iput-object p2, p0, Lod/g2;->m:Ljava/lang/Object;

    iput-object p3, p0, Lod/g2;->n:Ljava/lang/Object;

    iput-object p4, p0, Lod/g2;->o:Ljava/lang/Object;

    iput-object p5, p0, Lod/g2;->q:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Lua/nav/c;Lr0/u0;Lr0/u0;Lu9/t;Lr0/u0;Ly8/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lod/g2;->l:I

    .line 2
    iput-object p1, p0, Lod/g2;->p:Ljava/lang/Object;

    iput-object p2, p0, Lod/g2;->m:Ljava/lang/Object;

    iput-object p3, p0, Lod/g2;->n:Ljava/lang/Object;

    iput-object p4, p0, Lod/g2;->q:Ljava/lang/Object;

    iput-object p5, p0, Lod/g2;->o:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Ly/g;Le2/h1;Ld5/a;Lb0/c3;Ly8/c;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lod/g2;->l:I

    .line 3
    iput-object p1, p0, Lod/g2;->m:Ljava/lang/Object;

    iput-object p2, p0, Lod/g2;->n:Ljava/lang/Object;

    iput-object p3, p0, Lod/g2;->o:Ljava/lang/Object;

    iput-object p4, p0, Lod/g2;->q:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 9

    iget v0, p0, Lod/g2;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v1, Lod/g2;

    iget-object v0, p0, Lod/g2;->m:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ly/g;

    iget-object v0, p0, Lod/g2;->n:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Le2/h1;

    iget-object v0, p0, Lod/g2;->o:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ld5/a;

    iget-object p0, p0, Lod/g2;->q:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Lb0/c3;

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lod/g2;-><init>(Ly/g;Le2/h1;Ld5/a;Lb0/c3;Ly8/c;)V

    iput-object p1, v1, Lod/g2;->p:Ljava/lang/Object;

    return-object v1

    :pswitch_0
    move-object v8, p2

    new-instance v2, Lod/g2;

    iget-object p1, p0, Lod/g2;->p:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lua/nav/c;

    iget-object p1, p0, Lod/g2;->m:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lr0/u0;

    iget-object p1, p0, Lod/g2;->n:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lr0/u0;

    iget-object p1, p0, Lod/g2;->q:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lu9/t;

    iget-object p0, p0, Lod/g2;->o:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, Lr0/u0;

    invoke-direct/range {v2 .. v8}, Lod/g2;-><init>(Lua/nav/c;Lr0/u0;Lr0/u0;Lu9/t;Lr0/u0;Ly8/c;)V

    return-object v2

    :pswitch_1
    move-object v8, p2

    new-instance v2, Lod/g2;

    iget-object p1, p0, Lod/g2;->p:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Landroid/content/Context;

    iget-object p1, p0, Lod/g2;->m:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lr0/u0;

    iget-object p1, p0, Lod/g2;->n:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lr0/u0;

    iget-object p1, p0, Lod/g2;->o:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lr0/u0;

    iget-object p0, p0, Lod/g2;->q:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, Lr0/u0;

    invoke-direct/range {v2 .. v8}, Lod/g2;-><init>(Landroid/content/Context;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lod/g2;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lod/g2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/g2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/g2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lod/g2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/g2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/g2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lod/g2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/g2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/g2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lod/g2;->l:I

    sget-object v1, Lt8/z;->a:Lt8/z;

    iget-object v2, p0, Lod/g2;->q:Ljava/lang/Object;

    iget-object v3, p0, Lod/g2;->o:Ljava/lang/Object;

    iget-object v4, p0, Lod/g2;->n:Ljava/lang/Object;

    iget-object v5, p0, Lod/g2;->m:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p0, p0, Lod/g2;->p:Ljava/lang/Object;

    check-cast p0, Lu9/t;

    new-instance v6, Landroidx/lifecycle/m0;

    move-object v7, v5

    check-cast v7, Ly/g;

    move-object v8, v4

    check-cast v8, Le2/h1;

    move-object v9, v3

    check-cast v9, Ld5/a;

    const/16 v11, 0x1b

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v11}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    const/4 p1, 0x3

    invoke-static {p0, v10, v10, v6, p1}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    new-instance v0, Lp/b;

    check-cast v2, Lb0/c3;

    const/16 v1, 0xd

    invoke-direct {v0, v7, v2, v10, v1}, Lp/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-static {p0, v10, v10, v0, p1}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lod/g2;->p:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Lua/nav/c;

    move-object v9, v4

    check-cast v9, Lr0/u0;

    sget-object p0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    check-cast v5, Lr0/u0;

    sget-object p0, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v5}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lt8/j;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v9}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/maplibre/android/maps/MapLibreMap;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v7, v2

    check-cast v7, Lu9/t;

    move-object v8, v3

    check-cast v8, Lr0/u0;

    iget-object p1, p0, Lt8/j;->l:Ljava/lang/Object;

    move-object v10, p1

    check-cast v10, Lsc/d;

    iget-object p0, p0, Lt8/j;->m:Ljava/lang/Object;

    move-object v11, p0

    check-cast v11, Lua/nav/routing/GeoPoint;

    const/4 v12, 0x1

    invoke-static/range {v6 .. v12}, Lod/g3;->g(Lua/nav/c;Lu9/t;Lr0/u0;Lr0/u0;Lsc/d;Lua/nav/routing/GeoPoint;Z)V

    iget-object p0, v6, Lua/nav/c;->J:Lx9/l0;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lx9/l0;->j(Ljava/lang/Object;)V

    :goto_0
    return-object v1

    :pswitch_1
    iget-object p0, p0, Lod/g2;->p:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    check-cast v3, Lr0/u0;

    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    check-cast v5, Lr0/u0;

    sget-object p1, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v5}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-eqz p1, :cond_a

    check-cast v4, Lr0/u0;

    invoke-interface {v4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lad/a0;

    iget-boolean p1, p1, Lad/a0;->a:Z

    if-eqz p1, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldd/n;

    iget-object p1, p1, Ldd/n;->c:Ldd/l0;

    if-nez p1, :cond_a

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldd/n;

    iget-object p1, p1, Ldd/n;->d:Ldd/l0;

    if-eqz p1, :cond_3

    goto/16 :goto_2

    :cond_3
    sget-object p1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->e()Ldd/i;

    move-result-object p1

    invoke-virtual {p1}, Ldd/i;->b()Lid/h1;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_4

    const-string p1, "\u041f\u043e\u0437\u0438\u0446\u0456\u0457 \u043d\u0435\u043c\u0430\u0454: \u043d\u0456 GPS, \u043d\u0456 \u0432\u0438\u0448\u043a\u0438 \u0437\u0432\'\u044f\u0437\u043a\u0443"

    invoke-static {p1}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_4
    iget-wide v3, p1, Lid/h1;->b:D

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    cmpg-double v5, v3, v5

    if-gtz v5, :cond_5

    const-wide/high16 v5, 0x402a000000000000L    # 13.0

    goto :goto_1

    :cond_5
    const-wide/high16 v5, 0x4020000000000000L    # 8.0

    cmpg-double v5, v3, v5

    if-gtz v5, :cond_6

    const-wide/high16 v5, 0x4028000000000000L    # 12.0

    goto :goto_1

    :cond_6
    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    cmpg-double v5, v3, v5

    if-gtz v5, :cond_7

    const-wide/high16 v5, 0x4026000000000000L    # 11.0

    goto :goto_1

    :cond_7
    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    :goto_1
    check-cast v2, Lr0/u0;

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v2, :cond_8

    new-instance v7, Lorg/maplibre/android/geometry/LatLng;

    iget-object p1, p1, Lid/h1;->a:Lua/nav/routing/GeoPoint;

    iget-wide v8, p1, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v10, p1, Lua/nav/routing/GeoPoint;->b:D

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/maplibre/android/geometry/LatLng;-><init>(DD)V

    invoke-static {v7, v5, v6}, Lorg/maplibre/android/camera/CameraUpdateFactory;->newLatLngZoom(Lorg/maplibre/android/geometry/LatLng;D)Lorg/maplibre/android/camera/CameraUpdate;

    move-result-object p1

    const/16 v5, 0x258

    invoke-virtual {v2, p1, v5}, Lorg/maplibre/android/maps/MapLibreMap;->animateCamera(Lorg/maplibre/android/camera/CameraUpdate;I)V

    :cond_8
    invoke-static {v3, v4}, Ll9/a;->y(D)I

    move-result p1

    const/4 v2, 0x1

    if-ge p1, v2, :cond_9

    move p1, v2

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u041f\u0440\u0438\u0431\u043b\u0438\u0437\u043d\u043e \u0437\u0430 \u0432\u0438\u0448\u043a\u043e\u044e \u0437\u0432\'\u044f\u0437\u043a\u0443 (\u00b1"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u043a\u043c)"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcd/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_a
    :goto_2
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
