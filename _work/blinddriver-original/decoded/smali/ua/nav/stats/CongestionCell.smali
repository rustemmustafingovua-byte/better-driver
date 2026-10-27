.class public final Lua/nav/stats/CongestionCell;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lua/nav/stats/CongestionCell$$serializer;,
        Lua/nav/stats/CongestionCell$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lua/nav/stats/CongestionCell$Companion;


# instance fields
.field public final a:D

.field public final b:I

.field public final c:Ljava/lang/Double;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lua/nav/stats/CongestionCell$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/stats/CongestionCell;->Companion:Lua/nav/stats/CongestionCell$Companion;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 6

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 4
    invoke-direct/range {v0 .. v5}, Lua/nav/stats/CongestionCell;-><init>(DILjava/lang/Double;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(DILjava/lang/Double;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lua/nav/stats/CongestionCell;->a:D

    iput p3, p0, Lua/nav/stats/CongestionCell;->b:I

    iput-object p4, p0, Lua/nav/stats/CongestionCell;->c:Ljava/lang/Double;

    iput-object p5, p0, Lua/nav/stats/CongestionCell;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IDILjava/lang/Double;Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    :cond_0
    iput-wide p2, p0, Lua/nav/stats/CongestionCell;->a:D

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    iput p2, p0, Lua/nav/stats/CongestionCell;->b:I

    goto :goto_0

    :cond_1
    iput p4, p0, Lua/nav/stats/CongestionCell;->b:I

    :goto_0
    and-int/lit8 p2, p1, 0x4

    const/4 p3, 0x0

    if-nez p2, :cond_2

    iput-object p3, p0, Lua/nav/stats/CongestionCell;->c:Ljava/lang/Double;

    goto :goto_1

    :cond_2
    iput-object p5, p0, Lua/nav/stats/CongestionCell;->c:Ljava/lang/Double;

    :goto_1
    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_3

    iput-object p3, p0, Lua/nav/stats/CongestionCell;->d:Ljava/lang/String;

    return-void

    :cond_3
    iput-object p6, p0, Lua/nav/stats/CongestionCell;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Lua/nav/stats/CongestionCell;DILjava/lang/Double;Ljava/lang/String;I)Lua/nav/stats/CongestionCell;
    .locals 6

    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_0

    iget-wide p1, p0, Lua/nav/stats/CongestionCell;->a:D

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    iget p3, p0, Lua/nav/stats/CongestionCell;->b:I

    :cond_1
    move v3, p3

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    iget-object p4, p0, Lua/nav/stats/CongestionCell;->c:Ljava/lang/Double;

    :cond_2
    move-object v4, p4

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    iget-object p5, p0, Lua/nav/stats/CongestionCell;->d:Ljava/lang/String;

    :cond_3
    move-object v5, p5

    new-instance v0, Lua/nav/stats/CongestionCell;

    invoke-direct/range {v0 .. v5}, Lua/nav/stats/CongestionCell;-><init>(DILjava/lang/Double;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lua/nav/stats/CongestionCell;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lua/nav/stats/CongestionCell;

    iget-wide v3, p0, Lua/nav/stats/CongestionCell;->a:D

    iget-wide v5, p1, Lua/nav/stats/CongestionCell;->a:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lua/nav/stats/CongestionCell;->b:I

    iget v3, p1, Lua/nav/stats/CongestionCell;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lua/nav/stats/CongestionCell;->c:Ljava/lang/Double;

    iget-object v3, p1, Lua/nav/stats/CongestionCell;->c:Ljava/lang/Double;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lua/nav/stats/CongestionCell;->d:Ljava/lang/String;

    iget-object p1, p1, Lua/nav/stats/CongestionCell;->d:Ljava/lang/String;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lua/nav/stats/CongestionCell;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lua/nav/stats/CongestionCell;->b:I

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lua/nav/stats/CongestionCell;->c:Ljava/lang/Double;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Lua/nav/stats/CongestionCell;->d:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CongestionCell(learned="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lua/nav/stats/CongestionCell;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", samples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lua/nav/stats/CongestionCell;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", manual="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/stats/CongestionCell;->c:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", updatedDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lua/nav/stats/CongestionCell;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
