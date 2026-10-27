.class Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/ch/CHPreparationGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrigGraph"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;
    }
.end annotation


# instance fields
.field private final adjNodesAndFwdFlags:Lcom/carrotsearch/hppc/x;

.field private final firstEdgesByNode:Lcom/carrotsearch/hppc/x;

.field private final keysAndBwdFlags:Lcom/carrotsearch/hppc/x;


# direct methods
.method private constructor <init>(Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;->firstEdgesByNode:Lcom/carrotsearch/hppc/x;

    .line 4
    iput-object p2, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;->adjNodesAndFwdFlags:Lcom/carrotsearch/hppc/x;

    .line 5
    iput-object p3, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;->keysAndBwdFlags:Lcom/carrotsearch/hppc/x;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;-><init>(Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;)Lcom/carrotsearch/hppc/x;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;->adjNodesAndFwdFlags:Lcom/carrotsearch/hppc/x;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;)Lcom/carrotsearch/hppc/x;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;->firstEdgesByNode:Lcom/carrotsearch/hppc/x;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;)Lcom/carrotsearch/hppc/x;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;->keysAndBwdFlags:Lcom/carrotsearch/hppc/x;

    return-object p0
.end method


# virtual methods
.method public createInOrigEdgeExplorer()Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeExplorer;
    .locals 2

    new-instance v0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigEdgeIteratorImpl;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigEdgeIteratorImpl;-><init>(Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;Z)V

    return-object v0
.end method

.method public createOutOrigEdgeExplorer()Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeExplorer;
    .locals 2

    new-instance v0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigEdgeIteratorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigEdgeIteratorImpl;-><init>(Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;Z)V

    return-object v0
.end method
