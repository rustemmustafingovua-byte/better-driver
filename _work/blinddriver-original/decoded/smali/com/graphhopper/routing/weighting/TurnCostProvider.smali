.class public interface abstract Lcom/graphhopper/routing/weighting/TurnCostProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_TURN_COST_PROVIDER:Lcom/graphhopper/routing/weighting/TurnCostProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/graphhopper/routing/weighting/TurnCostProvider$1;

    invoke-direct {v0}, Lcom/graphhopper/routing/weighting/TurnCostProvider$1;-><init>()V

    sput-object v0, Lcom/graphhopper/routing/weighting/TurnCostProvider;->NO_TURN_COST_PROVIDER:Lcom/graphhopper/routing/weighting/TurnCostProvider;

    return-void
.end method


# virtual methods
.method public abstract calcTurnMillis(III)J
.end method

.method public abstract calcTurnWeight(III)D
.end method
