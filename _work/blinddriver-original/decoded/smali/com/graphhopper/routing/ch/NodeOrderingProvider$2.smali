.class Lcom/graphhopper/routing/ch/NodeOrderingProvider$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/ch/NodeOrderingProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/graphhopper/routing/ch/NodeOrderingProvider;->fromArray([I)Lcom/graphhopper/routing/ch/NodeOrderingProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$nodes:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/routing/ch/NodeOrderingProvider$2;->val$nodes:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNodeIdForLevel(I)I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/NodeOrderingProvider$2;->val$nodes:[I

    aget p0, p0, p1

    return p0
.end method

.method public getNumNodes()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/NodeOrderingProvider$2;->val$nodes:[I

    array-length p0, p0

    return p0
.end method
