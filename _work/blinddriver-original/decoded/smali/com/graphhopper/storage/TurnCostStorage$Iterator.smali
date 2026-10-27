.class public interface abstract Lcom/graphhopper/storage/TurnCostStorage$Iterator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/storage/TurnCostStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Iterator"
.end annotation


# virtual methods
.method public abstract get(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z
.end method

.method public abstract getCost(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D
.end method

.method public abstract getFromEdge()I
.end method

.method public abstract getToEdge()I
.end method

.method public abstract getViaNode()I
.end method

.method public abstract next()Z
.end method
