.class public final synthetic Lcom/graphhopper/routing/util/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/util/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget p0, p0, Lcom/graphhopper/routing/util/b;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValue;

    invoke-static {p1}, Lcom/graphhopper/routing/util/EncodingManager;->c(Lcom/graphhopper/routing/ev/EncodedValue;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValue;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/EncodedValueSerializer;->serializeEncodedValue(Lcom/graphhopper/routing/ev/EncodedValue;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lpb/x;

    iget-object p0, p1, Lpb/x;->o:Lpb/s;

    iget-object p0, p0, Lpb/q;->o:Lpb/d;

    invoke-static {p0}, Lr5/h1;->u(Lpb/d;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    add-double/2addr v0, v2

    const/4 p0, 0x0

    :goto_0
    iget-object v2, p1, Lpb/x;->p:[Lpb/s;

    array-length v3, v2

    if-ge p0, v3, :cond_0

    aget-object v2, v2, p0

    iget-object v2, v2, Lpb/q;->o:Lpb/d;

    invoke-static {v2}, Lr5/h1;->u(Lpb/d;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lcom/graphhopper/routing/util/AreaIndex$IndexedCustomArea;

    invoke-static {p1}, Lcom/graphhopper/routing/util/AreaIndex;->b(Lcom/graphhopper/routing/util/AreaIndex$IndexedCustomArea;)Lcom/graphhopper/routing/util/AreaIndex$Area;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
