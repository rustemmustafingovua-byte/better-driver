.class public final Lcom/graphhopper/jackson/ResponsePathSerializer$Info;
.super Lr0/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/jackson/ResponsePathSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Info"
.end annotation


# instance fields
.field private final copyrights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final roadDataTimestamp:Ljava/lang/String;

.field private final took:J


# direct methods
.method public constructor <init>(Ljava/util/List;JLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/jackson/ResponsePathSerializer$Info;->copyrights:Ljava/util/List;

    iput-wide p2, p0, Lcom/graphhopper/jackson/ResponsePathSerializer$Info;->took:J

    iput-object p4, p0, Lcom/graphhopper/jackson/ResponsePathSerializer$Info;->roadDataTimestamp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public copyrights()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/jackson/ResponsePathSerializer$Info;->copyrights:Ljava/util/List;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/graphhopper/jackson/ResponsePathSerializer$Info;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/graphhopper/jackson/ResponsePathSerializer$Info;

    iget-wide v0, p0, Lcom/graphhopper/jackson/ResponsePathSerializer$Info;->took:J

    iget-wide v2, p1, Lcom/graphhopper/jackson/ResponsePathSerializer$Info;->took:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/jackson/ResponsePathSerializer$Info;->copyrights:Ljava/util/List;

    iget-object v1, p1, Lcom/graphhopper/jackson/ResponsePathSerializer$Info;->copyrights:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/jackson/ResponsePathSerializer$Info;->roadDataTimestamp:Ljava/lang/String;

    iget-object p1, p1, Lcom/graphhopper/jackson/ResponsePathSerializer$Info;->roadDataTimestamp:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/graphhopper/jackson/ResponsePathSerializer$Info;->took:J

    iget-object v2, p0, Lcom/graphhopper/jackson/ResponsePathSerializer$Info;->copyrights:Ljava/util/List;

    iget-object p0, p0, Lcom/graphhopper/jackson/ResponsePathSerializer$Info;->roadDataTimestamp:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public roadDataTimestamp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/jackson/ResponsePathSerializer$Info;->roadDataTimestamp:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/graphhopper/jackson/ResponsePathSerializer$Info;->copyrights:Ljava/util/List;

    iget-wide v1, p0, Lcom/graphhopper/jackson/ResponsePathSerializer$Info;->took:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object p0, p0, Lcom/graphhopper/jackson/ResponsePathSerializer$Info;->roadDataTimestamp:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v1, 0x2

    aput-object p0, v2, v1

    const-string p0, "copyrights;took;roadDataTimestamp"

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    new-array p0, v3, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/graphhopper/jackson/ResponsePathSerializer$Info;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    array-length v4, p0

    if-ge v3, v4, :cond_2

    aget-object v4, p0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v2, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    array-length v4, p0

    sub-int/2addr v4, v0

    if-eq v3, v4, :cond_1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public took()J
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/jackson/ResponsePathSerializer$Info;->took:J

    return-wide v0
.end method
