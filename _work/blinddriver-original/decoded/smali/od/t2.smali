.class public final Lod/t2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:Z

.field public final synthetic m:Lr0/u0;


# direct methods
.method public constructor <init>(Lr0/u0;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lod/t2;->l:Z

    iput-object p1, p0, Lod/t2;->m:Lr0/u0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lm1/f0;

    const-string v0, "$this$graphicsLayer"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lod/t2;->l:Z

    if-eqz v0, :cond_0

    sget-object v0, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    iget-object p0, p0, Lod/t2;->m:Lr0/u0;

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lm1/f0;->u(F)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
