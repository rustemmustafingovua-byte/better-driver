.class public final synthetic Lcom/graphhopper/routing/weighting/custom/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/weighting/custom/NameValidator;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lcom/graphhopper/routing/ev/EncodedValueLookup;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/routing/ev/EncodedValueLookup;I)V
    .locals 0

    iput p2, p0, Lcom/graphhopper/routing/weighting/custom/b;->l:I

    iput-object p1, p0, Lcom/graphhopper/routing/weighting/custom/b;->m:Lcom/graphhopper/routing/ev/EncodedValueLookup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isValid(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lcom/graphhopper/routing/weighting/custom/b;->l:I

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/custom/b;->m:Lcom/graphhopper/routing/ev/EncodedValueLookup;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0, p1}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->hasEncodedValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-static {p0, p1}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->a(Lcom/graphhopper/routing/ev/EncodedValueLookup;Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_1
    invoke-static {p0, p1}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->c(Lcom/graphhopper/routing/ev/EncodedValueLookup;Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
