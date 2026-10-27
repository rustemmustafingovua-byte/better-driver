.class public final Lua/nav/stats/TripStatsData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lua/nav/stats/TripStatsData$$serializer;,
        Lua/nav/stats/TripStatsData$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lua/nav/stats/TripStatsData$Companion;

.field public static final e:[Lt8/g;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/lang/Long;

.field public final d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lua/nav/stats/TripStatsData$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/stats/TripStatsData;->Companion:Lua/nav/stats/TripStatsData$Companion;

    sget-object v0, Lt8/h;->l:Lt8/h;

    new-instance v1, Lia/n;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Lia/n;-><init>(I)V

    invoke-static {v0, v1}, Ly4/s;->x(Lt8/h;Li9/a;)Lt8/g;

    move-result-object v1

    new-instance v2, Lia/n;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Lia/n;-><init>(I)V

    invoke-static {v0, v2}, Ly4/s;->x(Lt8/h;Li9/a;)Lt8/g;

    move-result-object v2

    new-instance v3, Lia/n;

    const/16 v4, 0x19

    invoke-direct {v3, v4}, Lia/n;-><init>(I)V

    invoke-static {v0, v3}, Ly4/s;->x(Lt8/h;Li9/a;)Lt8/g;

    move-result-object v0

    const/4 v3, 0x4

    new-array v3, v3, [Lt8/g;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput-object v1, v3, v2

    const/4 v1, 0x3

    aput-object v0, v3, v1

    sput-object v3, Lua/nav/stats/TripStatsData;->e:[Lt8/g;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 3

    .line 9
    sget-object v0, Lu8/r;->l:Lu8/r;

    .line 10
    sget-object v1, Lu8/s;->l:Lu8/s;

    const/4 v2, 0x0

    .line 11
    invoke-direct {p0, v0, v1, v2, v0}, Lua/nav/stats/TripStatsData;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/lang/Long;Ljava/util/List;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Ljava/util/Map;Ljava/lang/Long;Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    sget-object v1, Lu8/r;->l:Lu8/r;

    if-nez v0, :cond_0

    iput-object v1, p0, Lua/nav/stats/TripStatsData;->a:Ljava/util/List;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lua/nav/stats/TripStatsData;->a:Ljava/util/List;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    .line 2
    sget-object p2, Lu8/s;->l:Lu8/s;

    .line 3
    iput-object p2, p0, Lua/nav/stats/TripStatsData;->b:Ljava/util/Map;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lua/nav/stats/TripStatsData;->b:Ljava/util/Map;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    const/4 p2, 0x0

    iput-object p2, p0, Lua/nav/stats/TripStatsData;->c:Ljava/lang/Long;

    goto :goto_2

    :cond_2
    iput-object p4, p0, Lua/nav/stats/TripStatsData;->c:Ljava/lang/Long;

    :goto_2
    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_3

    iput-object v1, p0, Lua/nav/stats/TripStatsData;->d:Ljava/util/List;

    return-void

    :cond_3
    iput-object p5, p0, Lua/nav/stats/TripStatsData;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Map;Ljava/lang/Long;Ljava/util/List;)V
    .locals 1

    const-string v0, "cells"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "importedLogs"

    invoke-static {p4, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lua/nav/stats/TripStatsData;->a:Ljava/util/List;

    .line 6
    iput-object p2, p0, Lua/nav/stats/TripStatsData;->b:Ljava/util/Map;

    .line 7
    iput-object p3, p0, Lua/nav/stats/TripStatsData;->c:Ljava/lang/Long;

    .line 8
    iput-object p4, p0, Lua/nav/stats/TripStatsData;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lua/nav/stats/TripStatsData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lua/nav/stats/TripStatsData;

    iget-object v1, p0, Lua/nav/stats/TripStatsData;->a:Ljava/util/List;

    iget-object v3, p1, Lua/nav/stats/TripStatsData;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lua/nav/stats/TripStatsData;->b:Ljava/util/Map;

    iget-object v3, p1, Lua/nav/stats/TripStatsData;->b:Ljava/util/Map;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lua/nav/stats/TripStatsData;->c:Ljava/lang/Long;

    iget-object v3, p1, Lua/nav/stats/TripStatsData;->c:Ljava/lang/Long;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lua/nav/stats/TripStatsData;->d:Ljava/util/List;

    iget-object p1, p1, Lua/nav/stats/TripStatsData;->d:Ljava/util/List;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lua/nav/stats/TripStatsData;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lua/nav/stats/TripStatsData;->b:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lua/nav/stats/TripStatsData;->c:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lua/nav/stats/TripStatsData;->d:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TripStatsData(days="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lua/nav/stats/TripStatsData;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cells="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/stats/TripStatsData;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", liveSinceMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/stats/TripStatsData;->c:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", importedLogs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lua/nav/stats/TripStatsData;->d:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
