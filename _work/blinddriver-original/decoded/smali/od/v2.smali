.class public final Lod/v2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:Ld1/v;

.field public final synthetic m:Lua/nav/routing/SavedAddress;

.field public final synthetic n:Lr0/u0;

.field public final synthetic o:Lr0/u0;


# direct methods
.method public constructor <init>(Ld1/v;Lua/nav/routing/SavedAddress;Lr0/u0;Lr0/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/v2;->l:Ld1/v;

    iput-object p2, p0, Lod/v2;->m:Lua/nav/routing/SavedAddress;

    iput-object p3, p0, Lod/v2;->n:Lr0/u0;

    iput-object p4, p0, Lod/v2;->o:Lr0/u0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Ll1/b;

    iget-wide v0, p1, Ll1/b;->a:J

    iget-object p1, p0, Lod/v2;->l:Ld1/v;

    invoke-virtual {p1}, Ld1/v;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    move-object v1, p1

    check-cast v1, Ld1/d0;

    invoke-virtual {v1}, Ld1/d0;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ld1/d0;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lua/nav/routing/SavedAddress;

    iget-wide v1, v1, Lua/nav/routing/SavedAddress;->a:J

    iget-object v3, p0, Lod/v2;->m:Lua/nav/routing/SavedAddress;

    iget-wide v3, v3, Lua/nav/routing/SavedAddress;->a:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    sget-object p1, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lod/v2;->n:Lr0/u0;

    invoke-interface {v0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object p0, p0, Lod/v2;->o:Lr0/u0;

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
