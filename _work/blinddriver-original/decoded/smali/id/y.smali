.class public final synthetic Lid/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;


# instance fields
.field public final synthetic l:Lcom/graphhopper/routing/ev/EnumEncodedValue;

.field public final synthetic m:Lcom/graphhopper/routing/ev/EnumEncodedValue;

.field public final synthetic n:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

.field public final synthetic o:Lid/l1;

.field public final synthetic p:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

.field public final synthetic q:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

.field public final synthetic r:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

.field public final synthetic s:Lcom/graphhopper/routing/ev/EnumEncodedValue;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lid/l1;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lid/y;->l:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    iput-object p2, p0, Lid/y;->m:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    iput-object p3, p0, Lid/y;->n:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    iput-object p4, p0, Lid/y;->o:Lid/l1;

    iput-object p5, p0, Lid/y;->p:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    iput-object p6, p0, Lid/y;->q:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    iput-object p7, p0, Lid/y;->r:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    iput-object p8, p0, Lid/y;->s:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    return-void
.end method


# virtual methods
.method public final get(Lcom/graphhopper/util/EdgeIteratorState;Z)D
    .locals 10

    iget-object v6, p0, Lid/y;->r:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    iget-object v7, p0, Lid/y;->s:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    iget-object v0, p0, Lid/y;->l:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    iget-object v1, p0, Lid/y;->m:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    iget-object v2, p0, Lid/y;->n:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    iget-object v3, p0, Lid/y;->o:Lid/l1;

    iget-object v4, p0, Lid/y;->p:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    iget-object v5, p0, Lid/y;->q:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    move-object v8, p1

    move v9, p2

    invoke-static/range {v0 .. v9}, Lua/nav/routing/PhoneGraphHopper;->K(Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lid/l1;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide p0

    return-wide p0
.end method
