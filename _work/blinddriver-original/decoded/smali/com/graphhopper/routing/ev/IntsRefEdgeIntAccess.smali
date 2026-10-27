.class public Lcom/graphhopper/routing/ev/IntsRefEdgeIntAccess;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/ev/EdgeIntAccess;


# instance fields
.field private final intsRef:Lcom/graphhopper/storage/IntsRef;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/IntsRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/ev/IntsRefEdgeIntAccess;->intsRef:Lcom/graphhopper/storage/IntsRef;

    return-void
.end method


# virtual methods
.method public getInt(II)I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ev/IntsRefEdgeIntAccess;->intsRef:Lcom/graphhopper/storage/IntsRef;

    iget-object p0, p0, Lcom/graphhopper/storage/IntsRef;->ints:[I

    aget p0, p0, p2

    return p0
.end method

.method public setInt(III)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ev/IntsRefEdgeIntAccess;->intsRef:Lcom/graphhopper/storage/IntsRef;

    iget-object p0, p0, Lcom/graphhopper/storage/IntsRef;->ints:[I

    aput p3, p0, p2

    return-void
.end method
