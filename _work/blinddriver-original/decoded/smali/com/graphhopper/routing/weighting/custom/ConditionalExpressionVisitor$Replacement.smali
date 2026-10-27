.class Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor$Replacement;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Replacement"
.end annotation


# instance fields
.field newString:Ljava/lang/String;

.field oldLength:I

.field start:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor$Replacement;->start:I

    iput p2, p0, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor$Replacement;->oldLength:I

    iput-object p3, p0, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor$Replacement;->newString:Ljava/lang/String;

    return-void
.end method
