.class public final Lua/nav/stats/DayTotals;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lua/nav/stats/DayTotals$$serializer;,
        Lua/nav/stats/DayTotals$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lua/nav/stats/DayTotals$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:D

.field public final c:D

.field public final d:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lua/nav/stats/DayTotals$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/stats/DayTotals;->Companion:Lua/nav/stats/DayTotals$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;DDD)V
    .locals 2

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v1, v0, :cond_3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lua/nav/stats/DayTotals;->a:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x2

    const-wide/16 v0, 0x0

    if-nez p2, :cond_0

    iput-wide v0, p0, Lua/nav/stats/DayTotals;->b:D

    goto :goto_0

    :cond_0
    iput-wide p3, p0, Lua/nav/stats/DayTotals;->b:D

    :goto_0
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_1

    iput-wide v0, p0, Lua/nav/stats/DayTotals;->c:D

    goto :goto_1

    :cond_1
    iput-wide p5, p0, Lua/nav/stats/DayTotals;->c:D

    :goto_1
    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_2

    iput-wide v0, p0, Lua/nav/stats/DayTotals;->d:D

    return-void

    :cond_2
    iput-wide p7, p0, Lua/nav/stats/DayTotals;->d:D

    return-void

    :cond_3
    sget-object p0, Lua/nav/stats/DayTotals$$serializer;->INSTANCE:Lua/nav/stats/DayTotals$$serializer;

    invoke-virtual {p0}, Lua/nav/stats/DayTotals$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lha/n0;->e(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;DDD)V
    .locals 1

    const-string v0, "day"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lua/nav/stats/DayTotals;->a:Ljava/lang/String;

    iput-wide p2, p0, Lua/nav/stats/DayTotals;->b:D

    iput-wide p4, p0, Lua/nav/stats/DayTotals;->c:D

    iput-wide p6, p0, Lua/nav/stats/DayTotals;->d:D

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lua/nav/stats/DayTotals;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lua/nav/stats/DayTotals;

    iget-object v1, p0, Lua/nav/stats/DayTotals;->a:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/stats/DayTotals;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lua/nav/stats/DayTotals;->b:D

    iget-wide v5, p1, Lua/nav/stats/DayTotals;->b:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lua/nav/stats/DayTotals;->c:D

    iget-wide v5, p1, Lua/nav/stats/DayTotals;->c:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lua/nav/stats/DayTotals;->d:D

    iget-wide p0, p1, Lua/nav/stats/DayTotals;->d:D

    invoke-static {v3, v4, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lua/nav/stats/DayTotals;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lua/nav/stats/DayTotals;->b:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Lua/nav/stats/DayTotals;->c:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v1, p0, Lua/nav/stats/DayTotals;->d:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DayTotals(day="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lua/nav/stats/DayTotals;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", distanceM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lua/nav/stats/DayTotals;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", movingS="

    const-string v2, ", stoppedS="

    iget-wide v3, p0, Lua/nav/stats/DayTotals;->c:D

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    const-string v1, ")"

    iget-wide v2, p0, Lua/nav/stats/DayTotals;->d:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->m(Ljava/lang/StringBuilder;DLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
