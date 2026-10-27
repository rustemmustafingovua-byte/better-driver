.class public final Lod/y2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:F

.field public final synthetic m:Ld1/v;

.field public final synthetic n:Lr0/u0;

.field public final synthetic o:Lr0/u0;


# direct methods
.method public constructor <init>(FLd1/v;Lr0/u0;Lr0/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lod/y2;->l:F

    iput-object p2, p0, Lod/y2;->m:Ld1/v;

    iput-object p3, p0, Lod/y2;->n:Lr0/u0;

    iput-object p4, p0, Lod/y2;->o:Lr0/u0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Ly1/u;

    check-cast p2, Ll1/b;

    iget-wide v0, p2, Ll1/b;->a:J

    const-string p2, "change"

    invoke-static {p1, p2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ly1/u;->a()V

    sget-object p1, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    iget-object p1, p0, Lod/y2;->n:Lr0/u0;

    invoke-interface {p1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    iget-object p2, p0, Lod/y2;->o:Lr0/u0;

    invoke-interface {p2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget v2, p0, Lod/y2;->l:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ll9/a;->z(F)I

    move-result v1

    add-int/2addr v1, v0

    iget-object p0, p0, Lod/y2;->m:Ld1/v;

    invoke-virtual {p0}, Ld1/v;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Lg6/c1;->f(III)I

    move-result v1

    if-eq v1, v0, :cond_1

    invoke-virtual {p0, v0}, Ld1/v;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lua/nav/routing/SavedAddress;

    invoke-virtual {p0, v1, v3}, Ld1/v;->add(ILjava/lang/Object;)V

    invoke-interface {p1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    sub-int v0, v1, v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    sub-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {p1, p0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
