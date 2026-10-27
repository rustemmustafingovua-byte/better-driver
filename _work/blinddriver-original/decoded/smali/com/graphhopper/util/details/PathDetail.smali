.class public Lcom/graphhopper/util/details/PathDetail;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private first:I

.field private last:I

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/util/details/PathDetail;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getFirst()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/util/details/PathDetail;->first:I

    return p0
.end method

.method public getLast()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/util/details/PathDetail;->last:I

    return p0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lcom/graphhopper/util/details/PathDetail;->last:I

    iget p0, p0, Lcom/graphhopper/util/details/PathDetail;->first:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/details/PathDetail;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public setFirst(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/util/details/PathDetail;->first:I

    return-void
.end method

.method public setLast(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/util/details/PathDetail;->last:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/util/details/PathDetail;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/graphhopper/util/details/PathDetail;->getFirst()I

    move-result v1

    invoke-virtual {p0}, Lcom/graphhopper/util/details/PathDetail;->getLast()I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
