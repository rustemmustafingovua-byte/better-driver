.class public final synthetic Lcom/graphhopper/routing/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/EdgeFilter;
.implements Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;


# instance fields
.field public final synthetic l:Lcom/graphhopper/routing/ev/BooleanEncodedValue;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/routing/h;->l:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/h;->l:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-static {p0, p1}, Lcom/graphhopper/routing/InstructionsFromEdges;->a(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;)Z

    move-result p0

    return p0
.end method

.method public get(Lcom/graphhopper/util/EdgeIteratorState;Z)D
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/h;->l:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-static {p0, p1, p2}, Lua/nav/routing/PhoneGraphHopper;->I(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide p0

    return-wide p0
.end method
