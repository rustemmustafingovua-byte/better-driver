.class public final synthetic Lcom/graphhopper/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/j;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/j;->a:Ljava/util/List;

    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValue;

    invoke-static {p0, p1}, Lcom/graphhopper/GraphHopper;->C(Ljava/util/List;Lcom/graphhopper/routing/ev/EncodedValue;)I

    move-result p0

    return p0
.end method
