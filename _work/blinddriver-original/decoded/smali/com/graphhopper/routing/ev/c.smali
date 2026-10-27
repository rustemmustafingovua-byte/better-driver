.class public final synthetic Lcom/graphhopper/routing/ev/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/OSMTemporalAccessParser$Setter;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/graphhopper/routing/ev/EnumEncodedValue;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/routing/ev/EnumEncodedValue;I)V
    .locals 0

    iput p2, p0, Lcom/graphhopper/routing/ev/c;->a:I

    iput-object p1, p0, Lcom/graphhopper/routing/ev/c;->b:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setBoolean(ILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V
    .locals 1

    iget v0, p0, Lcom/graphhopper/routing/ev/c;->a:I

    iget-object p0, p0, Lcom/graphhopper/routing/ev/c;->b:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1, p2, p3}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->U(Lcom/graphhopper/routing/ev/EnumEncodedValue;ILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    return-void

    :pswitch_0
    invoke-static {p0, p1, p2, p3}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->v(Lcom/graphhopper/routing/ev/EnumEncodedValue;ILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    return-void

    :pswitch_1
    invoke-static {p0, p1, p2, p3}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->u0(Lcom/graphhopper/routing/ev/EnumEncodedValue;ILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
