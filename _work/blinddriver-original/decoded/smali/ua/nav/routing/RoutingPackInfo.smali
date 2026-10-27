.class public final Lua/nav/routing/RoutingPackInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lua/nav/routing/RoutingPackInfo$$serializer;,
        Lua/nav/routing/RoutingPackInfo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lua/nav/routing/RoutingPackInfo$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:J

.field public final h:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lua/nav/routing/RoutingPackInfo$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/routing/RoutingPackInfo;->Companion:Lua/nav/routing/RoutingPackInfo$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 2

    and-int/lit16 v0, p1, 0xff

    const/16 v1, 0xff

    if-ne v1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lua/nav/routing/RoutingPackInfo;->a:Ljava/lang/String;

    iput-object p3, p0, Lua/nav/routing/RoutingPackInfo;->b:Ljava/lang/String;

    iput-object p4, p0, Lua/nav/routing/RoutingPackInfo;->c:Ljava/lang/String;

    iput-object p5, p0, Lua/nav/routing/RoutingPackInfo;->d:Ljava/lang/String;

    iput-object p6, p0, Lua/nav/routing/RoutingPackInfo;->e:Ljava/lang/String;

    iput-object p7, p0, Lua/nav/routing/RoutingPackInfo;->f:Ljava/lang/String;

    iput-wide p8, p0, Lua/nav/routing/RoutingPackInfo;->g:J

    iput-wide p10, p0, Lua/nav/routing/RoutingPackInfo;->h:J

    return-void

    :cond_0
    sget-object p0, Lua/nav/routing/RoutingPackInfo$$serializer;->INSTANCE:Lua/nav/routing/RoutingPackInfo$$serializer;

    invoke-virtual {p0}, Lua/nav/routing/RoutingPackInfo$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lha/n0;->e(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    const-string v0, "sha256"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lua/nav/routing/RoutingPackInfo;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lua/nav/routing/RoutingPackInfo;->b:Ljava/lang/String;

    .line 5
    const-string p1, "?"

    iput-object p1, p0, Lua/nav/routing/RoutingPackInfo;->c:Ljava/lang/String;

    .line 6
    const-string p1, "graphhopper-11.0"

    iput-object p1, p0, Lua/nav/routing/RoutingPackInfo;->d:Ljava/lang/String;

    .line 7
    const-string p1, ""

    iput-object p1, p0, Lua/nav/routing/RoutingPackInfo;->e:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lua/nav/routing/RoutingPackInfo;->f:Ljava/lang/String;

    const-wide/16 p1, 0x0

    .line 9
    iput-wide p1, p0, Lua/nav/routing/RoutingPackInfo;->g:J

    .line 10
    iput-wide p4, p0, Lua/nav/routing/RoutingPackInfo;->h:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lua/nav/routing/RoutingPackInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lua/nav/routing/RoutingPackInfo;

    iget-object v1, p0, Lua/nav/routing/RoutingPackInfo;->a:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/routing/RoutingPackInfo;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lua/nav/routing/RoutingPackInfo;->b:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/routing/RoutingPackInfo;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lua/nav/routing/RoutingPackInfo;->c:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/routing/RoutingPackInfo;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lua/nav/routing/RoutingPackInfo;->d:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/routing/RoutingPackInfo;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lua/nav/routing/RoutingPackInfo;->e:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/routing/RoutingPackInfo;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lua/nav/routing/RoutingPackInfo;->f:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/routing/RoutingPackInfo;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lua/nav/routing/RoutingPackInfo;->g:J

    iget-wide v5, p1, Lua/nav/routing/RoutingPackInfo;->g:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lua/nav/routing/RoutingPackInfo;->h:J

    iget-wide p0, p1, Lua/nav/routing/RoutingPackInfo;->h:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lua/nav/routing/RoutingPackInfo;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lua/nav/routing/RoutingPackInfo;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lua/nav/routing/RoutingPackInfo;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lua/nav/routing/RoutingPackInfo;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lua/nav/routing/RoutingPackInfo;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lua/nav/routing/RoutingPackInfo;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget-wide v2, p0, Lua/nav/routing/RoutingPackInfo;->g:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget-wide v1, p0, Lua/nav/routing/RoutingPackInfo;->h:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", title="

    const-string v1, ", version="

    const-string v2, "RoutingPackInfo(id="

    iget-object v3, p0, Lua/nav/routing/RoutingPackInfo;->a:Ljava/lang/String;

    iget-object v4, p0, Lua/nav/routing/RoutingPackInfo;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", engine="

    const-string v2, ", url="

    iget-object v3, p0, Lua/nav/routing/RoutingPackInfo;->c:Ljava/lang/String;

    iget-object v4, p0, Lua/nav/routing/RoutingPackInfo;->d:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lm/a;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", sha256="

    const-string v2, ", sizeBytes="

    iget-object v3, p0, Lua/nav/routing/RoutingPackInfo;->e:Ljava/lang/String;

    iget-object v4, p0, Lua/nav/routing/RoutingPackInfo;->f:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lm/a;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lua/nav/routing/RoutingPackInfo;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", unpackedBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lua/nav/routing/RoutingPackInfo;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
