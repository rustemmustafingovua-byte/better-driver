.class public final Lua/nav/routing/GeoPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lua/nav/routing/GeoPoint$$serializer;,
        Lua/nav/routing/GeoPoint$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lua/nav/routing/GeoPoint$Companion;


# instance fields
.field public final a:D

.field public final b:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lua/nav/routing/GeoPoint$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/routing/GeoPoint;->Companion:Lua/nav/routing/GeoPoint$Companion;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lua/nav/routing/GeoPoint;->a:D

    iput-wide p3, p0, Lua/nav/routing/GeoPoint;->b:D

    return-void
.end method

.method public synthetic constructor <init>(IDD)V
    .locals 2

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lua/nav/routing/GeoPoint;->a:D

    iput-wide p4, p0, Lua/nav/routing/GeoPoint;->b:D

    return-void

    :cond_0
    sget-object p0, Lua/nav/routing/GeoPoint$$serializer;->INSTANCE:Lua/nav/routing/GeoPoint$$serializer;

    invoke-virtual {p0}, Lua/nav/routing/GeoPoint$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lha/n0;->e(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lua/nav/routing/GeoPoint;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lua/nav/routing/GeoPoint;

    iget-wide v3, p0, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v5, p1, Lua/nav/routing/GeoPoint;->a:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lua/nav/routing/GeoPoint;->b:D

    iget-wide p0, p1, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v3, v4, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lua/nav/routing/GeoPoint;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "GeoPoint(lat="

    const-string v1, ", lon="

    iget-wide v2, p0, Lua/nav/routing/GeoPoint;->a:D

    invoke-static {v2, v3, v0, v1}, La6/q;->l(DLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    iget-wide v2, p0, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->m(Ljava/lang/StringBuilder;DLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
