.class public Lcom/graphhopper/util/PathSimplification$Interval;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/util/PathSimplification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Interval"
.end annotation


# instance fields
.field public end:I

.field public start:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/graphhopper/util/PathSimplification$Interval;->start:I

    iput p2, p0, Lcom/graphhopper/util/PathSimplification$Interval;->end:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/graphhopper/util/PathSimplification$Interval;->start:I

    iget p0, p0, Lcom/graphhopper/util/PathSimplification$Interval;->end:I

    const-string v1, ", "

    const-string v2, "]"

    const-string v3, "["

    invoke-static {v3, v0, v1, p0, v2}, Lr0/i;->h(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
