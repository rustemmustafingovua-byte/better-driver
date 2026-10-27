.class public final synthetic Lcom/graphhopper/util/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashSet;I)V
    .locals 0

    iput p2, p0, Lcom/graphhopper/util/f;->a:I

    iput-object p1, p0, Lcom/graphhopper/util/f;->b:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/graphhopper/util/f;->a:I

    iget-object p0, p0, Lcom/graphhopper/util/f;->b:Ljava/util/HashSet;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/graphhopper/util/details/PathDetailsFromEdges;->a(Ljava/util/HashSet;Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Lcom/graphhopper/util/JsonFeature;

    invoke-static {p0, p1}, Lcom/graphhopper/util/GHUtility;->e(Ljava/util/HashSet;Lcom/graphhopper/util/JsonFeature;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
