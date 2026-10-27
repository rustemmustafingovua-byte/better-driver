.class public final Lua/nav/routing/SavedAddress;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lua/nav/routing/SavedAddress$$serializer;,
        Lua/nav/routing/SavedAddress$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lua/nav/routing/SavedAddress$Companion;


# instance fields
.field public final a:J

.field public final b:Lua/nav/routing/GeoPoint;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lua/nav/routing/SavedAddress$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/routing/SavedAddress;->Companion:Lua/nav/routing/SavedAddress$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IJLua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x7

    if-ne v1, v0, :cond_1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lua/nav/routing/SavedAddress;->a:J

    iput-object p4, p0, Lua/nav/routing/SavedAddress;->b:Lua/nav/routing/GeoPoint;

    iput-object p5, p0, Lua/nav/routing/SavedAddress;->c:Ljava/lang/String;

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_0

    .line 2
    const-string p1, ""

    .line 3
    iput-object p1, p0, Lua/nav/routing/SavedAddress;->d:Ljava/lang/String;

    return-void

    :cond_0
    iput-object p6, p0, Lua/nav/routing/SavedAddress;->d:Ljava/lang/String;

    return-void

    :cond_1
    sget-object p0, Lua/nav/routing/SavedAddress$$serializer;->INSTANCE:Lua/nav/routing/SavedAddress$$serializer;

    invoke-virtual {p0}, Lua/nav/routing/SavedAddress$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lha/n0;->e(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(JLua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "point"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p4, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-wide p1, p0, Lua/nav/routing/SavedAddress;->a:J

    iput-object p3, p0, Lua/nav/routing/SavedAddress;->b:Lua/nav/routing/GeoPoint;

    iput-object p4, p0, Lua/nav/routing/SavedAddress;->c:Ljava/lang/String;

    iput-object p5, p0, Lua/nav/routing/SavedAddress;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Lua/nav/routing/SavedAddress;Ljava/lang/String;Ljava/lang/String;I)Lua/nav/routing/SavedAddress;
    .locals 6

    iget-wide v1, p0, Lua/nav/routing/SavedAddress;->a:J

    iget-object v3, p0, Lua/nav/routing/SavedAddress;->b:Lua/nav/routing/GeoPoint;

    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_0

    iget-object p1, p0, Lua/nav/routing/SavedAddress;->c:Ljava/lang/String;

    :cond_0
    move-object v4, p1

    and-int/lit8 p1, p3, 0x8

    if-eqz p1, :cond_1

    iget-object p2, p0, Lua/nav/routing/SavedAddress;->d:Ljava/lang/String;

    :cond_1
    move-object v5, p2

    const-string p0, "point"

    invoke-static {v3, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "address"

    invoke-static {v4, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "alias"

    invoke-static {v5, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lua/nav/routing/SavedAddress;

    invoke-direct/range {v0 .. v5}, Lua/nav/routing/SavedAddress;-><init>(JLua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lua/nav/routing/SavedAddress;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lua/nav/routing/SavedAddress;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lua/nav/routing/SavedAddress;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lua/nav/routing/SavedAddress;

    iget-wide v3, p0, Lua/nav/routing/SavedAddress;->a:J

    iget-wide v5, p1, Lua/nav/routing/SavedAddress;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lua/nav/routing/SavedAddress;->b:Lua/nav/routing/GeoPoint;

    iget-object v3, p1, Lua/nav/routing/SavedAddress;->b:Lua/nav/routing/GeoPoint;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lua/nav/routing/SavedAddress;->c:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/routing/SavedAddress;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lua/nav/routing/SavedAddress;->d:Ljava/lang/String;

    iget-object p1, p1, Lua/nav/routing/SavedAddress;->d:Ljava/lang/String;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lua/nav/routing/SavedAddress;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lua/nav/routing/SavedAddress;->b:Lua/nav/routing/GeoPoint;

    invoke-virtual {v2}, Lua/nav/routing/GeoPoint;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lua/nav/routing/SavedAddress;->c:Ljava/lang/String;

    invoke-static {v2, v1, v0}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lua/nav/routing/SavedAddress;->d:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SavedAddress(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lua/nav/routing/SavedAddress;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", point="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/routing/SavedAddress;->b:Lua/nav/routing/GeoPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", address="

    const-string v2, ", alias="

    iget-object v3, p0, Lua/nav/routing/SavedAddress;->c:Ljava/lang/String;

    iget-object p0, p0, Lua/nav/routing/SavedAddress;->d:Ljava/lang/String;

    invoke-static {v0, v1, v3, v2, p0}, Lm/a;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
