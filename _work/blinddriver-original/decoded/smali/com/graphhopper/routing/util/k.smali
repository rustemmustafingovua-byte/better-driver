.class public final synthetic Lcom/graphhopper/routing/util/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# instance fields
.field public final synthetic a:Lcom/graphhopper/routing/ev/EnumEncodedValue;

.field public final synthetic b:Lcom/graphhopper/routing/ev/BooleanEncodedValue;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/BooleanEncodedValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/k;->a:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    iput-object p2, p0, Lcom/graphhopper/routing/util/k;->b:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/util/k;->b:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    check-cast p1, Lcom/graphhopper/util/EdgeIteratorState;

    iget-object p0, p0, Lcom/graphhopper/routing/util/k;->a:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-static {p0, v0, p1}, Lcom/graphhopper/routing/util/UrbanDensityCalculator;->b(Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;)D

    move-result-wide p0

    return-wide p0
.end method
