.class public final Lua/nav/routing/RecentPlaces$Item;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lua/nav/routing/RecentPlaces$Item$$serializer;,
        Lua/nav/routing/RecentPlaces$Item$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lua/nav/routing/RecentPlaces$Item$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:D

.field public final c:D

.field public final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lua/nav/routing/RecentPlaces$Item$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/routing/RecentPlaces$Item;->Companion:Lua/nav/routing/RecentPlaces$Item$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;DDJ)V
    .locals 2

    and-int/lit8 v0, p1, 0xf

    const/16 v1, 0xf

    if-ne v1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lua/nav/routing/RecentPlaces$Item;->a:Ljava/lang/String;

    iput-wide p3, p0, Lua/nav/routing/RecentPlaces$Item;->b:D

    iput-wide p5, p0, Lua/nav/routing/RecentPlaces$Item;->c:D

    iput-wide p7, p0, Lua/nav/routing/RecentPlaces$Item;->d:J

    return-void

    :cond_0
    sget-object p0, Lua/nav/routing/RecentPlaces$Item$$serializer;->INSTANCE:Lua/nav/routing/RecentPlaces$Item$$serializer;

    invoke-virtual {p0}, Lua/nav/routing/RecentPlaces$Item$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lha/n0;->e(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(JDDLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p7, p0, Lua/nav/routing/RecentPlaces$Item;->a:Ljava/lang/String;

    iput-wide p3, p0, Lua/nav/routing/RecentPlaces$Item;->b:D

    iput-wide p5, p0, Lua/nav/routing/RecentPlaces$Item;->c:D

    iput-wide p1, p0, Lua/nav/routing/RecentPlaces$Item;->d:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lua/nav/routing/RecentPlaces$Item;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lua/nav/routing/RecentPlaces$Item;

    iget-object v1, p0, Lua/nav/routing/RecentPlaces$Item;->a:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/routing/RecentPlaces$Item;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lua/nav/routing/RecentPlaces$Item;->b:D

    iget-wide v5, p1, Lua/nav/routing/RecentPlaces$Item;->b:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lua/nav/routing/RecentPlaces$Item;->c:D

    iget-wide v5, p1, Lua/nav/routing/RecentPlaces$Item;->c:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lua/nav/routing/RecentPlaces$Item;->d:J

    iget-wide p0, p1, Lua/nav/routing/RecentPlaces$Item;->d:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lua/nav/routing/RecentPlaces$Item;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lua/nav/routing/RecentPlaces$Item;->b:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Lua/nav/routing/RecentPlaces$Item;->c:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v1, p0, Lua/nav/routing/RecentPlaces$Item;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Item(title="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lua/nav/routing/RecentPlaces$Item;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lua/nav/routing/RecentPlaces$Item;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", lon="

    const-string v2, ", ts="

    iget-wide v3, p0, Lua/nav/routing/RecentPlaces$Item;->c:D

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    const-string v1, ")"

    iget-wide v2, p0, Lua/nav/routing/RecentPlaces$Item;->d:J

    invoke-static {v2, v3, v1, v0}, La6/q;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
