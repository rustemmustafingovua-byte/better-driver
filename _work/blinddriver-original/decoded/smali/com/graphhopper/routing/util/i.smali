.class public final synthetic Lcom/graphhopper/routing/util/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# instance fields
.field public final synthetic a:Lcom/graphhopper/routing/ev/EnumEncodedValue;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/routing/ev/EnumEncodedValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/i;->a:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/i;->a:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    check-cast p1, Lcom/graphhopper/util/EdgeIteratorState;

    invoke-static {p0, p1}, Lcom/graphhopper/routing/util/UrbanDensityCalculator;->d(Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;)D

    move-result-wide p0

    return-wide p0
.end method
