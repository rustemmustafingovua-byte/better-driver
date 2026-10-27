.class public final Lod/w2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lod/w2;->l:I

    iput-object p1, p0, Lod/w2;->m:Ljava/lang/Object;

    iput-object p2, p0, Lod/w2;->n:Ljava/lang/Object;

    iput-object p3, p0, Lod/w2;->o:Ljava/lang/Object;

    iput-object p4, p0, Lod/w2;->p:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lod/w2;->l:I

    sget-object v1, Lt8/z;->a:Lt8/z;

    iget-object v2, p0, Lod/w2;->p:Ljava/lang/Object;

    iget-object v3, p0, Lod/w2;->o:Ljava/lang/Object;

    iget-object v4, p0, Lod/w2;->n:Ljava/lang/Object;

    iget-object p0, p0, Lod/w2;->m:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lua/nav/c;

    check-cast v4, Lua/nav/geocoding/Place;

    invoke-virtual {p0, v4}, Lua/nav/c;->H(Lua/nav/geocoding/Place;)Lsc/d;

    move-result-object p0

    check-cast v3, Lf2/k2;

    if-eqz v3, :cond_0

    check-cast v3, Lf2/n1;

    invoke-virtual {v3}, Lf2/n1;->a()V

    :cond_0
    if-eqz p0, :cond_1

    check-cast v2, Li9/f;

    iget-object v0, v4, Lua/nav/geocoding/Place;->c:Lua/nav/routing/GeoPoint;

    iget-boolean v3, v4, Lua/nav/geocoding/Place;->d:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, p0, v0, v3}, Li9/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1

    :pswitch_0
    check-cast v3, Lr0/u0;

    sget-object v0, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    check-cast v2, Lr0/u0;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v2, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    check-cast p0, Li9/c;

    check-cast v4, Ld1/v;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v4, v2}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Ld1/v;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :goto_0
    move-object v3, v2

    check-cast v3, Ld1/d0;

    invoke-virtual {v3}, Ld1/d0;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ld1/d0;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lua/nav/routing/SavedAddress;

    iget-wide v3, v3, Lua/nav/routing/SavedAddress;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p0, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
