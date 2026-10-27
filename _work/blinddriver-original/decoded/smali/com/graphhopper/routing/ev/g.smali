.class public final synthetic Lcom/graphhopper/routing/ev/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lcom/graphhopper/routing/ev/g;->a:I

    iput-object p1, p0, Lcom/graphhopper/routing/ev/g;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/graphhopper/routing/ev/g;->a:I

    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    iget-object p0, p0, Lcom/graphhopper/routing/ev/g;->b:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->X(Ljava/lang/String;Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->N(Ljava/lang/String;Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
