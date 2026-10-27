.class public Lcom/graphhopper/routing/util/AccessFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/EdgeFilter;


# instance fields
.field private final accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

.field private final bwd:Z

.field private final fwd:Z


# direct methods
.method private constructor <init>(Lcom/graphhopper/routing/ev/BooleanEncodedValue;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/AccessFilter;->accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    iput-boolean p2, p0, Lcom/graphhopper/routing/util/AccessFilter;->fwd:Z

    iput-boolean p3, p0, Lcom/graphhopper/routing/util/AccessFilter;->bwd:Z

    return-void
.end method

.method public static allEdges(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Lcom/graphhopper/routing/util/AccessFilter;
    .locals 2

    new-instance v0, Lcom/graphhopper/routing/util/AccessFilter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v1}, Lcom/graphhopper/routing/util/AccessFilter;-><init>(Lcom/graphhopper/routing/ev/BooleanEncodedValue;ZZ)V

    return-object v0
.end method

.method public static inEdges(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Lcom/graphhopper/routing/util/AccessFilter;
    .locals 3

    new-instance v0, Lcom/graphhopper/routing/util/AccessFilter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/graphhopper/routing/util/AccessFilter;-><init>(Lcom/graphhopper/routing/ev/BooleanEncodedValue;ZZ)V

    return-object v0
.end method

.method public static outEdges(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Lcom/graphhopper/routing/util/AccessFilter;
    .locals 3

    new-instance v0, Lcom/graphhopper/routing/util/AccessFilter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/graphhopper/routing/util/AccessFilter;-><init>(Lcom/graphhopper/routing/ev/BooleanEncodedValue;ZZ)V

    return-object v0
.end method


# virtual methods
.method public final accept(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/graphhopper/routing/util/AccessFilter;->fwd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/routing/util/AccessFilter;->accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {p1, v0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/graphhopper/routing/util/AccessFilter;->bwd:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/graphhopper/routing/util/AccessFilter;->accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {p1, p0}, Lcom/graphhopper/util/EdgeIteratorState;->getReverse(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/graphhopper/routing/util/AccessFilter;

    iget-boolean v1, p0, Lcom/graphhopper/routing/util/AccessFilter;->bwd:Z

    iget-boolean v2, p1, Lcom/graphhopper/routing/util/AccessFilter;->bwd:Z

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget-boolean v1, p0, Lcom/graphhopper/routing/util/AccessFilter;->fwd:Z

    iget-boolean v2, p1, Lcom/graphhopper/routing/util/AccessFilter;->fwd:Z

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    iget-object p0, p0, Lcom/graphhopper/routing/util/AccessFilter;->accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    iget-object p1, p1, Lcom/graphhopper/routing/util/AccessFilter;->accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method public getAccessEnc()Lcom/graphhopper/routing/ev/BooleanEncodedValue;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/AccessFilter;->accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/graphhopper/routing/util/AccessFilter;->bwd:Z

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/graphhopper/routing/util/AccessFilter;->fwd:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/graphhopper/routing/util/AccessFilter;->accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/routing/util/AccessFilter;->accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/graphhopper/routing/util/AccessFilter;->bwd:Z

    iget-boolean p0, p0, Lcom/graphhopper/routing/util/AccessFilter;->fwd:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", bwd:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", fwd:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
