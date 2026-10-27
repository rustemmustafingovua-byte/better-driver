.class public final synthetic Lcom/graphhopper/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/graphhopper/routing/util/OSMParsers;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/routing/util/OSMParsers;I)V
    .locals 0

    iput p2, p0, Lcom/graphhopper/o;->a:I

    iput-object p1, p0, Lcom/graphhopper/o;->b:Lcom/graphhopper/routing/util/OSMParsers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/graphhopper/o;->a:I

    iget-object p0, p0, Lcom/graphhopper/o;->b:Lcom/graphhopper/routing/util/OSMParsers;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/graphhopper/routing/util/parsers/TagParser;

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/util/OSMParsers;->addWayTagParser(Lcom/graphhopper/routing/util/parsers/TagParser;)Lcom/graphhopper/routing/util/OSMParsers;

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/util/OSMParsers;->addIgnoredHighway(Ljava/lang/String;)Lcom/graphhopper/routing/util/OSMParsers;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
