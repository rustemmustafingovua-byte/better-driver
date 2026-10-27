.class Lcom/graphhopper/routing/ch/CHPreparationGraph$EdgeBasedPrepareShortcut;
.super Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/ch/CHPreparationGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EdgeBasedPrepareShortcut"
.end annotation


# instance fields
.field private final origEdgeKeyFirst:I

.field private final origEdgeKeyLast:I


# direct methods
.method public constructor <init>(IIIIIDIII)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide/from16 v4, p6

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    invoke-direct/range {v0 .. v9}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;-><init>(IIIDIIII)V

    iput p4, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$EdgeBasedPrepareShortcut;->origEdgeKeyFirst:I

    iput p5, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$EdgeBasedPrepareShortcut;->origEdgeKeyLast:I

    return-void
.end method


# virtual methods
.method public getOrigEdgeKeyFirstAB()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$EdgeBasedPrepareShortcut;->origEdgeKeyFirst:I

    return p0
.end method

.method public getOrigEdgeKeyFirstBA()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$EdgeBasedPrepareShortcut;->origEdgeKeyFirst:I

    return p0
.end method

.method public getOrigEdgeKeyLastAB()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$EdgeBasedPrepareShortcut;->origEdgeKeyLast:I

    return p0
.end method

.method public getOrigEdgeKeyLastBA()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$EdgeBasedPrepareShortcut;->origEdgeKeyLast:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;->getNodeA()I

    move-result v0

    invoke-virtual {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;->getNodeB()I

    move-result v1

    iget v2, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$EdgeBasedPrepareShortcut;->origEdgeKeyFirst:I

    iget v3, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$EdgeBasedPrepareShortcut;->origEdgeKeyLast:I

    invoke-virtual {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;->getWeightAB()D

    move-result-wide v4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
