.class public final Lua/nav/hazards/RoadObjectsPackInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lua/nav/hazards/RoadObjectsPackInfo$$serializer;,
        Lua/nav/hazards/RoadObjectsPackInfo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lua/nav/hazards/RoadObjectsPackInfo$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:J

.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lua/nav/hazards/RoadObjectsPackInfo$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/hazards/RoadObjectsPackInfo;->Companion:Lua/nav/hazards/RoadObjectsPackInfo$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)V
    .locals 2

    and-int/lit8 v0, p1, 0x1f

    const/16 v1, 0x1f

    if-ne v1, v0, :cond_1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lua/nav/hazards/RoadObjectsPackInfo;->a:Ljava/lang/String;

    iput-object p3, p0, Lua/nav/hazards/RoadObjectsPackInfo;->b:Ljava/lang/String;

    iput-object p4, p0, Lua/nav/hazards/RoadObjectsPackInfo;->c:Ljava/lang/String;

    iput-wide p5, p0, Lua/nav/hazards/RoadObjectsPackInfo;->d:J

    iput-wide p7, p0, Lua/nav/hazards/RoadObjectsPackInfo;->e:J

    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lua/nav/hazards/RoadObjectsPackInfo;->f:I

    return-void

    :cond_0
    iput p9, p0, Lua/nav/hazards/RoadObjectsPackInfo;->f:I

    return-void

    :cond_1
    sget-object p0, Lua/nav/hazards/RoadObjectsPackInfo$$serializer;->INSTANCE:Lua/nav/hazards/RoadObjectsPackInfo$$serializer;

    invoke-virtual {p0}, Lua/nav/hazards/RoadObjectsPackInfo$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    instance-of v1, p1, Lua/nav/hazards/RoadObjectsPackInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lua/nav/hazards/RoadObjectsPackInfo;

    iget-object v1, p0, Lua/nav/hazards/RoadObjectsPackInfo;->a:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/hazards/RoadObjectsPackInfo;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lua/nav/hazards/RoadObjectsPackInfo;->b:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/hazards/RoadObjectsPackInfo;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lua/nav/hazards/RoadObjectsPackInfo;->c:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/hazards/RoadObjectsPackInfo;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lua/nav/hazards/RoadObjectsPackInfo;->d:J

    iget-wide v5, p1, Lua/nav/hazards/RoadObjectsPackInfo;->d:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lua/nav/hazards/RoadObjectsPackInfo;->e:J

    iget-wide v5, p1, Lua/nav/hazards/RoadObjectsPackInfo;->e:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget p0, p0, Lua/nav/hazards/RoadObjectsPackInfo;->f:I

    iget p1, p1, Lua/nav/hazards/RoadObjectsPackInfo;->f:I

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lua/nav/hazards/RoadObjectsPackInfo;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lua/nav/hazards/RoadObjectsPackInfo;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lua/nav/hazards/RoadObjectsPackInfo;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget-wide v2, p0, Lua/nav/hazards/RoadObjectsPackInfo;->d:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget-wide v2, p0, Lua/nav/hazards/RoadObjectsPackInfo;->e:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget p0, p0, Lua/nav/hazards/RoadObjectsPackInfo;->f:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", url="

    const-string v1, ", sha256="

    const-string v2, "RoadObjectsPackInfo(version="

    iget-object v3, p0, Lua/nav/hazards/RoadObjectsPackInfo;->a:Ljava/lang/String;

    iget-object v4, p0, Lua/nav/hazards/RoadObjectsPackInfo;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lua/nav/hazards/RoadObjectsPackInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sizeBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lua/nav/hazards/RoadObjectsPackInfo;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", unpackedBytes="

    const-string v2, ", count="

    iget-wide v3, p0, Lua/nav/hazards/RoadObjectsPackInfo;->e:J

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->w(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    const-string v1, ")"

    iget p0, p0, Lua/nav/hazards/RoadObjectsPackInfo;->f:I

    invoke-static {p0, v1, v0}, Lm/a;->j(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
